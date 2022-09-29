--[[
	Open the marketplace prompt for confirming purchase of an item
	in the InspectAndBuy menu
]]
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local InGameMenu = script.Parent.Parent
local InspectAndBuyThunk = require(InGameMenu.InspectAndBuyThunk)
local SendInspectAndBuyAnalytics = require(InGameMenu.Utility.SendInspectAndBuyAnalytics)
local SetItemBeingPurchased = require(InGameMenu.Actions.InspectAndBuy.SetItemBeingPurchased)

local function PromptPurchase(itemId, itemType)
	return InspectAndBuyThunk.new(script.Name, function(store, services)
		store:dispatch(SetItemBeingPurchased(itemId, itemType))
		if itemType == Enum.AvatarItemType.Bundle then
			MarketplaceService:PromptBundlePurchase(Players.LocalPlayer :: Player, itemId)
		elseif itemType == Enum.AvatarItemType.Asset then
			MarketplaceService:PromptRobloxPurchase(itemId, false)
		end

		local analyticsFields = {
			itemType = itemType and tostring(itemType) or nil,
			itemID = itemId
		}
		SendInspectAndBuyAnalytics("purchaseAttemptItem", store:getState().inspectAndBuy.UserId, analyticsFields)
	end)
end

return PromptPurchase