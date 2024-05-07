local Root = script.Parent.Parent
local PurchaseError = require(Root.Enums.PurchaseError)

local function parseSubscriptionError(errorReason)
	if errorReason == "UserHasSpendLimitSet" then
		return PurchaseError.SubscriptionExceededUserSpendLimit
	elseif errorReason == "UnsupportedLocale" then
		return PurchaseError.SubscriptionUnsupportedLocale
	elseif errorReason == "RestrictedUser" then
		return PurchaseError.RestrictedUser
	elseif errorReason == "PurchasePlatformNotSupported" then
		return PurchaseError.SubscriptionPurchasePlatformNotSupported
	elseif errorReason == "InvalidSaleLocation" then
		return PurchaseError.SubscriptionInvalidSaleLocation
	elseif errorReason == "UserAlreadySubscribed" then
		return PurchaseError.AlreadySubscribed
	elseif errorReason == "ProductNotForSale" then
		return PurchaseError.SubscriptionNotForSale
	elseif errorReason == "VpcRequired" then
		return PurchaseError.VpcRequired
	elseif errorReason == "ExceedParentalSpendLimit" then
		return PurchaseError.ExceedParentalSpendLimit
	end

	return PurchaseError.UnknownFailure
end

return parseSubscriptionError
