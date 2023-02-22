export type KeyboardBindings = {
	[Enum.KeyCode]: { Enum.KeyCode },
}

return {
	Enabled = true,

	--[[
		Map of gamepad keycodes to keyboard keycodes we would like
		to accept as equivalent (for debug purposes only).

		Example usage:

		RoactGamepad.Config.DebugKeyboardBindings = {
			[Enum.KeyCode.ButtonA] = { Enum.KeyCode.A, Enum.KeyCode.Space, Enum.KeyCode.Return },
			[Enum.KeyCode.ButtonB] = { Enum.KeyCode.B, Enum.KeyCode.Backspace },
		}
	]]
	DebugKeyboardBindings = nil :: KeyboardBindings?,
}
