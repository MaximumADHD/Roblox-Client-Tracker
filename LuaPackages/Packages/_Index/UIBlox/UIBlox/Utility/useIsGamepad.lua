--[[
	A hook that returns true if the last input type was a gamepad.
]]

local UserInputService = game:GetService("UserInputService")

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)

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

local function useIsGamepad()
	local isGamepad, setIsGamepad = React.useState(function()
		local lastInputType = UserInputService:GetLastInputType()
		return inputIsGamepadMap[lastInputType] == true
	end)

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputIsGamepad = inputIsGamepadMap[lastInputType]
		if newInputIsGamepad ~= nil then
			setIsGamepad(newInputIsGamepad)
		end
	end)

	useExternalEvent(UserInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	return isGamepad
end

return useIsGamepad
