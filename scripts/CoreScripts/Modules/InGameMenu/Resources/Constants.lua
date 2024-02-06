local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus

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
	vrComfortSettingsPageKey = "VRGameSettings",
	LeaveToAppPromptPageKey = "LeaveToAppPrompt",
	LeaveGamePromptPageKey = "LeaveGamePrompt",
	MainPagePageKey = "MainPage",
	InitalPageKey = "InitalPage",
	ReportDialogKey = "ReportDialog",

	AnalyticsTargetName = "client",
	AnalyticsInGameMenuName = "ingame_menu",
	AnalyticsRespawnCharacterName = "respawn_character",
	AnalyticsSettingsChangeName = "change_ingame_settings",
	AnalyticsExplicitSettingsChangeName = "change_explicit_ingame_settings",
	AnalyticsSettingsSafetyBubbleModeChangeName = "change_ingame_settings_safety_bubble_mode",
	AnalyticsSettingsVRComfortSettingChangeName = "change_ingame_settings_vr_comfort_setting",
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
		ScreenshotUnhide = "ScreenshotUnhide",
	},
	AnalyticsMenuCloseName = "menu_close",
	AnalyticsLeaveGameName = "leave_game",
	AnalyticsLeaveToHomeName = "leave_to_home",
	AnalyticsLeaveToHomeSource = "home",
	AnalyticsLeaveGameSource = "leave",
	AnalyticsResumeGameName = "resume",
	AnalyticsResumeShieldSource = "shield",
	AnalyticsResumeButtonSource = "button",
	AnalyticsResumeGamepadSource = "gamepad",
	AnalyticsConfirmedName = "confirmed",
	AnalyticsCancelledName = "cancelled",
	AnalyticsReportLeft = "ingame_menu_report_left",
	AnalyticsReportSubmittedName = "ingame_menu_report_submitted",
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsRequestFriendContext = "PlayersMenu",
	AnalyticsExamineAvatarName = "examine_avatar",

	PlayerScriptStatusStrings = {
		Default = "PlayerScript Status: Default",
		Custom = "PlayerScript Status: Custom",
		PossiblyCustom = "PlayerScript Status: Possibly Custom",
		CustomOld = "PlayerScript Status: Custom Old",
	},

	ControllerBarHeight = 72,

	DisplayOrder = {
		RootMenu = 1,
		BlurredModalPortal = 2,
		-- Fullscreen Title Bar should be on top of Topbar (DisplayOrder = 6)
		FullscreenTitleBar = 7,
		ConfirmationDialog = 8,
		EducationalPopup = 9,
		HeadsetDisconnectedDialog = 100,
		ControllerBar = 9,
	},

	ShieldOpenAnimationTweenTime = 0.5,
	ShieldCloseAnimationTweenTime = 0.4,
	ShieldOpenFadeTime2 = 0.25,
	ShieldCloseFadeTime2 = 0.15,
	ShieldExtraFadeTime = 0.05,

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
	},

	FramerateCaps = {
		30,
		60,
		144,
		240, -- Anything higher than this will cause weird issues with physics events, as the physics engine runs at 240Hz (CREATORBUG-5874)
	},

	OnSurveyEventDescriptor = {
		mid = MessageBus.getMessageId("Game", "openSurvey"),
		validateParams = t.strictInterface({
			eventType = t.string,
			userId = t.optional(t.string),
			customProps = t.optional(t.table),
		}),
	},
	SurveyEventType =  "leaveButtonClick",
	ChromeSeenCountKey = "ChromeSeenCount"
}

return Constants
