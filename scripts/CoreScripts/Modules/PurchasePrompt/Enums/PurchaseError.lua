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
	"RestrictedUser",
	"SubscriptionPurchasePlatformNotSupported",
	"SubscriptionInvalidSaleLocation",
	"SubscriptionNotForSale",
	"VpcRequired",
	"ExceedParentalSpendLimit",

	-- Creator Store
	-- TODO(STM-5600): Add more detailed error messages.

	-- Economic Restriction
	"EconomicRestriction",
})

return PurchaseError
