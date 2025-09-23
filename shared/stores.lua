Config.Stores = {
    ValentineGunStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }
        },
        Blip = {
            Allowed = true,
            Name = "Valentine Gunstore",
            sprite = 1475879922,
            Pos = vector3(-280.4646, 779.0331, 119.2540),
        },
        Npc = {
            Pos = vector4(-280.4646, 779.0331, 119.2540, 2.82),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Valentine Gunstore",
        PromptName = "Gunstore",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "weapon" },
            { label = "ammo",  Type = "ammo",  desc = "Buy Ammo", img = "ammorifleexpress" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

        items = {
            -- Melee
            { itemName = "WEAPON_MELEE_KNIFE_TRADER", currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE",        currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE_JAWBONE",currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_CLEAVER",      currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_HATCHET_HUNTER",currencyType = "cash",buyprice = 8,    sellprice = 4,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE",      currencyType = "cash", buyprice = 5.5,  sellprice = 2.75,  category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE_COLLECTOR",currencyType = "cash", buyprice = 5.5,sellprice = 2.75,category = "weapons", weapon = true,  itemLimit = 0 },

            -- Bows
            { itemName = "WEAPON_BOW", currencyType = "cash", buyprice = 10.75, sellprice = 5.375, category = "weapons", weapon = true, itemLimit = 0 },

            -- Rifles
            { itemName = "WEAPON_RIFLE_ELEPHANT", currencyType = "cash", buyprice = 400, sellprice = 200, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_VARMINT", currencyType = "cash", buyprice = 30.75, sellprice = 15.375, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_CARCANO", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_SPRINGFIELD", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_BOLTACTION", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },

            -- Repeaters
            { itemName = "WEAPON_REPEATER_WINCHESTER", currencyType = "cash", buyprice = 70, sellprice = 35, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_HENRY", currencyType = "cash", buyprice = 75.5, sellprice = 37.75, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_EVANS", currencyType = "cash", buyprice = 80, sellprice = 40, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_CARBINE", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },

            -- Pistols
            { itemName = "WEAPON_PISTOL_VOLCANIC", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_PISTOL_M1899", currencyType = "cash", buyprice = 10000, sellprice = 5000, category = "weapons", weapon = true, itemLimit = 0 },

            -- Revolvers
            { itemName = "WEAPON_REVOLVER_SCHOFIELD", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_LEMAT", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_DOUBLEACTION", currencyType = "cash", buyprice = 55, sellprice = 27.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_CATTLEMAN", currencyType = "cash", buyprice = 25, sellprice = 12.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_NAVY", currencyType = "cash", buyprice = 60, sellprice = 30, category = "weapons", weapon = true, itemLimit = 0 },

            -- Throwables
            { itemName = "WEAPON_THROWN_TOMAHAWK", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_THROWING_KNIVES", currencyType = "cash", buyprice = 8, sellprice = 4, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_POISONBOTTLE", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_BOLAS", currencyType = "cash", buyprice = 4, sellprice = 2, category = "weapons", weapon = true, itemLimit = 0 },

            -- Shotguns
            { itemName = "WEAPON_SHOTGUN_SAWEDOFF", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_REPEATING", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_PUMP", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_DOUBLEBARREL", currencyType = "cash", buyprice = 500, sellprice = 250, category = "weapons", weapon = true, itemLimit = 0 },

            -- Misc.
            { itemName = "WEAPON_LASSO", currencyType = "cash", buyprice = 2, sellprice = 1, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_LASSO_REINFORCED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS_IMPROVED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA_ADVANCED", currencyType = "cash", buyprice = 200, sellprice = 100, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_LANTERN", currencyType = "cash", buyprice = 9.75, sellprice = 4.875, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_DAVY_LANTERN", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },

            -- Ammo
            { itemName = "ammorepeaternormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeaterexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatersplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammorevolvernormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolverexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolvervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolversplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoriflenormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorifleexpress", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflevelocity", currencyType = "cash", buyprice = 12, sellprice = 6, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflesplitpoint", currencyType = "cash", buyprice = 20, sellprice = 10, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoshotgunnormal", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoshotgunslug", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammopistolnormal", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolexpress", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolvelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolsplitpoint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoarrownormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoarrowsmallgame", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammovarmint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoknives", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammotomahawk", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammobolla", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
        }
    },

    ValentineStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },

        Blip = {
            Allowed = true,                            -- allow blip to show on map?
            Name = "valentine store",                  -- blip name
            sprite = 1475879922,                       -- blip sprite
            Pos = vector3(-324.628, 803.9818, 116.88), -- blip position and prompt press open position
        },

        Npc = {
            Pos = vector4(-324.628, 803.9818, 116.88, -81.17), -- npc position
            distanceRemoveNpc = 20.0,                          -- distance to remove npc
            Allowed = true,                                    -- allow npc to spawn?
            Model = "U_M_M_NbxGeneralStoreOwner_01",           -- npc model to spawn
        },

        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- Store type for buy and sell
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },

        storeName = "valentine",      -- menu name
        PromptName = "general store", -- prompt name
        AllowedJobs = {},             -- if empty everyone can use or do {"police", "sheriff"}
        JobGrade = 1,                 -- use ranks
        StoreHoursAllowed = true,     -- if you want the stores to use opening and closed hours
        RandomPrices = true,          -- prices of items will be random every restart if set to true based on the prices you added in the config items
        distanceOpenStore = 3.0,      -- distance to open store
        StoreOpen = 7,                -- am
        StoreClose = 21,              -- pm
        DynamicStore = true,          -- if true what you sell to the store will increase the stock of the store if in each item you add a value for stock

        items = {
            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    RhodesGunStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "rhodes store",
            sprite = 1475879922,
            Pos = vector3(1330.227, -1293.41, 76.021),
        },
        Npc = {
            Pos = vector4(1330.227, -1293.41, 76.021, 68.88),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },

        storeName = "Rhodes",
        PromptName = " general store",
        distanceOpenStore = 5.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 8,
        StoreClose = 20,
        DynamicStore = true,
        items = {
            -- Melee
            { itemName = "WEAPON_MELEE_KNIFE_TRADER", currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE",        currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE_JAWBONE",currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_CLEAVER",      currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_HATCHET_HUNTER",currencyType = "cash",buyprice = 8,    sellprice = 4,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE",      currencyType = "cash", buyprice = 5.5,  sellprice = 2.75,  category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE_COLLECTOR",currencyType = "cash", buyprice = 5.5,sellprice = 2.75,category = "weapons", weapon = true,  itemLimit = 0 },

            -- Bows
            { itemName = "WEAPON_BOW", currencyType = "cash", buyprice = 10.75, sellprice = 5.375, category = "weapons", weapon = true, itemLimit = 0 },

            -- Rifles
            { itemName = "WEAPON_RIFLE_ELEPHANT", currencyType = "cash", buyprice = 400, sellprice = 200, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_VARMINT", currencyType = "cash", buyprice = 30.75, sellprice = 15.375, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_CARCANO", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_SPRINGFIELD", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_BOLTACTION", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },

            -- Repeaters
            { itemName = "WEAPON_REPEATER_WINCHESTER", currencyType = "cash", buyprice = 70, sellprice = 35, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_HENRY", currencyType = "cash", buyprice = 75.5, sellprice = 37.75, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_EVANS", currencyType = "cash", buyprice = 80, sellprice = 40, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_CARBINE", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },

            -- Pistols
            { itemName = "WEAPON_PISTOL_VOLCANIC", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_PISTOL_M1899", currencyType = "cash", buyprice = 10000, sellprice = 5000, category = "weapons", weapon = true, itemLimit = 0 },

            -- Revolvers
            { itemName = "WEAPON_REVOLVER_SCHOFIELD", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_LEMAT", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_DOUBLEACTION", currencyType = "cash", buyprice = 55, sellprice = 27.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_CATTLEMAN", currencyType = "cash", buyprice = 25, sellprice = 12.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_NAVY", currencyType = "cash", buyprice = 60, sellprice = 30, category = "weapons", weapon = true, itemLimit = 0 },

            -- Throwables
            { itemName = "WEAPON_THROWN_TOMAHAWK", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_THROWING_KNIVES", currencyType = "cash", buyprice = 8, sellprice = 4, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_POISONBOTTLE", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_BOLAS", currencyType = "cash", buyprice = 4, sellprice = 2, category = "weapons", weapon = true, itemLimit = 0 },

            -- Shotguns
            { itemName = "WEAPON_SHOTGUN_SAWEDOFF", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_REPEATING", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_PUMP", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_DOUBLEBARREL", currencyType = "cash", buyprice = 500, sellprice = 250, category = "weapons", weapon = true, itemLimit = 0 },

            -- Misc.
            { itemName = "WEAPON_LASSO", currencyType = "cash", buyprice = 2, sellprice = 1, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_LASSO_REINFORCED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS_IMPROVED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA_ADVANCED", currencyType = "cash", buyprice = 200, sellprice = 100, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_LANTERN", currencyType = "cash", buyprice = 9.75, sellprice = 4.875, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_DAVY_LANTERN", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },

            -- Ammo
            { itemName = "ammorepeaternormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeaterexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatersplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammorevolvernormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolverexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolvervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolversplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoriflenormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorifleexpress", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflevelocity", currencyType = "cash", buyprice = 12, sellprice = 6, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflesplitpoint", currencyType = "cash", buyprice = 20, sellprice = 10, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoshotgunnormal", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoshotgunslug", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammopistolnormal", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolexpress", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolvelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolsplitpoint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoarrownormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoarrowsmallgame", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammovarmint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoknives", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammotomahawk", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammobolla", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
        }
    },

    RhodesStore  = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "rhodes store",
            sprite = 1475879922,
            Pos = vector3(1330.227, -1293.41, 76.021),
        },
        Npc = {
            Pos = vector4(1330.227, -1293.41, 76.021, 68.88),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },

        storeName = "Rhodes",
        PromptName = " general store",
        distanceOpenStore = 5.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 8,
        StoreClose = 20,
        DynamicStore = true,

        items = {
            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    Strawberry = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },

        Blip = {
            Allowed = true,
            Name = "strawberry store",
            sprite = 1475879922,
            Pos = vector3(-1789.66, -387.918, 159.32),

        },

        Npc = {
            Pos = vector4(-1789.66, -387.918, 159.32, 56.96),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Strawberry",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 6,
        StoreClose = 23,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    Blackwater = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Blackwater Store",
            sprite = 1475879922,
            Pos = vector3(-784.738, -1321.73, 42.884),
        },
        Npc = {
            Pos = vector4(-784.738, -1321.73, 42.884, 179.63),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Blackwater",
        PromptName = "general store",
        distanceOpenStore = 5.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    BlackwaterFishing = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Blackwater Fishing Store",
            sprite = 3442726182,
            Pos = vector3(-756.069, -1360.76, 43.724),
        },
        Npc = {
            Pos = vector4(-756.069, -1360.76, 43.724, -90.80),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },

        blipAllowed = true,
        BlipName = "Fishing store",
        storeName = "Bait Shop",
        PromptName = "fishing store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Bait",  Type = "bait",  desc = "Delicious food", img = "consumable_bread_roll" },
            { label = "Tools", Type = "tools", desc = "Useful tools",   img = "butcher_table_production" },
            { label = "Fish",  Type = "fish",  desc = "sell fish",      img = "butcher_table_production" },

        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {
            -- 🎣 Tools
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "tools", weapon = true, itemLimit = 0 },

            -- 🪱 Bait
            { itemName = "p_baitBread01x", currencyType = "cash", buyprice = {30,45}, sellprice = {15,20}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_baitCorn01x", currencyType = "cash", buyprice = {25,40}, sellprice = {12,18}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_baitCheese01x", currencyType = "cash", buyprice = {35,50}, sellprice = {18,25}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_baitWorm01x", currencyType = "cash", buyprice = {40,60}, sellprice = {20,30}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_baitCricket01x", currencyType = "cash", buyprice = {50,65}, sellprice = {25,32}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_crawdad01x", currencyType = "cash", buyprice = {60,75}, sellprice = {30,37}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_finishedragonfly01x", currencyType = "cash", buyprice = {70,90}, sellprice = {35,45}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_FinisdFishlure01x", currencyType = "cash", buyprice = {90,110}, sellprice = {45,55}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_finishedragonflylegendary01x", currencyType = "cash", buyprice = {110,130}, sellprice = {55,65}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_finisdfishlurelegendary01x", currencyType = "cash", buyprice = {120,140}, sellprice = {60,70}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_finishdcrawdlegendary01x", currencyType = "cash", buyprice = {130,150}, sellprice = {65,75}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_lgoc_spinner_v4", currencyType = "cash", buyprice = {140,160}, sellprice = {70,80}, category = "bait", weapon = false, itemLimit = 0 },
            { itemName = "p_lgoc_spinner_v6", currencyType = "cash", buyprice = {150,170}, sellprice = {75,85}, category = "bait", weapon = false, itemLimit = 0 },

            -- 🐟 Fish (sell only → buyprice = false)
            { itemName = "a_c_fishsmallmouthbass_01_ms", currencyType = "cash", buyprice = false, sellprice = {30,45}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishbluegil_01_ms",       currencyType = "cash", buyprice = false, sellprice = {15,25}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishbluegil_01_sm",       currencyType = "cash", buyprice = false, sellprice = {5,15},  category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishbullheadcat_01_ms",   currencyType = "cash", buyprice = false, sellprice = {20,30}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishbullheadcat_01_sm",   currencyType = "cash", buyprice = false, sellprice = {10,20}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishchainpickerel_01_ms", currencyType = "cash", buyprice = false, sellprice = {25,35}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishchainpickerel_01_sm", currencyType = "cash", buyprice = false, sellprice = {10,20}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishlargemouthbass_01_ms",currencyType = "cash", buyprice = false, sellprice = {45,55}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishperch_01_ms",         currencyType = "cash", buyprice = false, sellprice = {20,30}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishperch_01_sm",         currencyType = "cash", buyprice = false, sellprice = {10,20}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishrainbowtrout_01_ms",  currencyType = "cash", buyprice = false, sellprice = {30,40}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishredfinpickerel_01_ms",currencyType = "cash", buyprice = false, sellprice = {25,35}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishredfinpickerel_01_sm",currencyType = "cash", buyprice = false, sellprice = {10,20}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishrockbass_01_ms",      currencyType = "cash", buyprice = false, sellprice = {20,30}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishrockbass_01_sm",      currencyType = "cash", buyprice = false, sellprice = {10,20}, category = "fish", weapon = false, itemLimit = 0 },
            { itemName = "a_c_fishsalmonsockeye_01_ms", currencyType = "cash", buyprice = false, sellprice = {55,65}, category = "fish", weapon = false, itemLimit = 0 },
        }
    },

    Armadillo = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Armadillo Store",
            sprite = 1475879922,
            Pos = vector3(-3687.34, -2623.53, -13.43),
        },
        Npc = {
            Pos = vector4(-3687.34, -2623.53, -13.43, -85.32),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },

        storeName = "Armadillo",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    TumbleweedGunStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Tumbleweed Store",
            sprite = 1475879922,
            Pos = vector3(-5485.70, -2938.08, -0.299),
        },
        Npc = {
            Pos = vector4(-5485.70, -2938.08, -0.299, 127.72),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Tumbleweed",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {
            -- Melee
            { itemName = "WEAPON_MELEE_KNIFE_TRADER", currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE",        currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE_JAWBONE",currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_CLEAVER",      currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_HATCHET_HUNTER",currencyType = "cash",buyprice = 8,    sellprice = 4,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE",      currencyType = "cash", buyprice = 5.5,  sellprice = 2.75,  category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE_COLLECTOR",currencyType = "cash", buyprice = 5.5,sellprice = 2.75,category = "weapons", weapon = true,  itemLimit = 0 },

            -- Bows
            { itemName = "WEAPON_BOW", currencyType = "cash", buyprice = 10.75, sellprice = 5.375, category = "weapons", weapon = true, itemLimit = 0 },

            -- Rifles
            { itemName = "WEAPON_RIFLE_ELEPHANT", currencyType = "cash", buyprice = 400, sellprice = 200, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_VARMINT", currencyType = "cash", buyprice = 30.75, sellprice = 15.375, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_CARCANO", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_SPRINGFIELD", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_BOLTACTION", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },

            -- Repeaters
            { itemName = "WEAPON_REPEATER_WINCHESTER", currencyType = "cash", buyprice = 70, sellprice = 35, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_HENRY", currencyType = "cash", buyprice = 75.5, sellprice = 37.75, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_EVANS", currencyType = "cash", buyprice = 80, sellprice = 40, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_CARBINE", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },

            -- Pistols
            { itemName = "WEAPON_PISTOL_VOLCANIC", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_PISTOL_M1899", currencyType = "cash", buyprice = 10000, sellprice = 5000, category = "weapons", weapon = true, itemLimit = 0 },

            -- Revolvers
            { itemName = "WEAPON_REVOLVER_SCHOFIELD", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_LEMAT", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_DOUBLEACTION", currencyType = "cash", buyprice = 55, sellprice = 27.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_CATTLEMAN", currencyType = "cash", buyprice = 25, sellprice = 12.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_NAVY", currencyType = "cash", buyprice = 60, sellprice = 30, category = "weapons", weapon = true, itemLimit = 0 },

            -- Throwables
            { itemName = "WEAPON_THROWN_TOMAHAWK", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_THROWING_KNIVES", currencyType = "cash", buyprice = 8, sellprice = 4, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_POISONBOTTLE", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_BOLAS", currencyType = "cash", buyprice = 4, sellprice = 2, category = "weapons", weapon = true, itemLimit = 0 },

            -- Shotguns
            { itemName = "WEAPON_SHOTGUN_SAWEDOFF", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_REPEATING", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_PUMP", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_DOUBLEBARREL", currencyType = "cash", buyprice = 500, sellprice = 250, category = "weapons", weapon = true, itemLimit = 0 },

            -- Misc.
            { itemName = "WEAPON_LASSO", currencyType = "cash", buyprice = 2, sellprice = 1, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_LASSO_REINFORCED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS_IMPROVED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA_ADVANCED", currencyType = "cash", buyprice = 200, sellprice = 100, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_LANTERN", currencyType = "cash", buyprice = 9.75, sellprice = 4.875, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_DAVY_LANTERN", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },

            -- Ammo
            { itemName = "ammorepeaternormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeaterexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatersplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammorevolvernormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolverexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolvervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolversplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoriflenormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorifleexpress", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflevelocity", currencyType = "cash", buyprice = 12, sellprice = 6, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflesplitpoint", currencyType = "cash", buyprice = 20, sellprice = 10, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoshotgunnormal", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoshotgunslug", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammopistolnormal", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolexpress", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolvelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolsplitpoint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoarrownormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoarrowsmallgame", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammovarmint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoknives", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammotomahawk", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammobolla", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
        }
    },

    TumbleweedStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Tumbleweed Store",
            sprite = 1475879922,
            Pos = vector3(-5485.70, -2938.08, -0.299),
        },
        Npc = {
            Pos = vector4(-5485.70, -2938.08, -0.299, 127.72),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Tumbleweed",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    StDenisStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "St Denis Store",
            sprite = 1475879922,
            Pos = vector3(2824.863, -1319.74, 45.755),
        },
        Npc = {
            Pos = vector4(2824.863, -1319.74, 45.755, -39.61),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },

        storeName = "ST Denis",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    Vanhorn = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Vanhorn Store",
            sprite = 1475879922,
            Pos = vector3(3025.420, 561.7910, 43.722),
        },
        Npc = {
            Pos = vector4(3025.420, 561.7910, 43.722, -99.20),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },
        storeName = "Vanhorn",
        PromptName = "general store",
        distanceOpenStore = 2.5,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    Wapiti = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }
        },
        Blip = {
            Allowed = true,
            Name = "Wapiti Store",
            sprite = 1475879922,
            Pos = vector3(449.7435, 2216.437, 245.30),
        },
        Npc = {
            Pos = vector4(449.7435, 2216.437, 245.30, -73.78),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "cs_eagleflies",
        },
        storeName = "Wapiti Shop",
        PromptName = "Native store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Food",    Type = "food",    desc = "Delicious food",       img = "consumable_bread_roll" },
            { label = "Tools",   Type = "tools",   desc = "Useful tools",         img = "butcher_table_production" },
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "butcher_table_production" },
            { label = "Meds",    Type = "meds",    desc = "Medical supplies",     img = "syringe" },
            { label = "Drinks",  Type = "drinks",  desc = "Refreshing beverages", img = "whisky" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {

            -- Meds
            { itemName = "bandage", currencyType = "cash", buyprice = {30,45}, sellprice = {15,22}, category = "meds", weapon = false, itemLimit = 0 },

            -- Weapons
            { itemName = "WEAPON_MELEE_KNIFE", currencyType = "cash", buyprice = {30,50}, sellprice = {5,10}, category = "weapons", weapon = true, itemLimit = 0 },

            -- Tools
            { itemName = "pickaxe", currencyType = "cash", buyprice = {30,50}, sellprice = {0.15,0.25}, category = "tools", weapon = false, itemLimit = 0 },

            -- Drinks
            { itemName = "whisky", currencyType = "cash", buyprice = {12,18}, sellprice = {5,9}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "wine", currencyType = "cash", buyprice = {18,22}, sellprice = {8,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "vodka", currencyType = "cash", buyprice = {15,20}, sellprice = {7,10}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "beer", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tequila", currencyType = "cash", buyprice = {18,22}, sellprice = {9,11}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "tropicalPunchMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "wildCiderMoonshine", currencyType = "cash", buyprice = {22,28}, sellprice = {11,14}, category = "drinks", weapon = false, itemLimit = 5 },
            { itemName = "raspberryale", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_coffee", currencyType = "cash", buyprice = {10,15}, sellprice = {5,8}, category = "drinks", weapon = false, itemLimit = 10 },
            { itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "drinks", weapon = false, itemLimit = 10 },

            -- Food
            { itemName = "consumable_bluegil", currencyType = "cash", buyprice = {10,14}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_breakfast", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_caramel", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolate", currencyType = "cash", buyprice = {3,7}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_fruitsalad", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_game", currencyType = "cash", buyprice = {15,20}, sellprice = {8,10}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_peach", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_pear", currencyType = "cash", buyprice = {5,8}, sellprice = {2,4}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_salmon", currencyType = "cash", buyprice = {12,18}, sellprice = {6,9}, category = "food", weapon = false, itemLimit = 5 },
            { itemName = "consumable_kidneybeans_can", currencyType = "cash", buyprice = {5,9}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },

            -- Desserts
            { itemName = "cheesecake", currencyType = "cash", buyprice = {10,15}, sellprice = {5,7}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_blueberrypie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chickenpie", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_chocolatecake", currencyType = "cash", buyprice = {12,16}, sellprice = {6,8}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_cupcake", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_donut", currencyType = "cash", buyprice = {6,10}, sellprice = {3,5}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_lemoncake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_poundcake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
            { itemName = "consumable_spongecake", currencyType = "cash", buyprice = {8,12}, sellprice = {4,6}, category = "food", weapon = false, itemLimit = 10 },
        }
    },

    SaintDgunstore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "SaintD Gun Store",
            sprite = 1475879922,
            Pos = vector3(2716.73,-1285.27,49.63),
        },
        Npc = {
            Pos = vector4(2717.75, -1286.62, 49.64, 44.58),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "SaintD Gun Store",
        PromptName = "Gunstore",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "weapon" },
            { label = "ammo",  Type = "ammo",  desc = "Buy Ammo", img = "ammorifleexpress" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
        items = {
            -- Melee
            { itemName = "WEAPON_MELEE_KNIFE_TRADER", currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE",        currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE_JAWBONE",currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_CLEAVER",      currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_HATCHET_HUNTER",currencyType = "cash",buyprice = 8,    sellprice = 4,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE",      currencyType = "cash", buyprice = 5.5,  sellprice = 2.75,  category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE_COLLECTOR",currencyType = "cash", buyprice = 5.5,sellprice = 2.75,category = "weapons", weapon = true,  itemLimit = 0 },

            -- Bows
            { itemName = "WEAPON_BOW", currencyType = "cash", buyprice = 10.75, sellprice = 5.375, category = "weapons", weapon = true, itemLimit = 0 },

            -- Rifles
            { itemName = "WEAPON_RIFLE_ELEPHANT", currencyType = "cash", buyprice = 400, sellprice = 200, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_VARMINT", currencyType = "cash", buyprice = 30.75, sellprice = 15.375, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_CARCANO", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_SPRINGFIELD", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_BOLTACTION", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },

            -- Repeaters
            { itemName = "WEAPON_REPEATER_WINCHESTER", currencyType = "cash", buyprice = 70, sellprice = 35, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_HENRY", currencyType = "cash", buyprice = 75.5, sellprice = 37.75, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_EVANS", currencyType = "cash", buyprice = 80, sellprice = 40, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_CARBINE", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },

            -- Pistols
            { itemName = "WEAPON_PISTOL_VOLCANIC", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_PISTOL_M1899", currencyType = "cash", buyprice = 10000, sellprice = 5000, category = "weapons", weapon = true, itemLimit = 0 },

            -- Revolvers
            { itemName = "WEAPON_REVOLVER_SCHOFIELD", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_LEMAT", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_DOUBLEACTION", currencyType = "cash", buyprice = 55, sellprice = 27.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_CATTLEMAN", currencyType = "cash", buyprice = 25, sellprice = 12.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_NAVY", currencyType = "cash", buyprice = 60, sellprice = 30, category = "weapons", weapon = true, itemLimit = 0 },

            -- Throwables
            { itemName = "WEAPON_THROWN_TOMAHAWK", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_THROWING_KNIVES", currencyType = "cash", buyprice = 8, sellprice = 4, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_POISONBOTTLE", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_BOLAS", currencyType = "cash", buyprice = 4, sellprice = 2, category = "weapons", weapon = true, itemLimit = 0 },

            -- Shotguns
            { itemName = "WEAPON_SHOTGUN_SAWEDOFF", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_REPEATING", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_PUMP", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_DOUBLEBARREL", currencyType = "cash", buyprice = 500, sellprice = 250, category = "weapons", weapon = true, itemLimit = 0 },

            -- Misc.
            { itemName = "WEAPON_LASSO", currencyType = "cash", buyprice = 2, sellprice = 1, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_LASSO_REINFORCED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS_IMPROVED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA_ADVANCED", currencyType = "cash", buyprice = 200, sellprice = 100, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_LANTERN", currencyType = "cash", buyprice = 9.75, sellprice = 4.875, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_DAVY_LANTERN", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },

            -- Ammo
            { itemName = "ammorepeaternormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeaterexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatersplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammorevolvernormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolverexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolvervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolversplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoriflenormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorifleexpress", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflevelocity", currencyType = "cash", buyprice = 12, sellprice = 6, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflesplitpoint", currencyType = "cash", buyprice = 20, sellprice = 10, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoshotgunnormal", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoshotgunslug", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammopistolnormal", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolexpress", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolvelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolsplitpoint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoarrownormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoarrowsmallgame", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammovarmint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoknives", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammotomahawk", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammobolla", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
        }
    },

    AnnesburgGunStore = {
        isDeactivated = false,     -- use this to activate stores or deactivate
        useRandomLocation = false, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                -- vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                -- vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Annesburg Gun Store",
            sprite = 1475879922,
            Pos = vector3(2948.16, 1318.79, 44.82),
        },
        Npc = {
            Pos = vector4(2948.16, 1318.79, 44.82, 91.34),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Annesburg Gun Store",
        PromptName = "Gunstore",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Weapons", Type = "weapons", desc = "Buy weapons",          img = "weapon" },
            { label = "ammo",  Type = "ammo",  desc = "Buy Ammo", img = "ammorifleexpress" },
        },
        -- * store type allow which type of store to show in the store
        storeType = {
            { label = "Buy",  Type = "buy",  desc = "Buy from store", img = "consumable_bread_roll" },
            { label = "Sell", Type = "sell", desc = "Sell to store",  img = "butcher_table_production" },
        },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

        items = {
            -- Melee
            { itemName = "WEAPON_MELEE_KNIFE_TRADER", currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE",        currencyType = "cash", buyprice = 5,    sellprice = 2.5,   category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_KNIFE_JAWBONE",currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_CLEAVER",      currencyType = "cash", buyprice = 2,    sellprice = 1,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_HATCHET_HUNTER",currencyType = "cash",buyprice = 8,    sellprice = 4,     category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE",      currencyType = "cash", buyprice = 5.5,  sellprice = 2.75,  category = "weapons", weapon = true,  itemLimit = 0 },
            { itemName = "WEAPON_MELEE_MACHETE_COLLECTOR",currencyType = "cash", buyprice = 5.5,sellprice = 2.75,category = "weapons", weapon = true,  itemLimit = 0 },

            -- Bows
            { itemName = "WEAPON_BOW", currencyType = "cash", buyprice = 10.75, sellprice = 5.375, category = "weapons", weapon = true, itemLimit = 0 },

            -- Rifles
            { itemName = "WEAPON_RIFLE_ELEPHANT", currencyType = "cash", buyprice = 400, sellprice = 200, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_VARMINT", currencyType = "cash", buyprice = 30.75, sellprice = 15.375, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SNIPERRIFLE_CARCANO", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_SPRINGFIELD", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_RIFLE_BOLTACTION", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },

            -- Repeaters
            { itemName = "WEAPON_REPEATER_WINCHESTER", currencyType = "cash", buyprice = 70, sellprice = 35, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_HENRY", currencyType = "cash", buyprice = 75.5, sellprice = 37.75, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_EVANS", currencyType = "cash", buyprice = 80, sellprice = 40, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REPEATER_CARBINE", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },

            -- Pistols
            { itemName = "WEAPON_PISTOL_VOLCANIC", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_PISTOL_M1899", currencyType = "cash", buyprice = 10000, sellprice = 5000, category = "weapons", weapon = true, itemLimit = 0 },

            -- Revolvers
            { itemName = "WEAPON_REVOLVER_SCHOFIELD", currencyType = "cash", buyprice = 50, sellprice = 25, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_LEMAT", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_DOUBLEACTION", currencyType = "cash", buyprice = 55, sellprice = 27.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_CATTLEMAN", currencyType = "cash", buyprice = 25, sellprice = 12.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_REVOLVER_NAVY", currencyType = "cash", buyprice = 60, sellprice = 30, category = "weapons", weapon = true, itemLimit = 0 },

            -- Throwables
            { itemName = "WEAPON_THROWN_TOMAHAWK", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_THROWING_KNIVES", currencyType = "cash", buyprice = 8, sellprice = 4, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_POISONBOTTLE", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_THROWN_BOLAS", currencyType = "cash", buyprice = 4, sellprice = 2, category = "weapons", weapon = true, itemLimit = 0 },

            -- Shotguns
            { itemName = "WEAPON_SHOTGUN_SAWEDOFF", currencyType = "cash", buyprice = 250, sellprice = 125, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_REPEATING", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_PUMP", currencyType = "cash", buyprice = 1000, sellprice = 500, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_SHOTGUN_DOUBLEBARREL", currencyType = "cash", buyprice = 500, sellprice = 250, category = "weapons", weapon = true, itemLimit = 0 },

            -- Misc.
            { itemName = "WEAPON_LASSO", currencyType = "cash", buyprice = 2, sellprice = 1, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_LASSO_REINFORCED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS_IMPROVED", currencyType = "cash", buyprice = 10, sellprice = 5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_BINOCULARS", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_FISHINGROD", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA", currencyType = "cash", buyprice = 40, sellprice = 20, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_KIT_CAMERA_ADVANCED", currencyType = "cash", buyprice = 200, sellprice = 100, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_LANTERN", currencyType = "cash", buyprice = 9.75, sellprice = 4.875, category = "weapons", weapon = true, itemLimit = 0 },
            { itemName = "WEAPON_MELEE_DAVY_LANTERN", currencyType = "cash", buyprice = 15, sellprice = 7.5, category = "weapons", weapon = true, itemLimit = 0 },

            -- Ammo
            { itemName = "ammorepeaternormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeaterexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorepeatersplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammorevolvernormal", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolverexpress", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolvervelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorevolversplitpoint", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoriflenormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammorifleexpress", currencyType = "cash", buyprice = 8, sellprice = 4, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflevelocity", currencyType = "cash", buyprice = 12, sellprice = 6, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoriflesplitpoint", currencyType = "cash", buyprice = 20, sellprice = 10, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoshotgunnormal", currencyType = "cash", buyprice = 3, sellprice = 1.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoshotgunslug", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammopistolnormal", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolexpress", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolvelocity", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammopistolsplitpoint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoarrownormal", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammoarrowsmallgame", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammovarmint", currencyType = "cash", buyprice = 5, sellprice = 2.5, category = "ammo", weapon = false, itemLimit = 0 },

            { itemName = "ammoknives", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammotomahawk", currencyType = "cash", buyprice = 2, sellprice = 1, category = "ammo", weapon = false, itemLimit = 0 },
            { itemName = "ammobolla", currencyType = "cash", buyprice = 1, sellprice = 0.5, category = "ammo", weapon = false, itemLimit = 0 },
        }
    },   
}