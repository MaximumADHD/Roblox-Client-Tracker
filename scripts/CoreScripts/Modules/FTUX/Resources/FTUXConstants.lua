local FTUX = script.Parent.Parent
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform

local FTUXConstants = {
	[PlatformEnum.QuestVR :: Platform] = {
		ExperienceIds = {
			UniverseId = "4510252459",
			PlaceId = "12887241816",
		},

		PanelConstants = {
			MAIN_SCREEN_SIZE_WIDTH = 1920,
			MAIN_SCREEN_SIZE_HEIGHT = 1080,
			SLIDESHOW_FRAME_WIDTH = 420 * 1.6,
			SLIDESHOW_FRAME_HEIGHT = 750 * 1.5,
			SLIDESHOW_FRAME_X = 0,
			SLIDESHOW_FRAME_Y = 0,
			CONTENT_PADDING = 45,
			HEADER_HEIGHT_RATIO = 0.0833,
			CONTENT_HEIGHT_RATIO = 0.67,
			FOOTER_HEIGHT_RATIO = 0.1,
		},
	},
}

return FTUXConstants
