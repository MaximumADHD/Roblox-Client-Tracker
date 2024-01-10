--[[
	A hook that returns true if the last input type was a gamepad.
]]

local Utility = script.Parent
local UIBlox = Utility.Parent

local InputType = require(UIBlox.Enums.InputType)
local useInputType = require(Utility.useInputType)

local function useIsMouseAndKeyboard()
	return useInputType() == InputType.MouseAndKeyboard
end

return useIsMouseAndKeyboard
