--[[
	Maps a UserInputType into one of the input groups defined
	in InputTypeConstants
]]
local Packages = script.Parent.Parent
local InputTypeConstants = require(script.Parent.InputTypeConstants)
local InputTypeMap = require(script.Parent.InputTypeMap)

local getFFlagDebugLuaAppAlwaysUseGamepad = require(Packages.SharedFlags).getFFlagDebugLuaAppAlwaysUseGamepad

local function getInputGroup(inputType: Enum.UserInputType)
	if getFFlagDebugLuaAppAlwaysUseGamepad() then
		return InputTypeConstants.Gamepad
	end
	return InputTypeMap[inputType] or InputTypeConstants.None
end

return getInputGroup
