local InputTypeConstants = require(script.Parent.InputTypeConstants)

local InputTypeMap = {
	[Enum.UserInputType.MouseButton1] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.MouseButton2] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.MouseButton3] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.MouseWheel] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.MouseMovement] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.Keyboard] = InputTypeConstants.MouseAndKeyboard,
	[Enum.UserInputType.TextInput] = InputTypeConstants.MouseAndKeyboard,

	[Enum.UserInputType.Gamepad1] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad2] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad3] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad4] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad5] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad6] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad7] = InputTypeConstants.Gamepad,
	[Enum.UserInputType.Gamepad8] = InputTypeConstants.Gamepad,

	[Enum.UserInputType.Touch] = InputTypeConstants.Touch,

	[Enum.UserInputType.None] = InputTypeConstants.None,
}

return InputTypeMap
