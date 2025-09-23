--============================================================
-- vorp_stores — Configuration
--============================================================

Config = {}

--------------------------------------------------------------
-- Language
--------------------------------------------------------------
-- e.g. "English", "Portugues_PT", "Portugues_BR", 
-- "Francais", "German", "Spanish", "Czech",
Lang = "English"   

--------------------------------------------------------------
-- UI / UX
--------------------------------------------------------------
-- Store menu alignment: "center" | "top-left" | "top-right"
Config.Align = "top-left"

-- Keybind to open stores (default: G)
-- Full list of hashes: https://docs.fivem.net/docs/game-references/controls/
Config.Key = 0x760A9C6F  -- [G]

-- Hide/show other UIs while store menu is open.
-- Replace events/commands below with ones used on your server.
Config.UI = function(state)
    if state then
        -- ExecuteCommand("hideneeds hidden")
        -- ExecuteCommand("hideui")
        TriggerEvent("vorpmetabolism:setHud", false)
    else
        -- ExecuteCommand("hideneeds visible")
        -- ExecuteCommand("showui")
        TriggerEvent("vorpmetabolism:setHud", true)
    end
end

--------------------------------------------------------------
-- Development / Debug
--------------------------------------------------------------
Config.DevMode = false   -- if true, allows /reload to hot-reload the script

--------------------------------------------------------------
-- Item Decay / Sell Rules
--------------------------------------------------------------
-- Allow selling degradable items at all
Config.AllowSellItemsWithDecay = false

-- If decay selling is allowed, only accept items with this % or higher
-- (e.g. 10 means items at 10% condition or better)
Config.DecayPercentage = 10

-- If enabled, payout scales with item percentage (e.g. 80% condition pays 80% of price)
Config.SellItemBasedOnPercentage = false

--------------------------------------------------------------
-- Discord Webhook
--------------------------------------------------------------
-- Enable webhook logging (sales, purchases, etc.)
Config.UseWebhook = false

-- Webhook endpoint (keep empty in public repos; set via server.cfg or private config)
Config.WebhookUrl = "https://discord.com/api/webhooks/"

-- Visuals/text used by Core.AddWebhook
Config.WebhookLanguage = {
    WebhookTitle = "",
    WebhookColor = "",
    WebhookName  = "",
    WebhookLogo  = "",
    WebhookLogo2 = "",
    WebhookAvatar = ""
}