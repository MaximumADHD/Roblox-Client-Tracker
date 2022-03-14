local InGameMenu = script.Parent.Parent
local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local Constants = {
	InviteStatus = {
		Success = "Success",
		Moderated = "Moderated",
		Failed = "Failed",
		Pending = "Pending",
	},

	InputType = {
		MouseAndKeyboard = "MouseAndKeyboard",
		Touch = "Touch",
		Gamepad = "Gamepad",
	},

	FallbackLocaleId = "UNKNOWN_FALLBACK",

	defaultPageKey = "InitalPage",
	advancedSettingsPageKey = "AdvancedGameSettings",
	LeaveToAppPromptPageKey = "LeaveToAppPrompt",
	LeaveGamePromptPageKey = "LeaveGamePrompt",
	MainPagePageKey = "MainPage",
	InitalPageKey = "InitalPage",
	ReportDialogKey = "ReportDialog",

	AnalyticsTargetName = "client",
	AnalyticsInGameMenuName = "ingame_menu",
	AnalyticsRespawnCharacterName = "respawn_character",
	AnalyticsSettingsChangeName = "change_ingame_settings",
	AnalyticsFullscreenModeName = "FullscreenMode",
	AnalyticsMenuActionName = "ingame_menu_action",
	AnalyticsMenuOpenName = "menu_open",
	AnalyticsMenuOpenTypes = {
		Keyboard = "KeyboardShortcut",
		TopbarButton = "TopbarButton",
		ReportAbuseTriggered = "ReportAbuse",
		PlayersTriggered = "Players",
		SettingsTriggered = "Settings",
		EducationalMenuTriggered = "EducationalMenu",

		-- Legacy menu open types. These occur when the old system menu is
		-- opened; the new menu won't trigger it.
		GamepadLeaveGame = "GamepadLeaveGame",
		GamepadResetCharacter = "GamepadResetCharacter",
	},
	AnalyticsMenuCloseName = "menu_close",
	AnalyticsLeaveGameName = "leave_game",
	AnalyticsLeaveToHomeName = "leave_to_home",
	AnalyticsConfirmedName = "confirmed",
	AnalyticsCancelledName = "cancelled",
	AnalyticsReportSubmittedName = "ingame_menu_report_submitted",
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsExamineAvatarName = "examine_avatar",

	ControllerBarHeight = 72,

	DisplayOrder = {
		-- Fullscreen Title Bar should be on top of Topbar (DisplayOrder = 6)
		FullscreenTitleBar = 7,
		ConfirmationDialog = 8,
		EducationalPopup = 9,
		HeadsetDisconnectedDialog = 100,
		ControllerBar = 9
	},

	Zone = {
		PortalSize = 1,
		ContentOffset = 2, -- PortalSize + 1
	},
}

if GetFFlagInGameMenuControllerDevelopmentOnly() then
	Constants.InputTypeMap = {
		[Enum.UserInputType.MouseButton1] = Constants.InputType.MouseAndKeyboard,
		[Enum.UserInputType.MouseButton2] = Constants.InputType.MouseAndKeyboard,
		[Enum.UserInputType.MouseButton3] = Constants.InputType.MouseAndKeyboard,
		[Enum.UserInputType.MouseWheel] = Constants.InputType.MouseAndKeyboard,
		[Enum.UserInputType.MouseMovement] = Constants.InputType.MouseAndKeyboard,
		[Enum.UserInputType.Keyboard] = Constants.InputType.MouseAndKeyboard,

		[Enum.UserInputType.Gamepad1] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad2] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad3] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad4] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad5] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad6] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad7] = Constants.InputType.Gamepad,
		[Enum.UserInputType.Gamepad8] = Constants.InputType.Gamepad,

		[Enum.UserInputType.Touch] = Constants.InputType.Touch,
	}
end

return Constants
