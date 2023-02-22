local Packages = script.Parent.Parent
local getFFlagDebugLuaAppAlwaysUseGamepad = require(Packages.SharedFlags).getFFlagDebugLuaAppAlwaysUseGamepad

--[[
	A map of input type to whether or not it is a gamepad input.

	Types that are not included in this table (like Accelerometer and Gyro), will be
	ignored. They will not affect the current state of `isGamepad`.
]]
local inputIsGamepadMap = {
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,

	-- Mouse and keyboard input
	[Enum.UserInputType.MouseButton1] = false,
	[Enum.UserInputType.MouseButton2] = false,
	[Enum.UserInputType.MouseButton3] = false,
	[Enum.UserInputType.MouseWheel] = false,
	[Enum.UserInputType.MouseMovement] = false,
	[Enum.UserInputType.Keyboard] = false,
	[Enum.UserInputType.TextInput] = false,

	-- Touch input
	[Enum.UserInputType.Touch] = false,

	-- All other input types will be ignored (will not change the `isGamepad` state)
}

local function isGamepadInput(inputType: Enum.UserInputType)
	return getFFlagDebugLuaAppAlwaysUseGamepad() or inputIsGamepadMap[inputType] == true
end

return isGamepadInput
