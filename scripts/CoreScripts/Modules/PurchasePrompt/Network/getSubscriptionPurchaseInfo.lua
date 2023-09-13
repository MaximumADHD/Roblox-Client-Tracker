local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)
local Promise = require(Root.Promise)

local function parseError(errorReason)
	if errorReason == "UserHasSpendLimitSet" then
		return PurchaseError.SubscriptionExceededUserSpendLimit
	elseif errorReason == "UnsupportedLocale" then
		return PurchaseError.SubscriptionUnsupportedLocale
	elseif errorReason == "UnderAge17" then
		return PurchaseError.UnderAge17
	elseif errorReason == "UnsupportedDevice" then
		return PurchaseError.SubscriptionUnsupportedDevice
	elseif errorReason == "ThirdPartySalesNotAllowed" then
		return PurchaseError.SubscriptionThirdPartySalesNotAllowed
	elseif errorReason == "UserAlreadySubscribed" then
		return PurchaseError.AlreadySubscribed
	elseif errorReason == "UnavailableSubscription" then
		return PurchaseError.UnavailableSubscription
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
