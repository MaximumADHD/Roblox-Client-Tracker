local Foundation = script:FindFirstAncestor("Foundation")

local InputMode = require(Foundation.Utility.Input.InputMode)
type InputMode = InputMode.InputMode

local UserInputTypeMap: { [Enum.UserInputType]: InputMode } = {
	[Enum.UserInputType.MouseButton1] = InputMode.Pointer,
	[Enum.UserInputType.MouseButton2] = InputMode.Pointer,
	[Enum.UserInputType.MouseButton3] = InputMode.Pointer,
	[Enum.UserInputType.MouseMovement] = InputMode.Pointer,
	[Enum.UserInputType.MouseWheel] = InputMode.Pointer,
	[Enum.UserInputType.None] = InputMode.Pointer,
	[Enum.UserInputType.TextInput] = InputMode.Pointer,

	[Enum.UserInputType.Gamepad1] = InputMode.Directional,
	[Enum.UserInputType.Gamepad2] = InputMode.Directional,
	[Enum.UserInputType.Gamepad3] = InputMode.Directional,
	[Enum.UserInputType.Gamepad4] = InputMode.Directional,
	[Enum.UserInputType.Gamepad5] = InputMode.Directional,
	[Enum.UserInputType.Gamepad6] = InputMode.Directional,
	[Enum.UserInputType.Gamepad7] = InputMode.Directional,
	[Enum.UserInputType.Gamepad8] = InputMode.Directional,
	[Enum.UserInputType.Keyboard] = InputMode.Directional,

	[Enum.UserInputType.Touch] = InputMode.Touch,
}

local function getInputMode(inputType: Enum.UserInputType): InputMode?
	return UserInputTypeMap[inputType]
end

return getInputMode
