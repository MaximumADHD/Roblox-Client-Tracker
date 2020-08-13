local Plugin = script.Parent.Parent.Parent

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)
local Category = require(Plugin.Core.Types.Category)

local TextService = game:GetService("TextService")
local StudioService  = game:GetService("StudioService")

local RobloxAPI = require(Plugin.Libs.Framework).RobloxAPI

local FFlagUseRBXThumbInToolbox = game:GetFastFlag("UseRBXThumbInToolbox")
local FFlagSmallerToolboxMinWidth = game:DefineFastFlag("SmallerToolboxMinWidth", false)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagToolboxUseNewPluginEndpoint = settings():GetFFlag("ToolboxUseNewPluginEndpoint")
local FFlagToolboxDisableMarketplaceAndRecentsForLuobu = game:GetFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu")

local Constants = {}

if not FFlagUseCategoryNameInToolbox then
	if FFlagToolboxDisableMarketplaceAndRecentsForLuobu and RobloxAPI:baseURLHasChineseHost() then
		Constants.DEFAULT_TAB = Category.INVENTORY_KEY
	else
		Constants.DEFAULT_TAB = Category.MARKETPLACE_KEY
	end
end

Constants.TOOLTIP_LINE_HEIGHT = 1.3
Constants.TOOLTIP_PADDING = 3
Constants.TOOLTIP_TEXT_SIZE = 12
Constants.TOOLTIP_SHOW_UP_DELAY = 0.3

Constants.FONT = Enum.Font.SourceSans
Constants.FONT_BOLD = Enum.Font.SourceSansBold
Constants.FONT_SIZE_SMALL = 14
Constants.FONT_SIZE_MEDIUM = 16
Constants.FONT_SIZE_LARGE = 18
Constants.FONT_SIZE_TITLE = 22


function Constants.getTextSize(text, fontSize, font, frameSize)
	fontSize = fontSize or Constants.FONT_SIZE_MEDIUM
	font = font or Constants.FONT
	frameSize = frameSize or Vector2.new(0, 0)

	return TextService:GetTextSize(text, fontSize, font, frameSize)
end

function Constants.getClassIcon(instance)
	local className = instance.ClassName
	if instance:IsA("JointInstance") and className == "ManualWeld" or className == "ManualGlue" then
		return StudioService:GetClassIcon("JointInstance")
	else
		return StudioService:GetClassIcon(className)
	end
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

Constants.DROPDOWN_WIDTH = 80
Constants.DROPDOWN_ITEM_WIDTH = 120
Constants.DROPDOWN_HEIGHT = 25

Constants.DROPDOWN_SELECTED_BAR = 5
Constants.DROPDOWN_TEXT_INSET = 3
Constants.DROPDOWN_ICON_SIZE = 12
Constants.DROPDOWN_ICON_FROM_RIGHT = 4

Constants.HEADER_HEIGHT = 43

Constants.HEADER_OUTER_PADDING = (Constants.HEADER_HEIGHT - Constants.DROPDOWN_HEIGHT) / 2 -- 9
Constants.HEADER_INNER_PADDING = 7

Constants.HEADER_DROPDOWN_MIN_WIDTH = Constants.DROPDOWN_WIDTH
Constants.HEADER_DROPDOWN_MAX_WIDTH = 125

Constants.FOOTER_HEIGHT = 35

Constants.BACKGROUND_BUTTON_ICON_SIZE = 10
Constants.BACKGROUND_BUTTON_FONT_SIZE = Constants.FONT_SIZE_SMALL

Constants.MAIN_VIEW_PADDING = 8

Constants.SUGGESTIONS_INNER_PADDING = 6
Constants.SUGGESTIONS_OUTER_PADDING = 6
Constants.SUGGESTIONS_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
Constants.SUGGESTIONS_ROW_HEIGHT = Constants.SUGGESTIONS_FONT_SIZE + 4
Constants.SUGGESTIONS_ROW_PADDING = 2

Constants.MAIN_VIEW_VERTICAL_PADDING = Constants.MAIN_VIEW_PADDING
Constants.MAIN_VIEW_NO_HEADER_HEIGHT = 4

Constants.TIME_BETWEEN_ASSET_INSERTION = 0.3


-- ASSET_WIDTH_NO_PADDING is actually refering to the size of the icon
-- The size of the Asset itself is about 95 to 96
-- TODO: Rename this when refactroing the loading and calculation process
Constants.ASSET_WIDTH_NO_PADDING = 75
Constants.ASSET_INNER_PADDING = 4

Constants.ASSET_THUMBNAIL_SIZE = Constants.ASSET_WIDTH_NO_PADDING
Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE = FFlagUseRBXThumbInToolbox and 150 or 75 -- The endpoint only accepts certain sizes for thumbnails
Constants.THUMBNAIL_SIZE_LARGE = 420 -- The is the known largest size we support for fetching thumbnail.
Constants.ASSET_ENDORSED_BADGE_ICON_SIZE = 20

Constants.ASSET_PLAY_AUDIO_ICON_SIZE = 28

Constants.ASSET_NAME_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
Constants.ASSET_NAME_HEIGHT = Constants.ASSET_NAME_FONT_SIZE * 2 -- The asset name is 2 rows tall

Constants.ASSET_CREATOR_NAME_FONT_SIZE = Constants.FONT_SIZE_SMALL
Constants.ASSET_CREATOR_NAME_HEIGHT = Constants.ASSET_CREATOR_NAME_FONT_SIZE

Constants.STATUS_NAME_FONT_SIZE = Constants.FONT_SIZE_SMALL
Constants.STATUS_NAME_HEIGHT = Constants.STATUS_NAME_FONT_SIZE

Constants.PRICE_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
Constants.PRICE_HEIGHT = Constants.PRICE_FONT_SIZE

Constants.AUDIO_LENGTH_HEIGHT = Constants.FONT_SIZE_MEDIUM

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

Constants.MIN_ASSETS_PER_ROW = FFlagSmallerToolboxMinWidth and 3 or 4
local MIN_WIDTH_EXTRA_PADDING = FFlagSmallerToolboxMinWidth and 0 or 8

local staticPadding = (Constants.MAIN_VIEW_PADDING * 2)
	- Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING
	+ Constants.SCROLLBAR_BACKGROUND_THICKNESS + Constants.SCROLLBAR_PADDING
	+ MIN_WIDTH_EXTRA_PADDING
local perAssetPadding = Constants.ASSET_WIDTH_NO_PADDING + Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING
Constants.TOOLBOX_MIN_WIDTH = staticPadding + (perAssetPadding * Constants.MIN_ASSETS_PER_ROW)
Constants.SEARCH_BAR_WIDTH = Constants.TOOLBOX_MIN_WIDTH - Constants.MAIN_VIEW_PADDING * 2

Constants.TAB_ICON_SIZE = 16
Constants.TAB_INNER_PADDING = 3
Constants.TAB_OUTER_PADDING = 8

function Constants.CalculateTabHeaderWidth(text)
	local textWidth = Constants.getTextSize(text, nil, Constants.FONT_BOLD).X
	return textWidth + Constants.TAB_ICON_SIZE + Constants.TAB_INNER_PADDING + Constants.TAB_OUTER_PADDING * 2
end

Constants.TOOLBOX_MIN_HEIGHT = 200

Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE = Constants.ASSET_HEIGHT * 1.2

Constants.DEFAULT_TOOLTIP_WIDTH = 100

Constants.SCROLLING_FRAME_VIEW_PADDING = 16

Constants.GET_ITEMS_PAGE_SIZE = 30
Constants.GET_ASSET_CREATIONS_PAGE_SIZE_LIMIT = 25 -- only specific asset creation page size limits are supported by the back-end, check the back-end accepts the amount before changing this
Constants.GET_ASSET_CREATIONS_DETAILS_LIMIT = 50 -- back-end does not support returning more than this amount
assert(Constants.GET_ASSET_CREATIONS_PAGE_SIZE_LIMIT <= Constants.GET_ASSET_CREATIONS_DETAILS_LIMIT, "Constants.GET_ASSET_CREATIONS_PAGE_SIZE_LIMIT cannot be more than Constants.GET_ASSET_CREATIONS_DETAILS_LIMIT")

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

Constants.TREE_ITEM_HEIGHT = 16
Constants.TREE_VIEW_INDENT = 20
Constants.SEARCH_TAG_HEIGHT = 20

Constants.CAPSULE_SLICE = 25
Constants.CAPSULE_SLICE_CENTER = Rect.new(
	Constants.CAPSULE_SLICE,
	Constants.CAPSULE_SLICE,
	Constants.CAPSULE_SLICE,
	Constants.CAPSULE_SLICE)

Constants.MODEL_PREVIEW_BG_COLOR = Color3.fromRGB(216, 216, 216)

Constants.HEADER_OPTIONSBUTTON_WIDTH = 16
Constants.HEADER_OPTIONSBUTTON_HEIGHT = 25

Constants.SEARCH_ENTRY_HEIGHT = 35
Constants.SEARCH_TAGS_HEIGHT = 50
Constants.FOOTER_BUTTON_HEIGHT = 24

Constants.ASSET_PREVIEW_MAX_WIDTH = 640
-- TODO: Need to check if we want to limite the height or not
Constants.ASSET_PREVIEW_MAX_Height = 800
Constants.ASSET_PREVIEW_PADDING = 12
Constants.ASSET_DESCRIPTION_HEIGHT = 28

Constants.MINIMAL_PREVIEW_WIDTH = 100
Constants.MINIMAL_PREVIEW_HEIGHT = 200

Constants.MAINVIEW_BUTTON_WIDTH = 28
Constants.MAINVIEW_BUTTON_HEIGHT = 28

Constants.TAB_WIDGET_HEIGHT = 36

Constants.PERMISSIONS_TAB_LIST_PADDING = 18
Constants.PERMISSIONS_UI_EDGE_PADDING = 24

Constants.Dialog = {
	SIZE = Vector2.new(400, 186),
	BUTTON_SIZE = Vector2.new(120, 32),
	BUTTON_PADDING = 20,
	BORDER_PADDING = 24,

	IMAGE_SIZE = UDim2.fromOffset(80, 80),
	PROMPT_SIZE = UDim2.fromOffset(260, 60),
	HEADER_SIZE = UDim2.new(1, 0, 0, 18),
	DETAILS_SIZE = UDim2.new(1, 0, 0, 40),
	DETAILS_POSITION = UDim2.fromOffset(0, 56),
	BALANCE_SIZE = UDim2.fromOffset(260, 18),
	BALANCE_POSITION = UDim2.new(1, 0, 0, 64),
	BALANCE_PADDING = UDim.new(0, 3),
	ROBUX_SIZE = UDim2.fromOffset(16, 16),
}

Constants.MIN_AUDIO_SEARCH_DURATION = 0
Constants.MAX_AUDIO_SEARCH_DURATION = 420
Constants.TOOLBOX_ITEM_SEARCH_LIMIT = 30
if (not FFlagToolboxUseNewPluginEndpoint) then
	Constants.AUDIO_SERACH_CATEGORY_NAME = "audio"
end
Constants.PLUGIN_LIBRARY_URL = "https://www.roblox.com/develop/library?CatalogContext=2&SortAggregation=5&LegendExpanded=true&Category=7"

return wrapStrictTable(Constants, "Constants")
