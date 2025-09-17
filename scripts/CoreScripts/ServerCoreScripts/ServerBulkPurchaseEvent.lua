--[[
	ServerBulkPurchaseEvent is a server script that handles the bulk purchase event.
	It is used to prompt a bulk purchase from the inspect and buy menu client core script.

    To prevent security exploits, bulk purchase prompts can only be initiated from a server script.
]]
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local FFlagAXEnableInspectAndBuyBulkPurchase = require(CorePackages.Workspace.Packages.SharedFlags).FFlagAXEnableInspectAndBuyBulkPurchase


if FFlagAXEnableInspectAndBuyBulkPurchase then
    local ServerSideBulkPurchaseEvent = Instance.new("RemoteEvent")
    ServerSideBulkPurchaseEvent.Name = "ServerSideBulkPurchaseEvent" 
    ServerSideBulkPurchaseEvent.Parent = RobloxReplicatedStorage

    ServerSideBulkPurchaseEvent.OnServerEvent:Connect(function(player, items)
        MarketplaceService:PromptBulkPurchase(player,items, {})
    end)
end