local getFFlagInGameMenuSinglePaneDesign = require(script.Parent.Parent.Flags.GetFFlagInGameMenuSinglePaneDesign)
local fflagInGameMenuSinglePaneDesign = getFFlagInGameMenuSinglePaneDesign()
return {
	InviteStatus = {
		Success = "Success",
		Moderated = "Moderated",
		Failed = "Failed",
		Pending = "Pending",
	},

	InputType = {
		MouseAndKeyBoard = "MouseAndKeyboard",
		Touch = "Touch",
		Gamepad = "Gamepad",
	},

	FallbackLocaleId = "UNKNOWN_FALLBACK",

	defaultPageKey = fflagInGameMenuSinglePaneDesign and "MainPage" or "Players",
	advancedSettingsPageKey = "AdvancedGameSettings",

	AnalyticsTargetName = "client",
	AnalyticsInGameMenuName = "ingame_menu",
	AnalyticsRespawnCharacterName = "respawn_character",
	AnalyticsSettingsChangeName = "change_ingame_settings",
	AnalyticsMenuActionName = "ingame_menu_action",
	AnalyticsMenuOpenName = "menu_open",
	AnalyticsMenuCloseName = "menu_close",
	AnalyticsLeaveGameName = "leave_game",
	AnalyticsConfirmedName = "confirmed",
	AnalyticsCancelledName = "cancelled",
	AnalyticsReportSubmittedName = "ingame_menu_report_submitted",
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsExamineAvatarName = "examine_avatar"
}