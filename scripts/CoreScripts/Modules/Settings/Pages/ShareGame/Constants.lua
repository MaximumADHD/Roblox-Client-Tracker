local CorePackages = game:GetService("CorePackages")

local User = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local ThumbnailRequest = require(CorePackages.Workspace.Packages.UserLib).Utils.ThumbnailRequest
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local UserLibConstants = UserLib.Utils.Constants

local DeviceLayout = {
	PHONE_PORTRAIT = "PHONE_PORTRAIT",
	PHONE_LANDSCAPE = "PHONE_LANDSCAPE",
	TABLET_PORTRAIT = "TABLET_PORTRAIT",
	TABLET_LANDSCAPE = "TABLET_LANDSCAPE",
	DESKTOP = "DESKTOP",
}

local Color = {
	WHITE = Color3.fromRGB(255, 255, 255),
	GRAY1 = Color3.fromRGB(25, 25, 25),
	GRAY2 = Color3.fromRGB(117, 117, 117),
	GRAY3 = Color3.fromRGB(184, 184, 184),
	GRAY4 = Color3.fromRGB(227, 227, 227),
	GRAY5 = Color3.fromRGB(242, 242, 242),
	GRAY6 = Color3.fromRGB(245, 245, 245),
	RED = Color3.fromRGB(254, 68, 72),
}

local Constants = {
	Color = Color,
	PresenceColors = {
		[User.PresenceType.ONLINE] = Color3.fromRGB(0, 162, 255),
		[User.PresenceType.IN_GAME] = Color3.fromRGB(2, 183, 87),
		[User.PresenceType.IN_STUDIO] = Color3.fromRGB(246, 136, 2),
		[User.PresenceType.OFFLINE] = Color.GRAY3,
	},
	PresenceTextKey = {
		[User.PresenceType.ONLINE] = "InGame.Presence.Label.Online",
		[User.PresenceType.IN_GAME] = "InGame.Presence.Label.InGame",
		[User.PresenceType.IN_STUDIO] = "InGame.Presence.Label.InStudio",
		[User.PresenceType.OFFLINE] = "InGame.Presence.Label.Offline",
	},
	InviteStatus = {
		Success = "Success", -- Should match API resultType
		Moderated = "Moderated", -- Should match API resultType
		Failed = "Failed",
		Pending = "Pending",
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

	SHARE_GAME_Z_INDEX = 2,

	--[[
		Used for determining how the ShareGame page will be rendered across
		devices.
	]]
	DeviceLayout = DeviceLayout,
	LayoutSpecific = {
		[DeviceLayout.PHONE_LANDSCAPE] = {
			HEADER_HEIGHT = 40,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 12,
			PAGE_SIDE_MARGINS = 7,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 44,
			BACK_BUTTON_MODAL_WIDTH = 44,
			EXTEND_BOTTOM_SIZE = 0,
			TOAST_HEIGHT = 40,
		},
		[DeviceLayout.PHONE_PORTRAIT] = {
			HEADER_HEIGHT = 40,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 15,
			PAGE_SIDE_MARGINS = 5,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 44,
			BACK_BUTTON_MODAL_WIDTH = 44,
			EXTEND_BOTTOM_SIZE = 0,
			TOAST_HEIGHT = 40,
		},
		[DeviceLayout.TABLET_PORTRAIT] = {
			HEADER_HEIGHT = 40,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 15,
			PAGE_SIDE_MARGINS = 15,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 44,
			BACK_BUTTON_MODAL_WIDTH = 44,
			EXTEND_BOTTOM_SIZE = 0,
			TOAST_HEIGHT = 80,
		},
		[DeviceLayout.TABLET_LANDSCAPE] = {
			HEADER_HEIGHT = 60,
			PAGE_TITLE_TEXT_SIZE = 23,
			SEARCH_BOX_MARGIN = 15,
			PAGE_SIDE_MARGINS = 5,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 44,
			BACK_BUTTON_MODAL_WIDTH = 44,
			EXTEND_BOTTOM_SIZE = 68,
			TOAST_HEIGHT = 80,
		},
		[DeviceLayout.DESKTOP] = {
			HEADER_HEIGHT = 60,
			PAGE_TITLE_TEXT_SIZE = 29,
			SEARCH_BOX_MARGIN = 0,
			PAGE_SIDE_MARGINS = 0,
			BACK_BUTTON_HEIGHT = 44,
			BACK_BUTTON_WIDTH = 154,
			BACK_BUTTON_MODAL_WIDTH = 44,
			EXTEND_BOTTOM_SIZE = 68,
			TOAST_HEIGHT = 80,
		},
	},

	Triggers = {
		DeveloperMultiple = "DeveloperMultiple",
		DeveloperSingle = "DeveloperSingle",
		GameMenu = "GameMenu",
	},
}

Constants.InviteAvatarThumbnailType =
	UserLibConstants.RbxAvatarThumbnailTypesFromEnum.HeadShot :: UserLib.RbxAvatarThumbnailTypeFromEnum
Constants.InviteAvatarThumbnailSize = UserLibConstants.RbxThumbnailSizes.Size150x150 :: UserLib.RbxThumbnailSize
Constants.InviteAvatarRbxthumbType = UserLibConstants.RbxthumbTypes.AvatarHeadShot :: UserLib.RbxthumbType

Constants.ThumbnailRequest = {
	InviteToGame = {
		ThumbnailRequest.fromData(Constants.InviteAvatarThumbnailType, Constants.InviteAvatarThumbnailSize),
	},
}

return Constants
