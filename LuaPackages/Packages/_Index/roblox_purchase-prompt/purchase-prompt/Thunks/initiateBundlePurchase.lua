local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local RequestBundlePurchase = require(Root.Actions.RequestBundlePurchase)
local PurchaseError = require(Root.Enums.PurchaseError)
local getBundleDetails = require(Root.Network.getBundleDetails)
local getProductPurchasableDetails = require(Root.Network.getProductPurchasableDetails)
local getAccountInfo = require(Root.Network.getAccountInfo)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateBundlePurchase(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if hasPendingRequest(store:getState()) then
			return nil
		end

		store:dispatch(RequestBundlePurchase(bundleId))

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
			bundleDetails = getBundleDetails(network, bundleId),
			accountInfo = getAccountInfo(network, externalSettings)
		})
			:andThen(function(results)
				local bundleProductId = results.bundleDetails.product.id
				getProductPurchasableDetails(network, bundleProductId)
					:andThen(function(productPurchasableDetails)
						store:dispatch(resolveBundlePromptState(
							productPurchasableDetails,
							results.bundleDetails,
							results.accountInfo
						))
					end)
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateBundlePurchase