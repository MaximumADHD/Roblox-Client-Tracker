--[[
	A hook that returns true if the last input type was mouse or keyboard.
]]

local UserInputService = game:GetService("UserInputService")

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)

--[[
	A map of input type to whether or not it is a mouse or keyboard input.

	Types that are not included in this table (like Accelerometer and Gyro), will be
	ignored. They will not affect the current state of `isMouseAndKeyboard`.
]]
local inputIsMouseAndKeyboardMap = {
	-- Mouse and keyboard input
	[Enum.UserInputType.MouseButton1] = true,
	[Enum.UserInputType.MouseButton2] = true,
	[Enum.UserInputType.MouseButton3] = true,
	[Enum.UserInputType.MouseWheel] = true,
	[Enum.UserInputType.MouseMovement] = true,
	[Enum.UserInputType.Keyboard] = true,
	[Enum.UserInputType.TextInput] = true,

	-- Gamepad input
	[Enum.UserInputType.Gamepad1] = false,
	[Enum.UserInputType.Gamepad2] = false,
	[Enum.UserInputType.Gamepad3] = false,
	[Enum.UserInputType.Gamepad4] = false,
	[Enum.UserInputType.Gamepad5] = false,
	[Enum.UserInputType.Gamepad6] = false,
	[Enum.UserInputType.Gamepad7] = false,
	[Enum.UserInputType.Gamepad8] = false,

	-- Touch input
	[Enum.UserInputType.Touch] = false,

	-- All other input types will be ignored (will not change the `isMouseAndKeyboard` state)
}

local function useIsMouseAndKeyboard()
	local isMouseAndKeyboard, setMouseAndKeyboard = React.useState(function()
		local lastInputType = UserInputService:GetLastInputType()
		return inputIsMouseAndKeyboardMap[lastInputType] == true
	end)

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputIsMouseAndKeyboard = inputIsMouseAndKeyboardMap[lastInputType]
		if newInputIsMouseAndKeyboard ~= nil then
			setMouseAndKeyboard(newInputIsMouseAndKeyboard)
		end
	end)

	useExternalEvent(UserInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	return isMouseAndKeyboard
end

return useIsMouseAndKeyboard
