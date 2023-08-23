local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Constants = require(InspectAndBuyFolder.Constants)
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)

local requiredServices = {
	Analytics,
}

--[[
	Reports analytics for attempting a purchase. Brings up the purchase prompt.
]]
local function PromptPurchase(itemId, itemType, collectibleItemId, collectibleLowestAvailableResaleProductId, collectibleLowestAvailableResaleItemInstanceId, collectibleLowestResalePrice)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		store:dispatch(SetItemBeingPurchased(itemId, itemType))

		if game:GetEngineFeature("CollectibleItemPurchaseResellEnabled") and collectibleLowestAvailableResaleProductId ~= nil then
			MarketplaceService:PromptCollectiblesPurchase(Players.LocalPlayer :: Player, itemId, collectibleItemId, collectibleLowestAvailableResaleItemInstanceId, collectibleLowestAvailableResaleProductId, collectibleLowestResalePrice)
		elseif itemType == Constants.ItemType.Bundle then
			MarketplaceService:PromptBundlePurchase(Players.LocalPlayer :: Player, itemId)
		elseif itemType == Constants.ItemType.Asset then
			MarketplaceService:PromptRobloxPurchase(itemId, false)
		end

		analytics.reportPurchaseAttempt(itemType, itemId)
	end)
end

return PromptPurchase
