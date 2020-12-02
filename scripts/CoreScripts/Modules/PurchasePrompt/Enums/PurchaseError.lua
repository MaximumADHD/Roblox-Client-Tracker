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
	"AlreadyOwn",
	"PremiumOnly",
	"Under13",
	"Limited",
	"Guest",
	"ThirdPartyDisabled",
	"NotEnoughRobux",
	"NotEnoughRobuxXbox",
	"NotEnoughRobuxNoUpsell",

	-- Network-reported failures
	"UnknownFailure",
	"UnknownFailureNoItemName",
	"PurchaseDisabled",
	"InvalidFunds",
})

return PurchaseError