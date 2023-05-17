--!strict
local UserInputService = game:GetService("UserInputService")

local Packages = script.Parent.Parent
local React = require(Packages.React)

export type InputMethod = "Keyboard" | "Mouse" | "Gamepad" | "Touch" | "None"

local INPUT_TYPE_TO_DEVICE: { [Enum.UserInputType]: InputMethod? } = {
	[Enum.UserInputType.MouseButton1] = "Mouse",
	[Enum.UserInputType.MouseButton2] = "Mouse",
	[Enum.UserInputType.MouseButton3] = "Mouse",
	[Enum.UserInputType.MouseWheel] = "Mouse",
	[Enum.UserInputType.MouseMovement] = "Mouse",

	[Enum.UserInputType.Touch] = "Touch",
	[Enum.UserInputType.Keyboard] = "Keyboard",

	-- These types shouldn't trigger lastInputMethod changes since they aren't
	-- directly related to input method, or are used largely in tandem with
	-- other primary input methods
	[Enum.UserInputType.Focus] = nil,
	[Enum.UserInputType.Accelerometer] = nil,
	[Enum.UserInputType.Gyro] = nil,

	[Enum.UserInputType.Gamepad1] = "Gamepad",
	[Enum.UserInputType.Gamepad2] = "Gamepad",
	[Enum.UserInputType.Gamepad3] = "Gamepad",
	[Enum.UserInputType.Gamepad4] = "Gamepad",
	[Enum.UserInputType.Gamepad5] = "Gamepad",
	[Enum.UserInputType.Gamepad6] = "Gamepad",
	[Enum.UserInputType.Gamepad7] = "Gamepad",
	[Enum.UserInputType.Gamepad8] = "Gamepad",

	-- Characters input through TextInput or IME probably shouldn't the
	-- lastInputType; the user may be inputting text via a virtual keyboard
	[Enum.UserInputType.TextInput] = nil,
	[Enum.UserInputType.InputMethod] = nil,
	-- Don't change lastInputType when we get unknown inputs
	[Enum.UserInputType.None] = nil,
}

local function useLastInputMethod(): InputMethod
	local initialValue = INPUT_TYPE_TO_DEVICE[UserInputService:GetLastInputType()] or "None"
	local lastInputMethod, setLastInputMethod = React.useState(initialValue)
	React.useEffect(function()
		local connection = UserInputService.LastInputTypeChanged:Connect(function(inputType)
			local inputDevice = INPUT_TYPE_TO_DEVICE[inputType]
			if inputDevice then
				setLastInputMethod(inputDevice)
			end
		end)

		return function()
			connection:Disconnect()
		end
	end, {})

	return lastInputMethod :: InputMethod
end

return useLastInputMethod
