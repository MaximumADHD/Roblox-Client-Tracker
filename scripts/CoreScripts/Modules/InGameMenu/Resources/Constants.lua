local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagInGameMenuOpenOnHover = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuOpenOnHover)

local defaultPageKey
if GetFFlagInGameMenuOpenOnHover() then
	defaultPageKey = "InitalPage"
else
	defaultPageKey = "MainPage"
end


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

	defaultPageKey = defaultPageKey,
	advancedSettingsPageKey = "AdvancedGameSettings",
	LeaveToAppPromptPageKey = "LeaveToAppPrompt",
	LeaveGamePromptPageKey = "LeaveGamePrompt",
	MainPagePageKey = "MainPage",
	InitalPageKey = "InitalPage",

	AnalyticsTargetName = "client",
	AnalyticsInGameMenuName = "ingame_menu",
	AnalyticsRespawnCharacterName = "respawn_character",
	AnalyticsSettingsChangeName = "change_ingame_settings",
	AnalyticsMenuActionName = "ingame_menu_action",
	AnalyticsMenuOpenName = "menu_open",
	AnalyticsMenuCloseName = "menu_close",
	AnalyticsLeaveGameName = "leave_game",
	AnalyticsLeaveToHomeName = "leave_to_home",
	AnalyticsConfirmedName = "confirmed",
	AnalyticsCancelledName = "cancelled",
	AnalyticsReportSubmittedName = "ingame_menu_report_submitted",
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsExamineAvatarName = "examine_avatar"
}
