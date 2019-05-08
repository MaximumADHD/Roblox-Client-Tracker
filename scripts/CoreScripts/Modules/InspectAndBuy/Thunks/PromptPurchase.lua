local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local Constants = require(InspectAndBuyFolder.Constants)
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)

local FFlagRoactPurchasePromptAllowBundles = settings():GetFFlag("RoactPurchasePromptAllowBundles")

local requiredServices = {
	Analytics,
}

--[[
	Reports analytics for attempting a purchase. Brings up the purchase prompt.
]]
local function PromptPurchase(itemId, itemType)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		store:dispatch(SetItemBeingPurchased(itemId, itemType))

		if itemType == Constants.ItemType.Bundle and FFlagRoactPurchasePromptAllowBundles then
			MarketplaceService:PromptBundlePurchase(Players.LocalPlayer, itemId)
		elseif itemType == Constants.ItemType.Asset then
			MarketplaceService:PromptPurchase(Players.LocalPlayer, itemId)
		end

		analytics.reportPurchaseAttempt(itemType, itemId)
	end)
end

return PromptPurchase