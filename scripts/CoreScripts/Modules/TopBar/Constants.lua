local UserInputService = game:GetService("UserInputService")
local Modules = script.Parent.Parent
local TenFootInterface = require(Modules.TenFootInterface)
local ChromeEnabled = require(Modules.Chrome.Enabled)
local isNewTiltIconEnabled = require(Modules.isNewTiltIconEnabled)
local GetFFlagChangeTopbarHeightCalculation = require(script.Parent.Flags.GetFFlagChangeTopbarHeightCalculation)

local DEFAULT_TOPBAR_HEIGHT = 36
local DEFAULT_TOPBAR_BUTTON_HEIGHT = DEFAULT_TOPBAR_HEIGHT - 4

local DEFAULT_CHROME_TOPBAR_HEIGHT = 58
local DEFAULT_CHROME_TOPBAR_BUTTON_HEIGHT = 44
local DEFAULT_CHROME_MOBILE_TOPBAR_HEIGHT = 52

local function getChromeTopbarHeight()
	local platform
	pcall(function()
		platform = UserInputService:GetPlatform()
	end)

	if platform == Enum.Platform.IOS or platform == Enum.Platform.Android then
		return DEFAULT_CHROME_MOBILE_TOPBAR_HEIGHT
	end
	return DEFAULT_CHROME_TOPBAR_HEIGHT
end

local function getTopbarHeight()
	if not isNewTiltIconEnabled() then
		return DEFAULT_TOPBAR_HEIGHT
	end

	if ChromeEnabled() then
		return getChromeTopbarHeight()
	end

	return DEFAULT_TOPBAR_HEIGHT
end

local topbarHeight = if ChromeEnabled() then 48 else 36
local topbarButtonHeight = if ChromeEnabled() then DEFAULT_CHROME_TOPBAR_BUTTON_HEIGHT else DEFAULT_TOPBAR_BUTTON_HEIGHT
local topbarButtonPadding = 2

if GetFFlagChangeTopbarHeightCalculation() then
	topbarHeight = getTopbarHeight()
end

return {
	TopBarHeight = topbarHeight,
	TopBarHeightTenFoot = 72,
	TopBarButtonHeight = topbarButtonHeight,
	TopBarButtonPadding = topbarButtonPadding,
	TopBarTopMargin = topbarHeight - topbarButtonHeight - 2 * topbarButtonPadding,

	MenuIconKeepOutAreaId = 'roblox-menu-icon',
	HealthBarKeepOutAreaId = 'health-bar',
	MoreMenuKeepOutAreaId = 'more-menu',
	ChatIconKeepOutAreaId = 'chat-icon',
	BackIconKeepOutAreaId = 'back-icon',
	BadgeOver13KeepOutAreaId = 'badge-13',
	VoiceBetaBadgeKeepOutAreaId = 'badge-voice-beta',

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
