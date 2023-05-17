--!strict
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
	getExperienceTileHeight can be used when determing the height.
]]
return function(
	style: StyleTypes.AppStyle,
	tileWidth: number,
	currenThumbnailAspectRatio: AspectRatioMode?,
	currentContentTextLineCount: number?,
	currentFooterHeight: number?,
	currentStyleProps: StyleProps?
): number
	local styleProps = Cryo.Dictionary.join(Constants.getDefaultStyleProps(style), currentStyleProps or {})
	local footerHeight = setDefault(currentFooterHeight, Constants.DEFAULT_FOOTER_HEIGHT)
	local contentTextLineCount = setDefault(currentContentTextLineCount, Constants.DEFAULT_TEXT_LINE_COUNT)
	local thumbnailAspectRatio = setDefault(currenThumbnailAspectRatio, AspectRatioModeEnum.Square)
	local topContentPadding = styleProps.topContentPadding
	local bottomContentPadding = styleProps.bottomContentPadding
	local contentTextFont = styleProps.contentTitleFont
	local contentTextPadding = styleProps.contentTitlePadding
	local selectionCursorPadding = styleProps.selectionCursorPadding
	local tileContentWidth = tileWidth
		- selectionCursorPadding.Left
		- selectionCursorPadding.Right
		- topContentPadding.Left
		- topContentPadding.Right
	local thumbnailHeight = tileContentWidth * getAspectRatio(thumbnailAspectRatio)
	local tileContentPanelHeight =
		math.floor(contentTextLineCount * contentTextFont.RelativeSize * style.Font.BaseSize + contentTextPadding)
	local bottomHeight = tileContentPanelHeight + footerHeight
	local verticalPaddingTop = topContentPadding.Top + topContentPadding.Bottom
	local verticalPaddingBottom = bottomContentPadding.Top + bottomContentPadding.Bottom
	local selectionCursorPaddingBottom = selectionCursorPadding.Top + selectionCursorPadding.Bottom
	local verticalPadding = verticalPaddingTop + verticalPaddingBottom + selectionCursorPaddingBottom
	return math.floor(thumbnailHeight + bottomHeight + verticalPadding)
end
