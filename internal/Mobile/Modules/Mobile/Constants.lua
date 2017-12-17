local Constants = {
	Color = {
		GRAY1 = Color3.fromRGB(25, 25, 25),
		GRAY2 = Color3.fromRGB(117, 117, 117),
		GRAY3 = Color3.fromRGB(184, 184, 184),
		GRAY4 = Color3.fromRGB(227, 227, 227),
		GRAY5 = Color3.fromRGB(242, 242, 242),
		GRAY6 = Color3.fromRGB(245, 245, 245),
		WHITE = Color3.fromRGB(255, 255, 255),
		BLUE_PRIMARY = Color3.fromRGB(0, 162, 255),
		BLUE_HOVER = Color3.fromRGB(50, 181, 255),
		BLUE_PRESSED = Color3.fromRGB(0, 116, 189),
		BLUE_DISABLED = Color3.fromRGB(153, 218, 255),
		GREEN_PRIMARY = Color3.fromRGB(2, 183, 87),
		GREEN_HOVER = Color3.fromRGB(63, 198, 121),
		GREEN_PRESSED = Color3.fromRGB(17, 130, 55),
		GREEN_DISABLED = Color3.fromRGB(163, 226, 189),
		RED_PRIMARY = Color3.fromRGB(226, 35, 26),
		RED_NEGATIVE = Color3.fromRGB(216, 104, 104),
		RED_HOVER = Color3.fromRGB(226, 118, 118),
		RED_PRESSED = Color3.fromRGB(172, 30, 45),
		ORANGE_WARNING = Color3.fromRGB(246, 136, 2),
		ORANGE_FAVORITE = Color3.fromRGB(246, 183, 2),
		BROWN_TIX = Color3.fromRGB(204, 158, 113),
		ALPHA_SHADOW_PRIMARY = 0.3, -- Used with Gray1
		ALPHA_SHADOW_HOVER = 0.75, -- Used with Gray1
		CONVERSATION_BACKGROUND = Color3.fromRGB(224, 224, 224),
	},
	Header = {
		HEIGHT = 64,
	},
	Tween = {
		PHONE_TWEEN_TIME = 0.25,
		PHONE_TWEEN_STYLE = Enum.EasingStyle.Quad,
		PHONE_TWEEN_DIRECTION = Enum.EasingDirection.Out,
	},
	PresenceType = {
		NONE = "NONE",
		ONLINE = "ONLINE",
		IN_GAME = "IN_GAME",
		IN_STUDIO = "IN_STUDIO",
	},
	ServerState = {
		NONE = "NONE",
		CREATING = "CREATING",
		CREATED = "CREATED",
	},
	ConversationLoadingState = {
		NONE = "NONE",
		LOADING = "LOADING",
		DONE = "DONE"
	},
	PresenceColors = {
		NONE = nil, --Your code will crash if you render this. Intended.
		ONLINE = Color3.fromRGB(0, 162, 255),
		IN_GAME = Color3.fromRGB(2, 183, 87),
		IN_STUDIO = Color3.fromRGB(246, 136, 2),
	},
	Text = {
		INPUT_PLACEHOLDER = Color3.fromRGB(189, 189, 189),
		INPUT = Color3.fromRGB(25, 25, 25),
		POST_TYPING_STATUS_INTERVAL = 3, --How frequently do we POST our typing status if we're still typing
	},
	MAX_PARTICIPANT_COUNT = 5,
	MIN_PARTICIPANT_COUNT = 2,
	-- This value actually comes from iOS, but we are shortcutting actually getting the value from there.
	TAB_BAR_SIZE = 49,
}

return Constants
