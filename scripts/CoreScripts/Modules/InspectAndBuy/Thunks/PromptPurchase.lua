local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Constants = require(InspectAndBuyFolder.Constants)
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)
local GetFFlagIBEnableCollectiblePurchaseForUnlimited =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblePurchaseForUnlimited)

local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local GetFFlagIBEnableSendCounters = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableSendCounters)
local GetFFlagIBFixl20HasQuantityPurchase = require(InspectAndBuyFolder.Flags.GetFFlagIBFixl20HasQuantityPurchase)

local requiredServices = {
	Analytics,
}

--[[
	Reports analytics for attempting a purchase. Brings up the purchase prompt.
]]
local function PromptPurchase(itemId, itemType, collectibleItemId, collectibleLowestAvailableResaleProductId, collectibleLowestAvailableResaleItemInstanceId, collectibleLowestResalePrice, isLimited20OrLimitedCollectible)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		store:dispatch(SetItemBeingPurchased(itemId, itemType))

		local canUsePromptCollectiblesPurchase = collectibleLowestAvailableResaleProductId ~= nil
		if GetFFlagIBEnableCollectiblePurchaseForUnlimited() then
			canUsePromptCollectiblesPurchase = canUsePromptCollectiblesPurchase and itemType ~= Constants.ItemType.Bundle
		end

		if canUsePromptCollectiblesPurchase then
			--[[
				WARNING:
				This `MarketplaceService:PromptCollectiblesPurchase` method is HARD-CODED to only purchase for ASSET
				**NOT for BUNDLES or any other asset types.**
				Please be aware of this when you are using this method.

				This method is also only supports purchasing LIMITED collectible assets.
				Because `collectibleLowestAvailableResaleItemInstanceId` is required to be passed in.
			]]
			MarketplaceService:PromptCollectiblesPurchase(Players.LocalPlayer :: Player, itemId, collectibleItemId, collectibleLowestAvailableResaleItemInstanceId, collectibleLowestAvailableResaleProductId, collectibleLowestResalePrice)
			if GetFFlagIBEnableSendCounters() then
				store:dispatch(SendCounter(Constants.Counters.PromptLimitedCollectiblesPurchase))
			end
		elseif itemType == Constants.ItemType.Bundle then
			--[[
				Calling `MarketplaceService:PromptBundlePurchase` to prompt bundle purchase in or not in the collectibles system
			]]
			MarketplaceService:PromptBundlePurchase(Players.LocalPlayer :: Player, itemId)
			if GetFFlagIBEnableSendCounters() then
				store:dispatch(SendCounter(Constants.Counters.PromptBundlePurchase))
			end
		elseif itemType == Constants.ItemType.Asset then
			--[[
				Calling `MarketplaceService:PromptPurchase` to prompt unlimited assets in collectibles system
				Calling `MarketplaceService:PromptRobloxPurchase` to prompt assets NOT in collectibles system or Limited 2.0/Limited Collectible original copies
			]]
			local isNotLimited20OrLimitedCollectible = true
			if GetFFlagIBFixl20HasQuantityPurchase() then
				isNotLimited20OrLimitedCollectible = not isLimited20OrLimitedCollectible
			end
			if GetFFlagIBEnableCollectiblePurchaseForUnlimited() and collectibleItemId ~= nil and isNotLimited20OrLimitedCollectible then
				MarketplaceService:PromptPurchase(
					Players.LocalPlayer :: Player,
					itemId,
					false
				)
				if GetFFlagIBEnableSendCounters() then
					store:dispatch(SendCounter(Constants.Counters.PromptUnlimitedCollectiblePurchase))
				end
			else
				MarketplaceService:PromptRobloxPurchase(itemId, false)
				if GetFFlagIBEnableSendCounters() then
					store:dispatch(SendCounter(Constants.Counters.PromptRobloxPurchase))
				end
			end
		else
			if GetFFlagIBEnableSendCounters() then
				store:dispatch(SendCounter(Constants.Counters.PromptPurchaseUnknownItemType))
			end
		end

		analytics.reportPurchaseAttempt(itemType, itemId)
	end)
end

return PromptPurchase
