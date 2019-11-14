--[[
	Enumerated state of the purchase prompt
]]
local createEnum = require(script.Parent.createEnum)

local PromptState = createEnum("PromptState", {
	"Hidden",
	"Hiding",

	"RobuxUpsell",
	"PromptPurchase",

	"PurchaseInProgress",
	"UpsellInProgress",

	"PurchaseComplete",
	"CannotPurchase",
	"Error",
})

return PromptState