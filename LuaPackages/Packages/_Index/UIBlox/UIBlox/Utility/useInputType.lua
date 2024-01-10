--[[
	A hook that returns the last input type (mapped to Enums.InputType).
]]

local UserInputService = game:GetService("UserInputService")
local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local InputType = require(UIBloxRoot.Enums.InputType)
local React = require(Packages.React)
local useExternalEvent = require(script.Parent.useExternalEvent)

--[[
	A map of input type to InputTypeEnums

	Types that are not included in this table (like Accelerometer and Gyro), will be
	ignored. They will not affect the current state of `lastInputType`.
]]
local inputTypeMap: { [Enum.UserInputType]: InputType.InputType } = {
	[Enum.UserInputType.Gamepad1] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad2] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad3] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad4] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad5] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad6] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad7] = InputType.Gamepad,
	[Enum.UserInputType.Gamepad8] = InputType.Gamepad,

	-- Mouse and keyboard input
	[Enum.UserInputType.MouseButton1] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.MouseButton2] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.MouseButton3] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.MouseWheel] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.MouseMovement] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.Keyboard] = InputType.MouseAndKeyboard,
	[Enum.UserInputType.TextInput] = InputType.MouseAndKeyboard,

	-- Touch input
	[Enum.UserInputType.Touch] = InputType.Touch,

	-- All other input types will be ignored (will not change the `lastInputType` state)
}

local function useInputType(userInputServiceForTesting: any): InputType.InputType?
	local userInputService = userInputServiceForTesting or UserInputService

	local function getLastInputType(): InputType.InputType?
		local lastInputType = userInputService:GetLastInputType()
		return inputTypeMap[lastInputType]
	end

	local inputType: InputType.InputType?, setInputType: (InputType.InputType?) -> () =
		React.useState(getLastInputType())

	local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
		local newInputType: InputType.InputType? = inputTypeMap[lastInputType]
		if newInputType ~= nil then
			setInputType(newInputType)
		end
	end)

	useExternalEvent(userInputService.LastInputTypeChanged, lastInputTypeChangedCallback)

	-- Set initial input type state via effect, to account for possibility that it changed
	-- between the initial render and the LastInputTypeChanged connection.
	React.useEffect(function()
		setInputType(getLastInputType())
	end, {})

	return inputType
end

return useInputType
