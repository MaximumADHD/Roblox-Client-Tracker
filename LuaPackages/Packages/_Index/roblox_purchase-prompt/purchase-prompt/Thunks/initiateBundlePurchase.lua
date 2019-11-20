local Players = game:GetService("Players")

local Promise = require(script.Parent.Parent.Promise)
local Thunk = require(script.Parent.Parent.Thunk)

local Network = require(script.Parent.Parent.Services.Network)
local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

local PurchaseError = require(script.Parent.Parent.PurchaseError)

local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)
local SetProduct = require(script.Parent.Parent.Actions.SetProduct)

local getBundleDetails = require(script.Parent.Parent.Network.getBundleDetails)
local getProductPurchasableDetails = require(script.Parent.Parent.Network.getProductPurchasableDetails)
local getAccountInfo = require(script.Parent.Parent.Network.getAccountInfo)

local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

local FFlagPerformPurchaseNewBundleInfoTypeEnabled = settings():GetFFlag("PerformPurchaseNewBundleInfoTypeEnabled")

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateBundlePurchase(bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		--[[
			If a purchase is already in progress, we abort the new one
		]]
		if store:getState().product.id ~= nil then
			return nil
		end

		if FFlagPerformPurchaseNewBundleInfoTypeEnabled then
			--[[
				Bundles go through the Enum.InfoType.Bundle MarketplaceService:PerformPurchase()
				code path.
			]]
			store:dispatch(SetProduct(bundleId, Enum.InfoType.Bundle, false))
		else
			--[[
				Bundles go through the Enum.InfoType.Asset MarketplaceService:PerformPurchase()
				code path.
			]]
			store:dispatch(SetProduct(bundleId, Enum.InfoType.Asset, false))
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