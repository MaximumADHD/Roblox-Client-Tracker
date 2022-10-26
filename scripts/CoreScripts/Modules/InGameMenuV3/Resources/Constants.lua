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
	PlayersPageKey = "Players",
	GameSettingsPageKey = "GameSettings",
	InspectAndBuyPageKey = "InspectAndBuy",
	InspectAndBuyAssetDetailsPageKey = "InspectAndBuyAssetDetails",
	InviteFriendsPageKey = "InviteFriends",
	ControlsPageKey = "Controls",

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
		ScreenshotToast = "ScreenshotToast",

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
	AnalyticsRequestFriendName = "RequestFriendship",
	AnalyticsRevokeFriendshipName = "RevokeFriendship",
	AnalyticsUnfriendPlayer = "unfriend_player",
	AnalyticsAcceptFriendshipRequest = "accept_friendship_request",
	AnalyticsRejectFriendshipRequest = "reject_friendship_request",
	AnalyticsExamineAvatarName = "examine_avatar",
	AnalyticsReportAbuse = "report_abuse_dialog_opened",
	AnalyticsUnmutePlayer = "unmute_player",
	AnalyticsMutePlayer = "mute_player",
	AnalyticsUnmuteSelf = "unmute_self",
	AnalyticsMuteSelf = "mute_self",
	AnalyticsUnmuteAll = "unmute_all",
	AnalyticsMuteAll = "mute_all",
	AnalyticsUnblockPlayer = "unblock_player",
	AnalyticsBlockPlayer = "block_player",
	AnalyticsInvitePlayerToPlaceId = "invite_player_to_place_id",
	AnalyticsRecord = "record",
	AnalyticsScreenshot = "screenshot",
	AnalyticsFullscreen = "fullscreen",
	AnalyticsFollowExperience = "follow_experience",
	AnalyticsUnfollowExperience = "unfollow_experience",
	AnalyticsFavoritingExperience = "favoriting_experience",
	AnalyticsUnfavoritingExperience = "unfavoriting_experience",
	AnalyticsPlayerCellSource = "player_cell",
	AnalyticsPlayerContextMenuSource = "player_context_menu",
	AnalyticsQuickActionsMenuSource = "quick_actions_menu",
	AnalyticsExperiencePageSource = "experience_page",
	AnalyticsInviteFriendsListSource = "invite_friends_list",
	AnalyticsLeavePromptSource = "leave_prompt",
	AnalyticsExperienceMenuTest = "experience_menu_test",
	AnalyticsExperienceMenuTestCsatQualificationField = "csat_qualification_field",
	AnalyticsInvalidUTF8 = "invalid_utf8",
	ShareLinksAnalyticsName = "shareLinks",
	ShareLinksAnalyticsLinkGeneratedName = "linkGenerated",
	ShareLinksAnalyticsButtonClickName = "buttonClick",
	ShareLinksAnalyticsExternalContentSharingInviteFriendsContextName = "V3MenuInviteFriends",
	ShareLinksAnalyticsExternalContentSharingGameDetailsContextName = "V3MenuGameDetails",

	-- counters
	AnalyticsCounterRequestFriendship = "PlayersMenu-RequestFriendship",

	PlayerScriptStatusStrings = {
		Default = "PlayerScript Status: Default",
		Custom = "PlayerScript Status: Custom",
		PossiblyCustom = "PlayerScript Status: Possibly Custom",
		CustomOld = "PlayerScript Status: Custom Old",
	},

	ControllerBarHeight = 72,
	PageWidth = 320,
	SideNavigationWidth = 64,

	MenuOpenTweenTime = 0.192,

	LeaveButtonContainerHeight = 61,
	LeaveButtonTweenTime = 0.208,

	DisplayOrder = {
		-- Fullscreen Title Bar should be on top of Topbar (DisplayOrder = 6)
		FullscreenTitleBar = 7,
		ConfirmationDialog = 8,
		RobloxGui = 8, -- default 0, increase to 8 when open InGameMenu
		EducationalPopup = 9,
		HeadsetDisconnectedDialog = 100,
		ControllerBar = 9,
		Tooltips = 10,
	},

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
}

return Constants
