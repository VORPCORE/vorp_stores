local Core <const> = exports.vorp_core:GetCore()
local storeLimits = {}
local T <const> = TranslationStores.Langs[Lang]
local storesInUse = {}
local WeaponsMeta = {}
-- helpers
local function lower(s) return type(s)=="string" and s:lower() or s end
local function upper(s) return type(s)=="string" and s:upper() or s end
-- logs
local function logE(msg) print("^1[ERROR]^7 "..msg) end
local function logW(msg) print("^3[WARN]^7 "..msg) end
local function logI(msg) print("^5[INFO]^7 "..msg) end
-- resources
local INV_RES_NAME <const> = GetConvar("vorp_inventory_resource", "vorp_inventory")
local INV_RES_PATH = GetResourcePath(INV_RES_NAME)
-- globals
SharedData = SharedData or {}
InventoryAmmo = { Max={}, Labels={}, Types={} }
WeaponsV2Ammo = {}

-- Load ammo.lua from vorp_inventory and SYNC SharedData + InventoryAmmo
local function LoadInventoryAmmo()
    local code = LoadResourceFile(INV_RES_NAME, "config/ammo.lua")
    if not code then return logE(("not found: %s/config/ammo.lua"):format(INV_RES_NAME)) end

    local env = setmetatable({}, { __index = _G })
    local f, err = load(code, "@"..INV_RES_NAME.."/config/ammo.lua", "t", env)
    if not f then return logE("ammo.lua load error: "..tostring(err)) end
    local ok, perr = pcall(f)
    if not ok then return logE("ammo.lua run error: "..tostring(perr)) end

    if type(env.SharedData) ~= "table" then
        return logE("SharedData missing in ammo.lua")
    end

    -- synchronize the global SharedData so that other code can see it
    SharedData = env.SharedData

    InventoryAmmo = {
        Max    = SharedData.MaxAmmo    or {},
        Labels = SharedData.AmmoLabels or {},
        Types  = SharedData.AmmoTypes  or {}
    }

    -- logI(("Loaded ammo.lua from %s (Max=%d, Labels=%d, Types=%d)")
    --     :format(INV_RES_NAME, countkeys(InventoryAmmo.Max), countkeys(InventoryAmmo.Labels), countkeys(InventoryAmmo.Types)))
end

local function LoadWeaponsV2Ammo()
    local resName = "vorp_weaponsv2"
    local code = LoadResourceFile(resName, "config/ammo.lua")
    if not code then 
        return logW(("%s/config/ammo.lua not found"):format(resName)) 
    end

    local env = { Config = {} }
    local f, err = load(code, "@ammo.lua", "t", env)
    if not f then 
        return logE(("weaponsv2 ammo.lua load error: %s"):format(tostring(err))) 
    end

    local ok, perr = pcall(f)
    if not ok then 
        return logE(("weaponsv2 ammo.lua run error: %s"):format(tostring(perr))) 
    end

    WeaponsV2Ammo = env.Config.ammo or {}
    -- logI(("Loaded %d ammo categories from %s"):format(
    --     (type(WeaponsV2Ammo)=="table" and #WeaponsV2Ammo or 0),
    --     resName
    -- ))
end

local function ValidateAmmoConsistency()
    local seenKeys = {}

    -- Inventory → MaxAmmo, Labels, Types
    for ammo, _ in pairs(InventoryAmmo.Max or {}) do
        seenKeys[ammo] = true
        if not InventoryAmmo.Labels[ammo] then
            logW(("AMMO %s missing in AmmoLabels"):format(ammo))
        end
        local foundInTypes = false
        for _, group in pairs(InventoryAmmo.Types) do
            if group[ammo] then
                foundInTypes = true
                break
            end
        end
        if not foundInTypes then
            logW(("AMMO %s missing in AmmoTypes"):format(ammo))
        end
    end

    -- Labels
    for ammo, _ in pairs(InventoryAmmo.Labels or {}) do
        if not InventoryAmmo.Max[ammo] then
            logW(("AMMO %s present in Labels but missing in MaxAmmo"):format(ammo))
        end
    end

    -- WeaponsV2
    for cat, group in pairs(WeaponsV2Ammo) do
        for _, ammoCfg in pairs(group) do
            local key = ammoCfg.key
            if not InventoryAmmo.Max[key] then
                logW(("AMMO %s exists in weaponsv2 but not in MaxAmmo"):format(key))
            end
            if not InventoryAmmo.Labels[key] then
                logW(("AMMO %s exists in weaponsv2 but not in Labels"):format(key))
            end
            local foundInTypes = false
            for _, g in pairs(InventoryAmmo.Types or {}) do
                if g[key] then
                    foundInTypes = true
                    break
                end
            end
            if not foundInTypes then
                logW(("AMMO %s exists in weaponsv2 but not in AmmoTypes"):format(key))
            end
        end
    end

    -- Inventory ammo
    for ammo, _ in pairs(InventoryAmmo.Max or {}) do
        local found = false
        for _, group in pairs(WeaponsV2Ammo) do
            for _, ammoCfg in pairs(group) do
                if ammoCfg.key == ammo then
                    found = true
                    break
                end
            end
            if found then break end
        end
        if not found then
            logI(("AMMO %s is in Inventory but not in weaponsv2"):format(ammo))
        end
    end
end

-- ===== utils: ranges =====
local function IsRange(v) return type(v)=="table" and v[1]~=nil and v[2]~=nil end
local function ResolveRangeToNumber(v, decimals)
    if type(v)=="number" then return v end
    if IsRange(v) then
        local a = tonumber(v[1]) or 0
        local b = tonumber(v[2]) or a
        local k = (decimals and decimals>0) and (10^decimals) or 1
        return math.random(math.floor(a*k), math.floor(b*k)) / k
    end
    if v == false then return false end
    return nil
end

-- ===== inventory resource + meta files =====
local function LoadWeaponsMeta()
    WeaponsMeta = {}
    local code = LoadResourceFile(INV_RES_NAME, "config/weapons.lua")
    if not code then return logE("vorp_inventory/config/weapons.lua not found") end

    local env = setmetatable({}, {__index=_G})
    local f, err = load(code, "@weapons.lua", "t", env)
    if not f   then return logE("weapons.lua load error: "..tostring(err)) end
    local ok, perr = pcall(f)
    if not ok  then return logE("weapons.lua run error: "..tostring(perr)) end

    local t = env.SharedData and env.SharedData.Weapons
    if type(t) ~= "table" then return logE("SharedData.Weapons not found in weapons.lua") end

    for k, v in pairs(t) do
        WeaponsMeta[string.upper(k)] = v
    end

    local count = 0
    for _ in pairs(WeaponsMeta) do count = count + 1 end
    --logI(("weapons.lua loaded (%d entries)"):format(count))
end

-- ===== VALIDATION =====
local function isValidPrice(v)
    if v == false then return true end
    if type(v) == "number" then return true end
    if type(v) == "table" and #v == 2 and type(v[1]) == "number" and type(v[2]) == "number" then
        return true
    end
    return false
end

local function ValidateStoresConfig(stores)
    if type(stores) ~= "table" then
        logE("Config.Stores is not a table")
        return
    end

    for storeId, storeCfg in pairs(stores) do
        if type(storeCfg.items) ~= "table" or #storeCfg.items == 0 then
            logE(("Store '%s' has no items[]"):format(storeId))
            goto continue_store
        end

        for idx, it in ipairs(storeCfg.items) do
            if type(it.itemName) ~= "string" or it.itemName == "" then
                logE(("Store '%s' item[%d] missing itemName"):format(storeId, idx))
            end

            if not isValidPrice(it.buyprice) then
                logE(("Store '%s' item '%s' invalid buyprice (must be number|false|{min,max})"):format(storeId, tostring(it.itemName)))
            end

            if not isValidPrice(it.sellprice) then
                logE(("Store '%s' item '%s' invalid sellprice (must be number|false|{min,max})"):format(storeId, tostring(it.itemName)))
            end

            if type(it.weapon) ~= "boolean" then
                logW(("Store '%s' item '%s' missing or invalid 'weapon' flag"):format(storeId, tostring(it.itemName)))
            end

            if it.itemLimit ~= nil and type(it.itemLimit) ~= "number" then
                logE(("Store '%s' item '%s' invalid itemLimit (must be number or nil)"):format(storeId, tostring(it.itemName)))
            end
        end
        ::continue_store::
    end

    --logI("ValidateStoresConfig finished")
end

-- ===== Label LUT for stores (items from DB + weapons from weapons.lua) =====
local LabelLUT = {}

-- universal adapter for various databases
local function db_fetch_all(sql, params)
    -- oxmysql
    if exports.oxmysql and exports.oxmysql.executeSync then
        local ok, res = pcall(function() return exports.oxmysql:executeSync(sql, params or {}) end)
        if ok and res then return res end
    end
    -- mysql-async
    if MySQL and MySQL.Sync and MySQL.Sync.fetchAll then
        local ok, res = pcall(function() return MySQL.Sync.fetchAll(sql, params or {}) end)
        if ok and res then return res end
    end
    -- ghmattimysql (fallback)
    if exports.ghmattimysql and exports.ghmattimysql.executeSync then
        local ok, res = pcall(function() return exports.ghmattimysql:executeSync(sql, params or {}) end)
        if ok and res then return res end
    end
    return {}
end

local function collect_store_item_keys_set()
    local set = {}
    for _, store in pairs(Config.Stores or {}) do
        for _, it in ipairs(store.items or {}) do
            if type(it.itemName) == "string" and it.itemName ~= "" then
                set[it.itemName] = true
            end
        end
    end
    return set
end

local function BuildStoresLabelLUT()
    LabelLUT = {}
    local set = collect_store_item_keys_set()

    -- 1) Prepare a list of NON-weapons for the database (in the database, items are usually in lower-case)
    local dbKeys = {}
    for name,_ in pairs(set) do
        if not name:upper():find("^WEAPON_") then
            dbKeys[#dbKeys+1] = name:lower()
        end
    end

    if #dbKeys > 0 then
        local q = {}
        for i=1,#dbKeys do q[i] = "?" end
        local sql = ("SELECT item, label, `desc` FROM items WHERE LOWER(item) IN (%s)"):format(table.concat(q, ","))
        local rows = db_fetch_all(sql, dbKeys)
        for _, r in ipairs(rows) do
            local k = r.item and r.item:lower()
            if k then
                LabelLUT[k] = {
                    label = r.label or r.item,
                    desc  = r["desc"] or ""
                }
            end
        end
    end

    -- 2) Weapons from weapons.lua (via the already existing WeaponsMeta)
    for name,_ in pairs(set) do
        if name:upper():find("^WEAPON_") then
            local def = WeaponsMeta and WeaponsMeta[name:upper()] or nil
            local k = name:lower()
            LabelLUT[k] = {
                label = (def and def.Name) or name,
                desc  = (def and def.Desc) or ""
            }
        end
    end
end

local function CrossCheckAmmoItems()
    for _, store in pairs(Config.Stores or {}) do
        for _, it in ipairs(store.items or {}) do
            if it.category == "ammo" or it.itemName:find("ammo") then
                local itemName = tostring(it.itemName or "")
                local kL, kU = itemName:lower(), itemName:upper()

                -- 1) Look in weaponsv2/config/ammo.lua
                local foundKey = nil
                if WeaponsV2Ammo then
                    for _, cat in pairs(WeaponsV2Ammo) do
                        for _, ammoCfg in pairs(cat) do
                            if ammoCfg.item == kL then
                                foundKey = ammoCfg.key
                                break
                            end
                        end
                        if foundKey then break end
                    end
                end

                if not foundKey then
                    print(("^3[WARN]^7 Store ammo ^3'%s'^7 missing in vorp_weaponsv2/config/ammo.lua"):format(itemName))
                else
                    -- 2) Check MaxAmmo and AmmoLabels in inventory/config/ammo.lua
                    local inMax = SharedData.MaxAmmo and SharedData.MaxAmmo[foundKey] ~= nil
                    local inLabels = SharedData.AmmoLabels and SharedData.AmmoLabels[foundKey] ~= nil

                    if not inMax then
                        print(("^3[WARN]^7 Ammo ^3'%s'^7 (key=%s) missing in vorp_inventory/config/ammo.lua/SharedData.MaxAmmo"):format(itemName, foundKey))
                    end
                    if not inLabels then
                        print(("^3[WARN]^7 Ammo ^3'%s'^7 (key=%s) missing in vorp_inventory/config/ammo.lua/SharedData.AmmoLabels"):format(itemName, foundKey))
                    end
                end
            end
        end
    end
end

-- ===========================
-- Image check for store items
-- ===========================
local function file_exists(path)
    if not path then return false end
    local f = io.open(path, "rb")
    if f then f:close() return true end
    return false
end

local function image_exists(name)
    if not INV_RES_PATH then return nil end -- resource not found
    local p = ("%s/html/img/items/%s.png"):format(INV_RES_PATH, name)
    return file_exists(p)
end

local function db_item_exists(name)
    if not name or name == "" then return false end
    local sql = "SELECT 1 FROM items WHERE item = ? LIMIT 1"

    if exports.oxmysql and exports.oxmysql.scalarSync then
        local ok, val = pcall(function()
            return exports.oxmysql:scalarSync(sql, { name })
        end)
        if ok then return val ~= nil end
    elseif MySQL and MySQL.Sync and MySQL.Sync.fetchScalar then
        local ok, val = pcall(function()
            return MySQL.Sync.fetchScalar(sql, { name })
        end)
        if ok then return val ~= nil end
    end

    return false
end

-- main checker
local function ValidateStoreImages(stores)
    if not INV_RES_PATH then
        print("^3[WARN]^7 Cannot check store images (vorp_inventory path not found)")
        return
    end

    local missingDB, missingIMG = {}, {}

    for storeId, storeCfg in pairs(stores or {}) do
        for _, it in ipairs(storeCfg.items or {}) do
            local original = tostring(it.itemName or "")
                if original ~= "" then
                    local isWeapon = original:upper():find("^WEAPON_") ~= nil
                    if not isWeapon then
                        if not db_item_exists(original) then
                        table.insert(missingDB, {store=storeId, item=original})
                        else
                        local ok = image_exists(original)
                        if ok == false then
                            table.insert(missingIMG, {store=storeId, item=original})
                        end
                    end
                else
                    local ok = image_exists(original)
                    if ok == false then
                        table.insert(missingIMG, {store=storeId, item=original})
                    end
                end
            end
        end
    end

    if #missingDB > 0 then
        print("^1[DATABASE] Missing store items in DB:^7")
        for _, e in ipairs(missingDB) do
            print(("   store='%s' item='%s'"):format(e.store, e.item))
        end
    end

    if #missingIMG > 0 then
        print("^6[INVENTORY] Store items without PNG icons:^7")
        for _, e in ipairs(missingIMG) do
            print(("   store='%s' item='%s'"):format(e.store, e.item))
        end
    end
end

-- ===========================
-- STORE ITEM SELL/BUY LIMITS
-- ===========================
local function RebuildStoreLimits()
    storeLimits = {}
    for storeId, storeCfg in pairs(Config.Stores or {}) do
        for _, it in ipairs(storeCfg.items or {}) do
            local lim = tonumber(it.itemLimit)
            if lim and lim > 0 then
                storeLimits[storeId] = storeLimits[storeId] or {}
                if it.buyprice ~= false then
                    storeLimits[storeId][#storeLimits[storeId]+1] = { itemName = it.itemName, amount = lim, type = "buy" }
                end
                if it.sellprice ~= false then
                    storeLimits[storeId][#storeLimits[storeId]+1] = { itemName = it.itemName, amount = lim, type = "sell" }
                end
            end
        end
    end
end

local function RandomizePricesAndLocations()
    for storeId, storeCfg in pairs(Config.Stores or {}) do
        if storeCfg.RandomPrices and type(storeCfg.items)=="table" then
            for idx, it in ipairs(storeCfg.items) do
                it.buyprice  = (it.buyprice  ~= false) and (ResolveRangeToNumber(it.buyprice,  2) or it.buyprice)  or false
                it.sellprice = (it.sellprice ~= false) and (ResolveRangeToNumber(it.sellprice, 2) or it.sellprice) or false

                if type(it.buyprice) ~= "number" and it.buyprice ~= false and not IsRange(it.buyprice) then
                    print(("Missing randomprice for BUY item '%s' in store '%s'"):format(it.itemName or ("item at index "..idx), storeId))
                end
                if type(it.sellprice) ~= "number" and it.sellprice ~= false and not IsRange(it.sellprice) then
                    print(("Missing randomprice for SELL item '%s' in store '%s'"):format(it.itemName or ("item at index "..idx), storeId))
                end
            end
        end

        if storeCfg.useRandomLocation
          and storeCfg.possibleLocations
          and storeCfg.possibleLocations.OpenMenu
          and #storeCfg.possibleLocations.OpenMenu > 0
        then
            local idx = math.random(1, #storeCfg.possibleLocations.OpenMenu)
            Config.Stores[storeId].Blip.Pos = storeCfg.possibleLocations.OpenMenu[idx]
            if storeCfg.possibleLocations.Npcs and storeCfg.possibleLocations.Npcs[idx] then
                Config.Stores[storeId].Npc.Pos = storeCfg.possibleLocations.Npcs[idx]
            end
        end
    end
end

local function checkStoreLimits(storeId, ItemName, quantity, action)
    if not storeLimits[storeId] then
        return true
    end
    for k, v in pairs(storeLimits[storeId]) do
        if action == "sell" then
            if v.itemName == ItemName and v.type == "buy" then
                v.amount = v.amount + quantity
            end
            if v.itemName == ItemName and v.type == "sell" then
                v.amount = v.amount - quantity
            end
        end

        if action == "buy" then
            if v.itemName == ItemName and v.type == "buy" then
                if v.amount >= quantity then
                    v.amount = v.amount - quantity
                    return true
                else
                    return false
                end
            end
        end
    end
    return true
end

local function sellItems(_source, Character, value, ItemName, storeId)
    local fname = Character.firstname
    local lname = Character.lastname
    local canContinue = false

    local total = value.price * value.quantity
    local total2 = (math.floor(total * 100) / 100)

    if value.weapon then
        local countWeap = 0
        local userWeapons = exports.vorp_inventory:getUserInventoryWeapons(_source)

        for _, v in pairs(userWeapons) do
            if v.name == ItemName then
                exports.vorp_inventory:subWeapon(_source, v.id)
                exports.vorp_inventory:deleteWeapon(_source, v.id)
                canContinue = true
                countWeap = countWeap + 1
                if countWeap == value.quantity then
                    break
                end
            end
        end

        if countWeap == 0 then
            return Core.NotifyObjective(_source, T.noManyQty, 5000)
        end

        total = value.price * countWeap
        total2 = (math.floor(total * 100) / 100)
    else
        local userItem = exports.vorp_inventory:getItemById(_source, value.item.id)
        if userItem then
            if ItemName == userItem.name then
                if userItem.count >= value.quantity then
                    exports.vorp_inventory:subItemById(_source, value.item.id, nil, nil, value.quantity)
                    if Config.AllowSellItemsWithDecay and Config.SellItemBasedOnPercentage and userItem.isDegradable then
                        total = value.price * value.quantity * (userItem.percentage / 100) -- use percentage that we got when we requested items so the price is the same
                        total2 = math.floor(total * 100) / 100
                    end
                    canContinue = true
                end
            end
        end
    end

    if not canContinue then
        return Core.NotifyObjective(_source, T.noManyQty, 5000)
    end

    if Config.Stores[storeId].DynamicStore then
        if not checkStoreLimits(storeId, ItemName, value.quantity, "sell") then
            return Core.NotifyRightTip(_source, T.limitBuy, 3000)
        end
    end

    if value.currency == "cash" then
        Character.addCurrency(0, total)
        Core.NotifyRightTip(_source, T.yousold .. value.quantity .. " " .. value.label .. T.frcash .. total2 .. T.ofcash, 3000)
        DiscordLog(fname .. " " .. lname .. T.hassold .. " " .. value.quantity .. value.label .. T.frcash .. total2 .. T.ofcash)
    end

    if value.currency == "gold" then
        Character.addCurrency(1, total)
        Core.NotifyRightTip(_source, T.yousold .. value.quantity .. " " .. value.label .. T.fr .. total2 .. T.ofgold, 3000)
        DiscordLog(fname .. " " .. lname .. T.hassold .. " " .. value.quantity .. value.label .. T.fr .. total2 .. T.ofgold)
    end
end

local function buyItems(_source, Character, value, ItemName, storeId)
    local fname = Character.firstname
    local lname = Character.lastname
    local money = Character.money
    local gold = Character.gold
    local total = value.price
    local total2 = (math.floor(total * 100) / 100)


    if value.currency == "cash" then
        if money < total then
            return Core.NotifyRightTip(_source, T.youdontcash, 3000)
        end

        if value.weapon then
            for i = 1, value.quantity, 1 do
                exports.vorp_inventory:createWeapon(_source, ItemName)
            end
        else
            exports.vorp_inventory:addItem(_source, ItemName, value.quantity)
        end

        if Config.Stores[storeId].DynamicStore then
            if not checkStoreLimits(storeId, ItemName, value.quantity, "buy") then
                return Core.NotifyRightTip(_source, T.limitBuy, 3000)
            end
        end

        Character.removeCurrency(0, total)
        Character.money = Character.money - total
        Core.NotifyRightTip(_source, T.youbought .. value.quantity .. " " .. value.label .. T.frcash .. total2 .. T.ofcash, 3000)
        DiscordLog(fname .. " " .. lname .. T.hasbought .. " " .. value.quantity .. value.label .. T.frcash .. total2 .. T.ofcash)
        return
    end


    if value.currency == "gold" then
        if gold < total then
            return Core.NotifyRightTip(_source, T.youdontgold, 3000)
        end

        if value.weapon then
            for i = 1, value.quantity, 1 do
                exports.vorp_inventory:createWeapon(_source, ItemName)
            end
        else
            exports.vorp_inventory:addItem(_source, ItemName, value.quantity)
        end
        Character.removeCurrency(1, total)
        Core.NotifyRightTip(_source, T.youbought .. value.quantity .. " " .. value.label .. T.fr .. total2 .. T.ofgold, 3000)
        DiscordLog(fname .. " " .. lname .. T.hasbought .. " " .. value.quantity .. value.label .. T.fr .. total2 .. T.ofgold)

        if Config.Stores[storeId].DynamicStore then
            if not checkStoreLimits(storeId, ItemName, value.quantity, "buy") then
                return Core.NotifyRightTip(_source, T.limitBuy, 3000)
            end
        end
    end
end

-- ===========================
-- ======== Discord ==========
-- ===========================
local function DiscordLog(message)
    if Config.UseWebhook ~= true then return end
    local WebhookUrl = Config.WebhookUrl or ""
    if WebhookUrl == "" then
        -- print("^3[WARN]^7 Discord webhook is enabled but Config.WebhookUrl is empty")
        return
    end

    Core.AddWebhook(
        Config.WebhookLanguage.WebhookTitle,
        WebhookUrl,
        message,
        Config.WebhookLanguage.WebhookColor,
        Config.WebhookLanguage.WebhookName,
        Config.WebhookLanguage.WebhookLogo,
        Config.WebhookLanguage.WebhookLogo2,
        Config.WebhookLanguage.WebhookAvatar
    )
end

-- ===========================
-- ======== EVENTS ===========
-- ===========================
RegisterServerEvent('vorp_stores:Client:sellItems', function(dataItems, storeId)
    local _source = source
    local User = Core.getUser(_source)

    if not User then return end

    local Character = User.getUsedCharacter

    for ItemName, value in pairs(dataItems) do
        Wait(200)
        if value.quantity > 0 then
            sellItems(_source, Character, value, ItemName, storeId)
        end
    end
end)

RegisterServerEvent('vorp_stores:Client:buyItems', function(dataItems, storeId)
    local _source = source
    local User = Core.getUser(_source)

    if not User then return end

    local Character = User.getUsedCharacter

    for ItemName, value in pairs(dataItems) do
        Wait(200)

        if not value.weapon then
            local quantity = value.quantity
            local canCarry = exports.vorp_inventory:canCarryItem(_source, ItemName, quantity) --cancarry item limit
            if not canCarry then
                return Core.NotifyRightTip(_source, T.cantcarryitem, 3000)
            end

            buyItems(_source, Character, value, ItemName, storeId)
        end

        if value.weapon then
            local quantity = value.quantity
            local canCarryWep = exports.vorp_inventory:canCarryWeapons(_source, quantity, nil, ItemName) --can carry weapons

            if not canCarryWep then
                return Core.NotifyRightTip(_source, T.cantcarryweapon, 5000)
            end

            buyItems(_source, Character, value, ItemName, storeId)
        end
    end
end)

RegisterServerEvent('vorp_stores:GetRefreshedPrices', function()
    local _source = source
    local msgpack = msgpack.pack(Config.SellItems, Config.BuyItems, Config.Stores)
    TriggerClientEvent('vorp_stores:RefreshStorePrices', _source, msgpack)
end)

-- =============================
-- ======== CALLBACKS ==========
-- =============================
-- callback for store UI
Core.Callback.Register("vorp_stores:GetLabelLUT", function(source, cb)
    cb(LabelLUT)
end)

Core.Callback.Register('vorp_stores:callback:getShopStock', function(source, cb, storeId)
    local storeCfg = Config.Stores[storeId]
    if not storeCfg or not storeCfg.items then
        print(("[vorp_stores] ERROR: No store or items for store '%s'"):format(storeId or "unknown"))
        return cb(false)
    end

    -- we only take those where the store ACCEPTS sales (sellprice is enabled)
    local sellable = {}
    for _, it in ipairs(storeCfg.items or {}) do
        if it.sellprice ~= false then
            sellable[#sellable+1] = it.itemName
        end
    end
    if #sellable == 0 then return cb(false) end

    local allow = {}
    for _, name in ipairs(sellable) do allow[name] = true end

    local ItemsFound  = false
    local PlayerItems = {}
    local userInv     = exports.vorp_inventory:getUserInventoryItems(source)
    local userWeapons = exports.vorp_inventory:getUserInventoryWeapons(source)

    -- inventory items
    for _, invItem in pairs(userInv) do
        if allow[invItem.name] then
            if Config.AllowSellItemsWithDecay then
                if invItem.isDegradable then
                    if invItem.percentage > (Config.DecayPercentage or 0) then
                        ItemsFound = true
                        PlayerItems[invItem.name] = invItem
                    end
                else
                    ItemsFound = true
                    PlayerItems[invItem.name] = invItem
                end
            else
                if not invItem.isDegradable then
                    ItemsFound = true
                    PlayerItems[invItem.name] = invItem
                end
            end
        end
    end

    -- weapons (count the number in units)
    for _, w in pairs(userWeapons) do
        if allow[w.name] then
            ItemsFound = true
            if not PlayerItems[w.name] then
                PlayerItems[w.name] = { name = w.name, count = 1 }
            else
                PlayerItems[w.name].count = (PlayerItems[w.name].count or 0) + 1
            end
        end
    end

    if not ItemsFound then
        Core.NotifyRightTip(source, T.notAllowItem, 3000)
        return cb(false)
    end

    cb({
        shopStocks = storeLimits[storeId],
        ItemsFound = PlayerItems
    })
end)

Core.Callback.Register('vorp_stores:callback:ShopStock', function(source, cb, storeId)
    cb({ shopStock = storeLimits[storeId] })
end)

Core.Callback.Register("vorp_stores:callback:canOpenStore", function(source, cb, storeIndex)
    local _source = source

    if not storesInUse[storeIndex] then
        storesInUse[storeIndex] = _source
        return cb(true)
    end

    return cb(false)
end)

Core.Callback.Register("vorp_stores:callback:CloseStore", function(source, cb, storeIndex)
    if storesInUse[storeIndex] then
        storesInUse[storeIndex] = nil
        return cb(true)
    end
    return cb(false)
end)


-- =================================
-- ==== LOGIC FOR RANDOM PRICES ====
-- =================================
AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == this then
        ValidateStoresConfig(Config.Stores)
        LoadWeaponsMeta()
        LoadInventoryAmmo()
        LoadWeaponsV2Ammo()
        BuildStoresLabelLUT()
        CrossCheckAmmoItems()

        RandomizePricesAndLocations()
        RebuildStoreLimits()
        ValidateStoreImages(Config.Stores)
        return
    end

    if resourceName == "vorp_inventory" then
        LoadInventoryAmmo()
        LoadWeaponsMeta()
        BuildStoresLabelLUT()
        ValidateAmmoConsistency()
        CrossCheckAmmoItems()
        ValidateStoreImages(Config.Stores)
    end

    if resourceName == "vorp_weaponsv2" then
        LoadWeaponsV2Ammo()
        BuildStoresLabelLUT()
        ValidateAmmoConsistency()
        CrossCheckAmmoItems()
        ValidateStoreImages(Config.Stores)
    end
end)

RegisterNetEvent("vorp_stores:RefreshStorePrices", function(packed)
    local Stores = msgpack.unpack(packed)
    if not Stores then return end
    Config.Stores = Stores

    ValidateStoresConfig(Config.Stores)
    RandomizePricesAndLocations()
    RebuildStoreLimits()
    ValidateStoreImages(Config.Stores)
    CrossCheckAmmoItems()
end)

-- event drrop player
AddEventHandler('playerDropped', function(reason)
    local _source = source
    for k, v in pairs(storesInUse) do
        if v == _source then
            storesInUse[k] = nil
        end
    end
end)