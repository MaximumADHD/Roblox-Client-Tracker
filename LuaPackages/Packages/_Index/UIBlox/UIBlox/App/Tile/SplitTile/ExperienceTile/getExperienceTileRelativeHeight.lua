local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)

local StyleTypes = require(App.Style.StyleTypes)
local setDefault = require(UIBlox.Utility.setDefault)
local Constants = require(ExperienceTileRoot.Constants)
local AspectRatioModeEnum = require(ExperienceTileRoot.Enum.AspectRatioMode)
local getAspectRatio = require(ExperienceTileRoot.getAspectRatio)

type StyleProps = Constants.StyleProps
type AspectRatioMode = AspectRatioModeEnum.AspectRatioMode
--[[
	Calculate the expected height that exactly fits the current styling config.

	The original sizing strategy for the ExperienceTileV3 is wrap_content, but the actual implementation
	is to go with match_parent in order to be compatible with existing app grid/carousel system where
	the height of the grid/carousel need to be calculated separately.

	To make sure there's a way to match the ExperienceTileV3 design when the component is used in a grid/carousel, the function
	getExperienceTileRelativeHeight can be used when determine the height.

	Note that the return result is a relativeHeight that relates to the actual tileWidth, the absolute height can be
	calculated with the formula below:

	local relativeHeight = getExperienceTileRelativeHeight(style, aspectRatio, contentTextLineCount, footerHeight, stylePropsOverride)
	local absoluteTileHeight = relativeHeight.Scale * absoluteTileWidth + relativeHeight.Offset
]]
return function(
	style: StyleTypes.AppStyle,
	currentThumbnailAspectRatio: AspectRatioMode?,
	currentContentTextLineCount: number?,
	currentFooterHeight: number?,
	currentStyleProps: StyleProps?
): UDim
	local styleProps = Cryo.Dictionary.join(Constants.getDefaultStyleProps(style), currentStyleProps or {})
	local footerHeight = setDefault(currentFooterHeight, Constants.DEFAULT_FOOTER_HEIGHT)
	local contentTextLineCount = setDefault(currentContentTextLineCount, Constants.DEFAULT_TEXT_LINE_COUNT)
	local thumbnailAspectRatio = setDefault(currentThumbnailAspectRatio, AspectRatioModeEnum.Square)
	local topContentPadding = styleProps.topContentPadding
	local bottomContentPadding = styleProps.bottomContentPadding
	local contentTextFont = styleProps.contentTitleFont
	local contentTextPadding = styleProps.contentTitlePadding
	local selectionCursorPadding = styleProps.selectionCursorPadding
	local horizontalPadding = selectionCursorPadding.Left
		+ selectionCursorPadding.Right
		+ topContentPadding.Left
		+ topContentPadding.Right
	local tileContentPanelHeight =
		math.floor(contentTextLineCount * contentTextFont.RelativeSize * style.Font.BaseSize + contentTextPadding)
	local bottomHeight = tileContentPanelHeight + footerHeight
	local verticalPaddingTop = topContentPadding.Top + topContentPadding.Bottom
	local verticalPaddingBottom = bottomContentPadding.Top + bottomContentPadding.Bottom
	local selectionCursorPaddingBottom = selectionCursorPadding.Top + selectionCursorPadding.Bottom
	local verticalPadding = verticalPaddingTop + verticalPaddingBottom + selectionCursorPaddingBottom
	local scale = getAspectRatio(thumbnailAspectRatio)
	local offset = -1 * horizontalPadding * scale + bottomHeight + verticalPadding
	return UDim.new(scale, offset)
end
