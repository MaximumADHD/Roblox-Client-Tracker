local basePath = "rbxasset://textures/ui/Controls/DesignSystem/"

local DIRECTIONAL_GAMEPAD_ICONS = {
	[Enum.KeyCode.Thumbstick1] = {
		directional = basePath .. "Thumbstick1Directional.png",
		horizontal = basePath .. "Thumbstick1Horizontal.png",
		vertical = basePath .. "Thumbstick1Vertical.png",
	},
	[Enum.KeyCode.Thumbstick2] = {
		directional = basePath .. "Thumbstick2Directional.png",
		horizontal = basePath .. "Thumbstick2Horizontal.png",
		vertical = basePath .. "Thumbstick2Vertical.png",
	},
}

local GAMEPAD_ICONS = {
	[Enum.KeyCode.ButtonX] = basePath .. "ButtonX.png",
	[Enum.KeyCode.ButtonY] = basePath .. "ButtonY.png",
	[Enum.KeyCode.ButtonA] = basePath .. "ButtonA.png",
	[Enum.KeyCode.ButtonB] = basePath .. "ButtonB.png",

	[Enum.KeyCode.DPadLeft] = basePath .. "DPadLeft.png",
	[Enum.KeyCode.DPadRight] = basePath .. "DPadRight.png",
	[Enum.KeyCode.DPadUp] = basePath .. "DPadUp.png",
	[Enum.KeyCode.DPadDown] = basePath .. "DPadDown.png",

	[Enum.KeyCode.ButtonStart] = basePath .. "ButtonStart.png",
	[Enum.KeyCode.ButtonSelect] = basePath .. "ButtonSelect.png",

	[Enum.KeyCode.ButtonR1] = basePath .. "ButtonR1.png",
	[Enum.KeyCode.ButtonL1] = basePath .. "ButtonL1.png",
	[Enum.KeyCode.ButtonR2] = basePath .. "ButtonR2.png",
	[Enum.KeyCode.ButtonL2] = basePath .. "ButtonL2.png",
	[Enum.KeyCode.ButtonR3] = basePath .. "ButtonR3.png",
	[Enum.KeyCode.ButtonL3] = basePath .. "ButtonL3.png",

	-- Thumbstick defaults
	[Enum.KeyCode.Thumbstick1] = DIRECTIONAL_GAMEPAD_ICONS[Enum.KeyCode.Thumbstick1].directional,
	[Enum.KeyCode.Thumbstick2] = DIRECTIONAL_GAMEPAD_ICONS[Enum.KeyCode.Thumbstick2].directional,
}

return {
	DIRECTIONAL_GAMEPAD_ICONS = DIRECTIONAL_GAMEPAD_ICONS,
	GAMEPAD_ICONS = GAMEPAD_ICONS,
}
