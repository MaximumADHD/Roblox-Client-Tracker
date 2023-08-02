local useLastInputMethod = require(script.Parent.useLastInputMethod)

type InputMethod = useLastInputMethod.InputMethod
export type InputMode = "Focus" | "Cursor" | "None"

local INPUT_DEVICE_TO_MODE: { [InputMethod]: InputMode } = {
	Keyboard = "Focus",
	Gamepad = "Focus",
	Mouse = "Cursor",
	Touch = "Cursor",
	None = "None",
}

return function(): InputMode
	local lastInputMethod: InputMethod = useLastInputMethod()
	local lastInputMode = INPUT_DEVICE_TO_MODE[lastInputMethod]
	return lastInputMode
end
