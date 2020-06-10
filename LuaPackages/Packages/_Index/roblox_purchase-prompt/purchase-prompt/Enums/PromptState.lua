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
	"PurchaseComplete",
	"Error",
})

return PromptState
