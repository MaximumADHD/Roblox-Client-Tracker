local VOICE_CONTEXT_TYPE = {
	USER_AGENCY = "useragency",
	BUBBLE_CHAT = "bubblechat",
	IN_GAME_MENU = "ingamemenu",
	MUTE_TOGGLES = "mutetoggles",
	REPORT_MENU = "reportmenu",
	EASIER_UNMUTING = "easierunmuting",
	UNKNOWN = "unknown",
}

local VOICE_GROUP_TYPE = {
	ALL = "all",
	FRIENDS = "friends",
	NONFRIENDS = "nonfriends",
}

local VOICE_STATE = {
	INACTIVE = "Inactive",
	TALKING = "Talking",
	CONNECTING = "Connecting",
	MUTED = "Muted",
	LOCAL_MUTED = "LOCAL_MUTED",
	ERROR = "Error",
	HIDDEN = "Hidden",
}

local BAN_REASON = { NUDGE_V3 = 7, }

return {
	VOICE_CONTEXT_TYPE = VOICE_CONTEXT_TYPE,
	VOICE_GROUP_TYPE = VOICE_GROUP_TYPE,
	VOICE_STATE = VOICE_STATE,
	BAN_REASON = BAN_REASON,
}
