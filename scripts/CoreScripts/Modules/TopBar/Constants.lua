local CorePackages = game:GetService("CorePackages")

local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Display = require(CorePackages.Workspace.Packages.Display)
local getUIScale = Display.GetDisplayStore(false).getUIScale

local Modules = script.Parent.Parent
local TenFootInterface = require(Modules.TenFootInterface)
local ChromeEnabled = require(Modules.Chrome.Enabled)
local ChromeShared = Modules.Chrome.ChromeShared
local isNewTiltIconEnabled = require(Modules.isNewTiltIconEnabled)
local FFlagTopBarRefactor = require(script.Parent.Flags.FFlagTopBarRefactor)

local StyleTokens = if ChromeEnabled()
	then require(ChromeShared.Utility.GetStyleTokens)()
	else nil :: never

local function withUIScale(value: number)
	local scale = if TenFootInterface:IsEnabled() then 1.5 else 1 -- APPEXP-2377: Replace with Scale token
	return if ChromeEnabled() then scale * value else value
end

local DEFAULT_TOPBAR_HEIGHT = if ChromeEnabled() then StyleTokens.Size.Size_900 else 36
local DEFAULT_TOPBAR_BUTTON_HEIGHT = DEFAULT_TOPBAR_HEIGHT - 4

local DEFAULT_CHROME_TOPBAR_HEIGHT = if ChromeEnabled() then withUIScale(58) else 58
local DEFAULT_CHROME_TOPBAR_BUTTON_HEIGHT = if ChromeEnabled() then StyleTokens.Size.Size_1100 else 44
local function getTopbarHeight()
	if not isNewTiltIconEnabled() then
		return DEFAULT_TOPBAR_HEIGHT
	end

	if ChromeEnabled() then
		return DEFAULT_CHROME_TOPBAR_HEIGHT
	end

	return DEFAULT_TOPBAR_HEIGHT
end

local topbarHeight = getTopbarHeight()
local topbarButtonHeight = if ChromeEnabled() then DEFAULT_CHROME_TOPBAR_BUTTON_HEIGHT else DEFAULT_TOPBAR_BUTTON_HEIGHT
local topbarButtonPadding = if ChromeEnabled() then StyleTokens.Padding.XXSmall else 2
local screenSideOffset = if ChromeEnabled() then StyleTokens.Gap.Large else 16
local topBarPadding = if ChromeEnabled() then StyleTokens.Padding.Small else 12


local GAMEPAD_INPUT_TYPES = {
	Enum.UserInputType.Gamepad1,
	Enum.UserInputType.Gamepad2,
	Enum.UserInputType.Gamepad3,
	Enum.UserInputType.Gamepad4,
	Enum.UserInputType.Gamepad5,
	Enum.UserInputType.Gamepad6,
	Enum.UserInputType.Gamepad7,
	Enum.UserInputType.Gamepad8,
}

return {
	ApplyDisplayScale = function(value: number)
		return getUIScale(false) * value 
	end,
	useDisplayScaleState = function(value: number)
		return SignalsReact.useSignalState(Signals.createComputed(function(scope) 
				local UiScale = Display.GetDisplayStore(scope).getUIScale
				return value * UiScale(scope)
			end)) 
	end,
	TopBarHeight = topbarHeight,
	TopBarHeightTenFoot = if ChromeEnabled() then nil else 72,
	TopBarButtonHeight = topbarButtonHeight,
	TopBarButtonPadding = topbarButtonPadding,
	TopBarTopMargin = if FFlagTopBarRefactor then StyleTokens.Gap.Medium else topbarHeight - topbarButtonHeight - 2 * topbarButtonPadding,

	LegacyCloseMenuIconSize = if isNewTiltIconEnabled() then (topbarHeight - StyleTokens.Size.Size_100) else 30,
	MENU_ICON_SIZE = if ChromeEnabled() then StyleTokens.Size.Size_600 else 24,
	MenuIconOpenScale = 1.25,

	UnibarFrame = {
		PaddingTop = if ChromeEnabled() then StyleTokens.Padding.XXSmall else 2,
		PaddingBottom = if ChromeEnabled() then StyleTokens.Padding.XXSmall else 2,
		PaddingLeft = screenSideOffset + topBarPadding + topbarHeight + if ChromeEnabled() then StyleTokens.Padding.XXSmall else 2,
		ExtendedSize = topbarHeight- if ChromeEnabled() then StyleTokens.Size.Size_100 else 4,
	},

	MenuIconKeepOutAreaId = "roblox-menu-icon",
	HealthBarKeepOutAreaId = "health-bar",
	MoreMenuKeepOutAreaId = "more-menu",
	ChatIconKeepOutAreaId = "chat-icon",
	BackIconKeepOutAreaId = "back-icon",
	VoiceBetaBadgeKeepOutAreaId = "badge-voice-beta",

	TopBarKeepOutAreaId = "roblox-topbar",

	ScreenSideOffset = screenSideOffset,
	ScreenSideOffsetTenFoot = if ChromeEnabled() then nil else 48,

	TopBarPadding = topBarPadding,

	InitialHealth = 100,
	HealthPercentForOverlay = 5 / 100,
	HealthRedColor = Color3.fromRGB(255, 28, 0),
	HealthYellowColor = Color3.fromRGB(250, 235, 0),
	HealthGreenColor = Color3.fromRGB(27, 252, 107),

	InputType = {
		MouseAndKeyBoard = "MouseAndKeyboard",
		Touch = "Touch",
		Gamepad = "Gamepad",
	},

	GamepadInputTypes = GAMEPAD_INPUT_TYPES,

	Analytics = {
		ShowGamepadNavigationDialog = "show-gamepad-navigation-dialog",
		DismissGamepadNavigationDialog = "dismiss-gamepad-navigation-dialog",
		EventNameTopBarButtonActivated = "topbar-button-activated",
		ChatButtonName = "chat",
		MoreMenuButtonName = "more-menu",
		InventoryButtonName = "inventory",
		LeaderboardButtonName = "leaderboard",
		EmotesButtonName = "emotes",
		StatusActive = "active",
		StatusInactive = "inactive",
	},

	LocalizedKeys = {
		UILessTooltipTitle = "CoreScripts.TopBar.Label.UILessHintTitle",
		UILessTooltipDescription = "CoreScripts.TopBar.Label.UILessHintDescription",
	},
}
