local InputTypes = {
	MouseAndKeyboard = "MouseAndKeyboard",
	Touch = "Touch",
	Gamepad = "Gamepad",
}

local Constants = {
	InviteStatus = {
		Success = "Success",
		Moderated = "Moderated",
		Failed = "Failed",
		Pending = "Pending",
	},

	InputType = InputTypes,

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
	AnalyticsReportLeft = "ingame_menu_report_left",
	AnalyticsReportSubmittedName = "ingame_menu_report_submitted",
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsExamineAvatarName = "examine_avatar",

	PlayerScriptStatusStrings = {
		Default = "PlayerScript Status: Default",
		Custom = "PlayerScript Status: Custom",
		PossiblyCustom = "PlayerScript Status: Possibly Custom",
		CustomOld = "PlayerScript Status: Custom Old",
	},

	ControllerBarHeight = 72,

	DisplayOrder = {
		-- Fullscreen Title Bar should be on top of Topbar (DisplayOrder = 6)
		FullscreenTitleBar = 7,
		ConfirmationDialog = 8,
		EducationalPopup = 9,
		HeadsetDisconnectedDialog = 100,
		ControllerBar = 9
	},

	ShieldOpenAnimationTweenTime = 0.5,
	ShieldCloseAnimationTweenTime = 0.4,

	Zone = {
		PortalSize = 1,
		ContentOffset = 2, -- PortalSize + 1
	},

	InputTypeMap = {
		[Enum.UserInputType.MouseButton1] = InputTypes.MouseAndKeyboard,
		[Enum.UserInputType.MouseButton2] = InputTypes.MouseAndKeyboard,
		[Enum.UserInputType.MouseButton3] = InputTypes.MouseAndKeyboard,
		[Enum.UserInputType.MouseWheel] = InputTypes.MouseAndKeyboard,
		[Enum.UserInputType.MouseMovement] = InputTypes.MouseAndKeyboard,
		[Enum.UserInputType.Keyboard] = InputTypes.MouseAndKeyboard,

		[Enum.UserInputType.Gamepad1] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad2] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad3] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad4] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad5] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad6] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad7] = InputTypes.Gamepad,
		[Enum.UserInputType.Gamepad8] = InputTypes.Gamepad,

		[Enum.UserInputType.Touch] = InputTypes.Touch,
	}
}

return Constants
