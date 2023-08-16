local ChromeEnabled = require(script.Parent.Parent.Chrome.Enabled)

return {
	TopBarHeight = if ChromeEnabled() then 48 else 36,
	TopBarHeightTenFoot = 72,

	MenuIconKeepOutAreaId = 'roblox-menu-icon',

	ScreenSideOffset = 16,
	ScreenSideOffsetTenFoot = 48,

	Padding = 12,

	HealthPercentForOverlay = 5 / 100,
	HealthRedColor = Color3.fromRGB(255, 28, 0),
	HealthYellowColor = Color3.fromRGB(250, 235, 0),
	HealthGreenColor = Color3.fromRGB(27, 252, 107),

	InputType = {
		MouseAndKeyBoard = "MouseAndKeyboard",
		Touch = "Touch",
		Gamepad = "Gamepad",
	},
}
