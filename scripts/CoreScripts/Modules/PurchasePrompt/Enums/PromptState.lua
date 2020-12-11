--[[
	Enumerated state of the purchase prompt
]]
local createEnum = require(script.Parent.createEnum)

local PromptState = createEnum("PromptState", {
	"None",
	"PremiumUpsell",
	"RobuxUpsell",
	"PromptPurchase",
	"PurchaseInProgress",
	"UpsellInProgress",
	"AdultConfirmation",
	"U13PaymentModal",
	"U13MonthlyThreshold1Modal",
	"RequireEmailVerification",
	"U13MonthlyThreshold2Modal",
	"PurchaseComplete",
	"Error",
})

return PromptState
