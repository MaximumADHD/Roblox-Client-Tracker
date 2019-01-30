local Plugin = script.Parent.Parent.Parent

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local TextService = game:GetService("TextService")

local Constants = {}

Constants.TOOLTIP_LINE_HEIGHT = 1.3
Constants.TOOLTIP_PADDING = 3
Constants.TOOLTIP_TEXT_SIZE = 12
Constants.TOOLTIP_SHOW_UP_DELAY = 0.3

Constants.FONT = Enum.Font.SourceSans
Constants.FONT_BOLD = Enum.Font.SourceSansBold
Constants.FONT_SIZE_SMALL = 14
Constants.FONT_SIZE_MEDIUM = 16
Constants.FONT_SIZE_LARGE = 18


function Constants.getTextSize(text, fontSize, font, frameSize)
	fontSize = fontSize or Constants.FONT_SIZE_MEDIUM
	font = font or Constants.FONT
	frameSize = frameSize or Vector2.new(0, 0)

	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

Constants.ROUNDED_FRAME_SLICE = Rect.new(3, 3, 13, 13)


Constants.SCROLLBAR_THICKNESS = 8
Constants.SCROLLBAR_PADDING = 2
Constants.SCROLLBAR_BACKGROUND_THICKNESS = Constants.SCROLLBAR_THICKNESS + (2 * Constants.SCROLLBAR_PADDING)

Constants.THUMB_ICON_HEIGHT = 22
Constants.THUMB_ICON_WIDTH = 22

Constants.DROP_SHADOW_IMAGE_SIZE = 16
Constants.DROP_SHADOW_IMAGE_SLICE_0 = 8
Constants.DROP_SHADOW_IMAGE_SLICE_1 = Constants.DROP_SHADOW_IMAGE_SIZE - Constants.DROP_SHADOW_IMAGE_SLICE_0
Constants.DROP_SHADOW_SLICE_CENTER = Rect.new(
	Constants.DROP_SHADOW_IMAGE_SLICE_0,
	Constants.DROP_SHADOW_IMAGE_SLICE_0,
	Constants.DROP_SHADOW_IMAGE_SLICE_1,
	Constants.DROP_SHADOW_IMAGE_SLICE_1)
Constants.DROP_SHADOW_TRANSPARENCY = 0.8
Constants.DROP_SHADOW_SIZE = 8
Constants.DROP_SHADOW_COLOR = Color3.fromRGB(0, 0, 0)

Constants.DEFAULT_PADDING = 8

Constants.DROPDOWN_WIDTH = 120
Constants.DROPDOWN_HEIGHT = 25

Constants.DROPDOWN_SELECTED_BAR = 5
Constants.DROPDOWN_TEXT_INSET = 3
Constants.DROPDOWN_ICON_SIZE = 12
Constants.DROPDOWN_ICON_FROM_RIGHT = 4

Constants.HEADER_HEIGHT = 43

Constants.HEADER_OUTER_PADDING = (Constants.HEADER_HEIGHT - Constants.DROPDOWN_HEIGHT) / 2 -- 9
Constants.HEADER_INNER_PADDING = 7
Constants.HEADER_CATEGORY_DROPDOWN_WIDTH = Constants.DROPDOWN_WIDTH

Constants.FOOTER_HEIGHT = 35

Constants.BACKGROUND_BUTTON_ICON_SIZE = 10
Constants.BACKGROUND_BUTTON_FONT_SIZE = Constants.FONT_SIZE_SMALL

Constants.MAIN_VIEW_PADDING = 8

Constants.SUGGESTIONS_INNER_PADDING = 6
Constants.SUGGESTIONS_OUTER_PADDING = 6
Constants.SUGGESTIONS_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
Constants.SUGGESTIONS_ROW_HEIGHT = Constants.SUGGESTIONS_FONT_SIZE + 4
Constants.SUGGESTIONS_ROW_PADDING = 2


Constants.SORT_COMPONENT_INNER_PADDING = 6
Constants.SORT_COMPONENT_OUTER_PADDING = 8
Constants.SORT_COMPONENT_CATEGORY_DROPDOWN_WIDTH = Constants.DROPDOWN_WIDTH
Constants.SORT_COMPONENT_HEIGHT = Constants.DROPDOWN_HEIGHT + 2 * Constants.SORT_COMPONENT_OUTER_PADDING

Constants.MAIN_VIEW_VERTICAL_PADDING = Constants.MAIN_VIEW_PADDING
Constants.MAIN_VIEW_NO_HEADER_HEIGHT = 4

Constants.TIME_BETWEEN_ASSET_INSERTION = 0.3

-- ASSET_WIDTH_NO_PADDING is actually refering to the size of the icon
-- The size of the Asset itself is about 95 to 96
-- TODO: Rename this when refactroing the loading and calculation process
Constants.ASSET_WIDTH_NO_PADDING = 75
Constants.ASSET_INNER_PADDING = 4

Constants.ASSET_THUMBNAIL_SIZE = Constants.ASSET_WIDTH_NO_PADDING
Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE = 75 -- The endpoint only accepts certain sizes for thumbnails
Constants.ASSET_ENDORSED_BADGE_ICON_SIZE = 20

Constants.ASSET_PLAY_AUDIO_ICON_SIZE = 28

Constants.ASSET_NAME_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
Constants.ASSET_NAME_HEIGHT = Constants.ASSET_NAME_FONT_SIZE * 2 -- The asset name is 2 rows tall

Constants.ASSET_CREATOR_NAME_FONT_SIZE = Constants.FONT_SIZE_SMALL
Constants.ASSET_CREATOR_NAME_HEIGHT = Constants.ASSET_CREATOR_NAME_FONT_SIZE

Constants.ASSET_VOTE_BAR_HEIGHT = 5
Constants.ASSET_VOTE_BAR_OUTER_HEIGHT = 13
Constants.ASSET_VOTE_COUNT_FONT_SIZE = Constants.FONT_SIZE_SMALL
Constants.ASSET_VOTE_COUNT_HEIGHT = Constants.ASSET_VOTE_COUNT_FONT_SIZE
Constants.ASSET_VOTING_HEIGHT = Constants.ASSET_VOTE_BAR_OUTER_HEIGHT + Constants.ASSET_VOTE_COUNT_HEIGHT

Constants.ASSET_HEIGHT = Constants.ASSET_THUMBNAIL_SIZE + Constants.ASSET_INNER_PADDING
	+ Constants.ASSET_NAME_HEIGHT

Constants.ASSET_OUTLINE_HOVERED_TRANSPARENCY = 0.08
Constants.ASSET_OUTLINE_PADDING = 8
Constants.ASSET_OUTLINE_EXTRA_HEIGHT = Constants.ASSET_CREATOR_NAME_HEIGHT
	+ Constants.ASSET_INNER_PADDING + (2 * Constants.ASSET_OUTLINE_PADDING)
Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING = Constants.ASSET_OUTLINE_EXTRA_HEIGHT + Constants.ASSET_VOTING_HEIGHT
	+ Constants.ASSET_INNER_PADDING

Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING = 8
Constants.BETWEEN_ASSETS_VERTICAL_PADDING = 16

-- Calculate the exact width needed to display MIN_ASSETS_PER_ROW
Constants.MIN_ASSETS_PER_ROW = 3
Constants.MIN_WIDTH_EXTRA_PADDING = 4
Constants.TOOLBOX_MIN_WIDTH = (Constants.MAIN_VIEW_PADDING * 2)
	+ (Constants.MIN_ASSETS_PER_ROW * (Constants.ASSET_WIDTH_NO_PADDING + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING))
	- Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING
	+ Constants.SCROLLBAR_BACKGROUND_THICKNESS + Constants.SCROLLBAR_PADDING
	+ (Constants.MIN_WIDTH_EXTRA_PADDING * 2)
Constants.TOOLBOX_MIN_HEIGHT = 200

Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE = Constants.ASSET_HEIGHT * 1.2

Constants.DEFAULT_TOOLTIP_WIDTH = 100

Constants.SCROLLING_FRAME_VIEW_PADDING = 16

Constants.GET_ITEMS_PAGE_SIZE = 30

Constants.SEARCH_BAR_BUTTON_ICON_SIZE = 14
Constants.SEARCH_BAR_BUTTON_WIDTH = 28
Constants.SEARCH_BAR_BUTTON_INSET = 2

Constants.INFO_BANNER_PADDING = 12

Constants.TOOLTIP_TYPE = {
	ASSET_ICON = 1,
	ASSET_NAME = 2,
	CREATOR_NAME = 3,
	HIGH_QUALITY_BADGE = 4,
}

Constants.MESSAGE_BOX_BUTTON_WIDTH = 72

return wrapStrictTable(Constants, "Constants")
