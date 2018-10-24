--[[
	Enumeration of all possible error states
]]
local createEnum = require(script.Parent.createEnum)

local PurchaseError = createEnum("PurchaseError", {
	-- Pre-purchase network failures
	"CannotGetBalance",
	"CannotGetItemPrice",

	-- Item unvailable
	"NotForSale",
	"AlreadyOwn",
	"Under13",
	"Limited",
	"Guest",
	"ThirdPartyDisabled",
	"NotEnoughRobux",
	"NotEnoughRobuxXbox",

	-- Upsell
	"BuildersClubLevelTooLow",

	-- Network-reported failures
	"UnknownFailure",
	"UnknownFailureNoItemName",
	"PurchaseDisabled",
	"InvalidFunds",
	"BuildersClubUpsellFailure",
})

return PurchaseError