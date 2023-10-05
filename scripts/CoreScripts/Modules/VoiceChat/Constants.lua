local VOICE_CONTEXT_TYPE = {
	USER_AGENCY = "useragency",
	BUBBLE_CHAT = "bubblechat",
	IN_GAME_MENU = "ingamemenu",
	MUTE_TOGGLES = "mutetoggles",
	REPORT_MENU = "reportmenu",
	EASIER_UNMUTING = "easierunmuting",
	UNKNOWN = "unknown"
}

local VOICE_GROUP_TYPE = {
	ALL = "all",
	FRIENDS = "friends",
	NONFRIENDS = "nonfriends"
}

return {
    VOICE_CONTEXT_TYPE = VOICE_CONTEXT_TYPE,
    VOICE_GROUP_TYPE = VOICE_GROUP_TYPE
}