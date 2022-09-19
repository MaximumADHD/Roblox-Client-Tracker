--[[
	Open the marketplace prompt for confirming purchase of an item
	in the InspectAndBuy menu
]]
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)

local function PromptPurchase(itemId, itemType)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		if itemType == Enum.AvatarItemType.Bundle then
			MarketplaceService:PromptBundlePurchase(Players.LocalPlayer :: Player, itemId)
		elseif itemType == Enum.AvatarItemType.Asset then
			MarketplaceService:PromptRobloxPurchase(itemId, false)
		end
	end)
end

return PromptPurchase
