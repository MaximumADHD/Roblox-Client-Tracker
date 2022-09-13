--!nonstrict
local Root = script.Parent.Parent
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local SetPromptState = require(Root.Actions.SetPromptState)
local StartPurchase = require(Root.Actions.StartPurchase)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local PromptState = require(Root.Enums.PromptState)
local ItemType = require(Root.Enums.ItemType)
local PurchaseError = require(Root.Enums.PurchaseError)
local getToolAsset = require(Root.Network.getToolAsset)
local performPurchase = require(Root.Network.performPurchase)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local Thunk = require(Root.Thunk)
local Promise = require(Root.Promise)

local completePurchase = require(script.Parent.completePurchase)

local GetFFlagRobuxUpsellIXP = require(Root.Flags.GetFFlagRobuxUpsellIXP)

-- Only tools can be equipped on purchase
local ASSET_TYPE_TOOL = 19

local requiredServices = {
	Network,
	Analytics,
	ExternalSettings,
}

local function purchaseItem()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]
		local analytics = services[Analytics]

		local state = store:getState()
		local purchaseFlow = state.purchaseFlow

		local platform = externalSettings.getPlatform()

		store:dispatch(StartPurchase(Workspace.DistributedGameTime))

		if GetFFlagRobuxUpsellIXP() then
			if purchaseFlow == PurchaseFlow.RobuxUpsellV2 then
				store:dispatch(SetPromptState(PromptState.PurchaseInProgress))
			end
		end

		local state = store:getState()

		local requestId = HttpService:GenerateGUID(false)

		local id = state.promptRequest.id
		local infoType = state.promptRequest.infoType
		local equipIfPurchased = state.promptRequest.equipIfPurchased
		local isRobloxPurchase = state.promptRequest.isRobloxPurchase

		local isPlayerPremium = state.accountInfo.membershipType == 4
		local salePrice = getPlayerPrice(state.productInfo, isPlayerPremium)
		local assetTypeId = state.productInfo.assetTypeId
		local productId = state.productInfo.productId

		local itemType = state.productInfo.itemType

		analytics.signalProductPurchaseConfirmed(productId, state.requestType)

		return performPurchase(network, infoType, productId, salePrice, requestId, isRobloxPurchase)
			:andThen(function(result)
				--[[
					If the purchase was successful, we signal success,
					record analytics, and equip the item if needed
				]]
				store:dispatch(completePurchase())

				-- Marketplace Analytics for bundles is not available yet.
				if itemType ~= ItemType.Bundle then
					analytics.signalPurchaseSuccess(id, infoType, salePrice, result)
				end

				if equipIfPurchased and assetTypeId == ASSET_TYPE_TOOL then
					return getToolAsset(network, id)
						:andThen(function(tool)
							if tool then
								tool.Parent = Players.LocalPlayer.Backpack
							end
						end)
				end

				return Promise.resolve()
			end)
			:catch(function(errorReason)
				if errorReason == PurchaseError.TwoFactorNeeded then
					analytics.signalTwoSVSettingsErrorShown(productId, infoType)
			
					if platform == Enum.Platform.Windows or platform == Enum.Platform.OSX then
						errorReason = PurchaseError.TwoFactorNeededSettings
					end
				end

				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return purchaseItem
