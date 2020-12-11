--[[
	Enumerated state of the whether the buttons are activated or not
	- Used to prevent futher action during network calls
]]
local createEnum = require(script.Parent.createEnum)

local ButtonState = createEnum("ButtonState", {
	"Enabled",
	"Disabled"
})

return ButtonState
