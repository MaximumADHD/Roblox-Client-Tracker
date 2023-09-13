--[[
	Enumerated state of the purchase prompt
]]
local createEnum = require(script.Parent.createEnum)

local PromptState = createEnum("PromptState", {
	"None",
	"PremiumUpsell",
	"RobuxUpsell",
	"LargeRobuxUpsell",
	"PromptPurchase",
	"PromptSubscriptionPurchase",
	"PurchaseInProgress",
	"PollingBalance",
	"UpsellInProgress",
	"U13PaymentModal",
	"U13MonthlyThreshold1Modal",
	"U13MonthlyThreshold2Modal",
	"RequireEmailVerification",
	"ParentalConsentWarningPaymentModal13To17",
	"PurchaseComplete",
	"Error",
})

return PromptState
