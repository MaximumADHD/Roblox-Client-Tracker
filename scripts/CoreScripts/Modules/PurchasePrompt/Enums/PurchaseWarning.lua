--[[
	Enumeration of possible responses from purchase warning end point
]]
local createEnum = require(script.Parent.createEnum)

local PurchaseWarning = createEnum("PurchaseWarning", {
	"NoAction",
	"U13PaymentModal",
	"U13MonthlyThreshold1Modal",
	"RequireEmailVerification",
	"U13MonthlyThreshold2Modal",
})

return PurchaseWarning
