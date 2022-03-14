--[[
	Enumeration of possible payment platforms
]]
local createEnum = require(script.Parent.createEnum)

local PaymentPlatform = createEnum("PaymentPlatform", {
	"None",
	"Apple",
	"Google",
	"Amazon",
	"Xbox",
	"UWP",
	"Midas",
	"Web",
})

return PaymentPlatform
