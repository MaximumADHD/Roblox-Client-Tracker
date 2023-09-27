local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function parseError(errorReason)
	if errorReason == "UserHasSpendLimitSet" then
		return PurchaseError.SubscriptionExceededUserSpendLimit
	elseif errorReason == "UnsupportedLocale" then
		return PurchaseError.SubscriptionUnsupportedLocale
	elseif errorReason == "RestrictedUserAge" then
		return PurchaseError.RestrictedUserAge
	elseif errorReason == "PurchasePlatformNotSupported" then
		return PurchaseError.SubscriptionPurchasePlatformNotSupported
	elseif errorReason == "InvalidSaleLocation" then
		return PurchaseError.SubscriptionInvalidSaleLocation
	elseif errorReason == "UserAlreadySubscribed" then
		return PurchaseError.AlreadySubscribed
	elseif errorReason == "ProductNotForSale" then
		return PurchaseError.SubscriptionNotForSale
	end

	return PurchaseError.UnknownFailure
end

local function getSubscriptionPurchaseInfo(network, subscriptionId)
	return network.getSubscriptionPurchaseInfo(subscriptionId)
		:catch(function(failure)
			return Promise.reject(parseError(failure))
		end)
end

return getSubscriptionPurchaseInfo
