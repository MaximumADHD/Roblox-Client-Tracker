local Root = script.Parent.Parent
local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

local SetABVariation = require(Root.Actions.SetABVariation)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local RequestAssetPurchase = require(Root.Actions.RequestAssetPurchase)
local RequestGamepassPurchase = require(Root.Actions.RequestGamepassPurchase)
local RequestProductPurchase = require(Root.Actions.RequestProductPurchase)
local PurchaseError = require(Root.Enums.PurchaseError)
local Constants = require(Root.Misc.Constants)
local Network = require(Root.Services.Network)
local getProductInfo = require(Root.Network.getProductInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local getAccountInfo = require(Root.Network.getAccountInfo)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local GetFFlagAdultConfirmationEnabled = require(Root.Flags.GetFFlagAdultConfirmationEnabled)

local resolvePromptState = require(script.Parent.resolvePromptState)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiatePurchase(id, infoType, equipIfPurchased, isRobloxPurchase)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if hasPendingRequest(store:getState()) then
			return nil
		end

		if GetFFlagAdultConfirmationEnabled() then
			pcall(function()
				store:dispatch(SetABVariation(Constants.ABTests.ADULT_CONFIRMATION,
					ABTestService:GetVariant(Constants.ABTests.ADULT_CONFIRMATION)))
			end)
		end

		if infoType == Enum.InfoType.Asset then
			store:dispatch(RequestAssetPurchase(id, equipIfPurchased, isRobloxPurchase))
		elseif infoType == Enum.InfoType.GamePass then
			store:dispatch(RequestGamepassPurchase(id))
		elseif infoType == Enum.InfoType.Product then
			store:dispatch(RequestProductPurchase(id, equipIfPurchased))
		else
			assert(false, "Invalid product type")
			return nil
		end

		local isStudio = externalSettings.isStudio()

		if not isStudio and Players.LocalPlayer.UserId <= 0 then
			store:dispatch(ErrorOccurred(PurchaseError.Guest))
			return nil
		end

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end

		return Promise.all({
			productInfo = getProductInfo(network, id, infoType),
			accountInfo = getAccountInfo(network, externalSettings),
			alreadyOwned = getIsAlreadyOwned(network, id, infoType),
		})
			:andThen(function(results)
				-- Once we've finished all of our async data fetching, we'll
				-- resolve the state of the prompt
				store:dispatch(resolvePromptState(
					results.productInfo,
					results.accountInfo,
					results.alreadyOwned,
					isRobloxPurchase
				))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiatePurchase
