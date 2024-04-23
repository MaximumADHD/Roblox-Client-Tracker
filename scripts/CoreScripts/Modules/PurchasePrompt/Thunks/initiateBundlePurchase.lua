--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local RequestBundlePurchase = require(Root.Actions.RequestBundlePurchase)
local PurchaseError = require(Root.Enums.PurchaseError)
local getBundleDetails = require(Root.Network.getBundleDetails)
local getProductPurchasableDetails = require(Root.Network.getProductPurchasableDetails)
local getAccountInfo = require(Root.Network.getAccountInfo)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)

local resolveBundlePromptState = require(script.Parent.resolveBundlePromptState)

local FFlagEnableUGC4ACollectiblePurchaseSupport = require(Root.Parent.Flags.FFlagEnableUGC4ACollectiblePurchaseSupport)
local FFlagEnableBundlePurchaseChecks = require(Root.Parent.Flags.FFlagEnableBundlePurchaseChecks)

local requiredServices = {
	Network,
	ExternalSettings,
}

-- Defining fast flag only used in this file. Will be cleaned up later.
local GetFFlagReturnNotForSaleOnInvalidBundleId = require(Root.Flags.GetFFlagReturnNotForSaleOnInvalidBundleId)

local function initiateBundlePurchase(
	bundleId,
	idempotencyKey,
	purchaseAuthToken,
	collectibleItemId,
	collectibleItemInstanceId,
	collectibleProductId,
	expectedPrice
)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if hasPendingRequest(store:getState()) then
			return nil
		end

		if FFlagEnableUGC4ACollectiblePurchaseSupport then
			store:dispatch(
				RequestBundlePurchase(
					bundleId,
					idempotencyKey,
					purchaseAuthToken,
					collectibleItemId,
					collectibleItemInstanceId,
					collectibleProductId,
					expectedPrice
				)
			)
		else
			store:dispatch(RequestBundlePurchase(bundleId))
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
			accountInfo = getAccountInfo(network, externalSettings),
			balanceInfo = getBalanceInfo(network, externalSettings),
			alreadyOwned = if FFlagEnableBundlePurchaseChecks
				then getIsAlreadyOwned(network, bundleId, Enum.InfoType.Bundle)
				else nil,
		})
			:andThen(function(results)
				-- If Fast Flag is on for the InvalidBundleId fix, use new logic
				if GetFFlagReturnNotForSaleOnInvalidBundleId() then
					-- Only continue the purchase if the bundleId was valid and VEP returned a valid product
					if results.bundleDetails.product then
						local bundleProductId = results.bundleDetails.product.id
						getProductPurchasableDetails(network, bundleProductId):andThen(
							function(productPurchasableDetails)
								store:dispatch(
									resolveBundlePromptState(
										productPurchasableDetails,
										results.bundleDetails,
										results.accountInfo,
										results.balanceInfo,
										if FFlagEnableUGC4ACollectiblePurchaseSupport then expectedPrice else nil,
										if FFlagEnableBundlePurchaseChecks then results.alreadyOwned else nil
									)
								)
							end
						)
					-- Otherwise, we can dispatch the NotForSale error and end early to not crash the UI
					else
						store:dispatch(ErrorOccurred(PurchaseError.NotForSale))
					end
				else
					local bundleProductId = results.bundleDetails.product.id
					getProductPurchasableDetails(network, bundleProductId):andThen(function(productPurchasableDetails)
						store:dispatch(
							resolveBundlePromptState(
								productPurchasableDetails,
								results.bundleDetails,
								results.accountInfo,
								results.balanceInfo,
								if FFlagEnableUGC4ACollectiblePurchaseSupport then expectedPrice else nil
							)
						)
					end)
				end
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateBundlePurchase
