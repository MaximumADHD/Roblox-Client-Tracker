--!nonstrict
local Root = script.Parent.Parent

local PurchaseError = require(Root.Enums.PurchaseError)
local Constants = require(Root.Misc.Constants)
local Promise = require(Root.Promise)

local function performPurchase(network, infoType, productId, expectedPrice, requestId, isRobloxPurchase)
	return network.performPurchase(infoType, productId, expectedPrice, requestId, isRobloxPurchase)
		:andThen(function(result)
			--[[
				User might purchase the product through the web after having
				opened the purchase prompt, so an AlreadyOwned status is
				acceptable.
			]]
			if result.purchased or result.reason == "AlreadyOwned" then
				return Promise.resolve(result)
			elseif result.reason == Constants.PurchaseFailureReason.EconomyDisabled then
				return Promise.reject(PurchaseError.PurchaseDisabled)
			elseif result.reason == Constants.PurchaseFailureReason.TwoStepVerificationRequired then
				return Promise.reject(PurchaseError.TwoFactorNeeded)
			elseif result.transactionStatus == 24 then
				return Promise.reject(PurchaseError.TwoFactorNeeded)
			else
				return Promise.reject(PurchaseError.UnknownFailure)
			end
		end, function(failure)
			return Promise.reject(PurchaseError.UnknownFailure)
		end)
end

return performPurchase
