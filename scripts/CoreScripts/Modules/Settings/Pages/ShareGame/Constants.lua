local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local User = require(ShareGame.Models.User)

local DeviceLayout = {
	PHONE_PORTRAIT = "PHONE_PORTRAIT",
	PHONE_LANDSCAPE = "PHONE_LANDSCAPE",
	TABLET = "TABLET",
	DESKTOP = "DESKTOP",
}

local Constants = {
	Color = {
		WHITE = Color3.fromRGB(255, 255, 255),
		GRAY1 = Color3.fromRGB(25, 25, 25),
		GRAY2 = Color3.fromRGB(117, 117, 117),
		GRAY3 = Color3.fromRGB(184, 184, 184),
		GRAY4 = Color3.fromRGB(227, 227, 227),
		GRAY5 = Color3.fromRGB(242, 242, 242),
		GRAY6 = Color3.fromRGB(245, 245, 245),
	},
	PresenceColors = {
		[User.PresenceType.ONLINE] = Color3.fromRGB(0, 162, 255),
		[User.PresenceType.IN_GAME] = Color3.fromRGB(2, 183, 87),
		[User.PresenceType.IN_STUDIO] = Color3.fromRGB(246, 136, 2),
		[User.PresenceType.OFFLINE] = 0,
	},
	PresenceText = {
		[User.PresenceType.ONLINE] = "Online",
		[User.PresenceType.IN_GAME] = "In game",
		[User.PresenceType.IN_STUDIO] = "In studio",
	},
	DeviceOrientation = {
		PORTRAIT = "PORTRAIT",
		LANDSCAPE = "LANDSCAPE",
		INVALID = "INVALID",
	},
	PageRoute = {
		NONE = "NONE",
		SETTINGS_HUB = "SETTINGS_HUB",
		SHARE_GAME = "SHARE_GAME",
	},

	AvatarThumbnailTypes = {
		AvatarThumbnail = "AvatarThumbnail",
		HeadShot = "HeadShot",
	},
	AvatarThumbnailSizes = {
		Size150x150 = "Size150x150",
		Size100x100 = "Size100x100",
	},

	SHARE_GAME_Z_INDEX = 2,

	--[[
		Used for determining how the ShareGame page will be rendered across
		devices.
	]]
	DeviceLayout = DeviceLayout,
	LayoutSpecific = {
		[DeviceLayout.PHONE_LANDSCAPE] = {
			HEADER_HEIGHT = 56,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 12,
			PAGE_SIDE_MARGINS = 7,
			BACK_BUTTON_HEIGHT = 22,
			BACK_BUTTON_WIDTH = 22,
		},
		[DeviceLayout.PHONE_PORTRAIT] = {
			HEADER_HEIGHT = 62,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 15,
			PAGE_SIDE_MARGINS = 5,
			BACK_BUTTON_HEIGHT = 22,
			BACK_BUTTON_WIDTH = 22,
		},
		[DeviceLayout.TABLET] = {
			HEADER_HEIGHT = 54,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 15,
			PAGE_SIDE_MARGINS = 5,
			BACK_BUTTON_HEIGHT = 22,
			BACK_BUTTON_WIDTH = 22,
		},
		[DeviceLayout.DESKTOP] = {
			HEADER_HEIGHT = 90,
			PAGE_TITLE_TEXT_SIZE = 29,
			SEARCH_BOX_MARGIN = 0,
			PAGE_SIDE_MARGINS = 0,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 154,
		},
	},
}

return Constants