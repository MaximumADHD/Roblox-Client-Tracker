--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")

local SetABVariation = require(Root.Actions.SetABVariation)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local RequestAssetPurchase = require(Root.Actions.RequestAssetPurchase)
local RequestGamepassPurchase = require(Root.Actions.RequestGamepassPurchase)
local RequestProductPurchase = require(Root.Actions.RequestProductPurchase)
local PurchaseError = require(Root.Enums.PurchaseError)
local Constants = require(Root.Misc.Constants)
local Network = require(Root.Services.Network)
--local ABTest = require(Root.Services.ABTest)
local deprecated_GetProductInfo = require(Root.Network.deprecated_GetProductInfo)
local getProductInfo = require(Root.Network.getProductInfo)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local getAccountInfo = require(Root.Network.getAccountInfo)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local resolvePromptState = require(script.Parent.resolvePromptState)

local GetFFlagEnableCreatorStorePurchasingCutover = require(Root.Flags.GetFFlagEnableCreatorStorePurchasingCutover)

local requiredServices = {
	--ABTest,
	Network,
	ExternalSettings,
}

local function initiatePurchase(id, infoType, equipIfPurchased, isRobloxPurchase, idempotencyKey, purchaseAuthToken, collectibleItemId, collectibleItemInstanceId, collectibleProductId, expectedPrice)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		--local abTest = services[ABTest]
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if hasPendingRequest(store:getState()) then
			return nil
		end

		--store:dispatch(SetABVariation("ExampleABTest", abTest.getLayerData("ExampleABTest"))
		
		if infoType == Enum.InfoType.Asset then
			store:dispatch(RequestAssetPurchase(id, equipIfPurchased, isRobloxPurchase, idempotencyKey, purchaseAuthToken, collectibleItemId, collectibleItemInstanceId, collectibleProductId, expectedPrice))
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
			productInfo = if GetFFlagEnableCreatorStorePurchasingCutover() then getProductInfo(network, id, infoType) else deprecated_GetProductInfo(network, id, infoType),
			accountInfo = getAccountInfo(network, externalSettings),
			alreadyOwned = getIsAlreadyOwned(network, id, infoType),
			balanceInfo = getBalanceInfo(network, externalSettings, false --[[overrideStudioMock]], true),
		})
			:andThen(function(results)
				-- Once we've finished all of our async data fetching, we'll
				-- resolve the state of the prompt
				store:dispatch(resolvePromptState(
					results.productInfo,
					results.accountInfo,
					results.balanceInfo,
					results.alreadyOwned,
					isRobloxPurchase,
					expectedPrice
				))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiatePurchase
