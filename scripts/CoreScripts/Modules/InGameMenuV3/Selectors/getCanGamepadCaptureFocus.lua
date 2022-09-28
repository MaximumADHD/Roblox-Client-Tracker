--[[
	Determine if Gamepad can capture focus while within
	the InspectAndBuy page of the InGameMenu based on the page,
	current zone, and input type
]]
local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)

local function getCanGamepadCaptureFocus(state, menuPage)
	return state.menuPage == menuPage
		and state.displayOptions.inputType == Constants.InputType.Gamepad
		and state.currentZone == 1
end

return getCanGamepadCaptureFocus