--[[
	Enumeration of all possible error states
]]
local createEnum = require(script.Parent.createEnum)

local PurchaseError = createEnum("PurchaseError", {
	-- Pre-purchase network failures
	"CannotGetBalance",
	"CannotGetItemPrice",

	-- Premium
	"AlreadyPremium",
	"PremiumUnavailable",
	"PremiumUnavailablePlatform",

	-- Item unvailable
	"NotForSale",
	"NotForSaleHere",
	"AlreadyOwn",
	"PremiumOnly",
	"Under13",
	"Limited",
	"Guest",
	"ThirdPartyDisabled",
	"NotEnoughRobux",
	"NotEnoughRobuxXbox",
	"NotEnoughRobuxNoUpsell",
	"TwoFactorNeeded",
	"TwoFactorNeededSettings",

	-- Network-reported failures
	"UnknownFailure",
	"UnknownFailureNoItemName",
	"PurchaseDisabled",
	"InvalidFunds",
	"InvalidFundsUnknown",

	-- Subscription
	"AlreadySubscribed",
	"SubscriptionExceededUserSpendLimit",
	"SubscriptionUnsupportedLocale",
	"RestrictedUserAge",
	"SubscriptionPurchasePlatformNotSupported",
	"SubscriptionInvalidSaleLocation",
	"SubscriptionNotForSale"
})

return PurchaseError
