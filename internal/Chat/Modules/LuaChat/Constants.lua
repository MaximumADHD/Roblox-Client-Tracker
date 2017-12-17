
local Device = require(script.Parent.Device)

local LuaChatFontAdjustment = settings():GetFFlag("LuaChatFontAdjustment")
local LuaChatSemiboldReplacesBold = settings():GetFFlag("LuaChatSemiboldReplacesBold")

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
	Font = {
		TITLE = Enum.Font.SourceSansBold,
		-- These values appear differently because of the discrepancy between design sizes and
		-- the engine sizes
		FONT_SIZE_12 = 15,
		FONT_SIZE_14 = 17,
		FONT_SIZE_16 = 20,
		FONT_SIZE_18 = 23,
		FONT_SIZE_20 = 23,
		FONT_SIZE_18_POS_OFFSET = -8,
	},
	Tween = {
		DEFAULT_TWEEN_TIME = 0.25,
		DEFAULT_TWEEN_STYLE = Enum.EasingStyle.Quad,
		DEFAULT_TWEEN_EASING_DIRECTION = Enum.EasingDirection.Out,
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
	PresenceIndicatorImages = {
		NONE = nil,
		ONLINE = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-online.png",
		IN_GAME = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-ingame.png",
		IN_STUDIO = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-instudio.png",
	},
	Text = {
		INPUT_PLACEHOLDER = Color3.fromRGB(189, 189, 189),
		INPUT = Color3.fromRGB(25, 25, 25),
		POST_TYPING_STATUS_INTERVAL = 3, --How frequently do we POST our typing status if we're still typing
	},
	PageSize = {
		GET_MESSAGES = 30,
		GET_NEW_MESSAGES = 4,
		GET_CONVERSATIONS = 30,
	},
	MAX_PARTICIPANT_COUNT = 5,
	MIN_PARTICIPANT_COUNT = 2,
	-- This value actually comes from iOS, but we are shortcutting actually getting the value from there.

	ModalDialog = {
		CLEARANCE_CORNER_ROUNDING = 5,
		CLEARANCE_DIALOG_SIDE = 48,
		CLEARANCE_DIALOG_BOTTOM = 36,
		BUTTON_HEIGHT = 42,
	},

	ToastIDs = {
		TOO_MANY_PEOPLE = "TOO_MANY_PEOPLE",
		GROUP_NAME_MODERATED = "GROUP_NAME_MODERATED",
	},

	Platforms = {
		Android = {
			HEADER_CONTENT_FRAME_Y_OFFSET = 0,
			HEADER_TITLE_FRAME_POSITION = UDim2.new(0, 72, 0, 0),
			HEADER_TITLE_FRAME_ANCHOR_POINT = Vector2.new(0, 0),
			HEADER_VERTICAL_ALIGNMENT = 0,
			HEADER_TEXT_X_ALIGNMENT = 0,
			BACK_BUTTON_ASSET_ID = "rbxasset://textures/ui/LuaChat/icons/ic-back-mdpi.png",
		},
		Default = {
			HEADER_CONTENT_FRAME_Y_OFFSET = 24,
			HEADER_TITLE_FRAME_POSITION = UDim2.new(0.5, 0, 0, 0),
			HEADER_TITLE_FRAME_ANCHOR_POINT = Vector2.new(0.5, 0),
			HEADER_VERTICAL_ALIGNMENT = 1,
			HEADER_TEXT_X_ALIGNMENT = 2,
			BACK_BUTTON_ASSET_ID = "rbxasset://textures/ui/LuaChat/icons/ic-back.png",
		},
	},
}

if Device.Platform == Enum.Platform.Android then
	Constants.PlatformSpecific = Constants.Platforms.Android
else
	Constants.PlatformSpecific = Constants.Platforms.Default
end

if not LuaChatFontAdjustment then
	Constants.Font = {
		TITLE = Enum.Font.SourceSansBold,
		FONT_SIZE_12 = 12,
		FONT_SIZE_14 = 14,
		FONT_SIZE_16 = 16,
		FONT_SIZE_18 = 18,
		FONT_SIZE_20 = 20,
		FONT_SIZE_18_POS_OFFSET = 0,
	}
end

if LuaChatSemiboldReplacesBold then
	Constants.Font.TITLE = Enum.Font.SourceSansSemibold
end

return Constants
