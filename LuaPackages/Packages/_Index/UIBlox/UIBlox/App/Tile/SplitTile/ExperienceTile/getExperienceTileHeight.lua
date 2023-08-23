local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent

local StyleTypes = require(App.Style.StyleTypes)
local Constants = require(ExperienceTileRoot.Constants)
local AspectRatioModeEnum = require(ExperienceTileRoot.Enum.AspectRatioMode)

local getExperienceTileRelativeHeight = require(ExperienceTileRoot.getExperienceTileRelativeHeight)

type StyleProps = Constants.StyleProps
type AspectRatioMode = AspectRatioModeEnum.AspectRatioMode
--[[
	Calculate the expected height that exactly fits the current styling config based
	on getExperienceTileRelativeHeight.
]]
return function(
	style: StyleTypes.AppStyle,
	tileWidth: number,
	currentThumbnailAspectRatio: AspectRatioMode?,
	currentContentTextLineCount: number?,
	currentFooterHeight: number?,
	currentStyleProps: StyleProps?
): number
	local relativeHeight: UDim = getExperienceTileRelativeHeight(
		style,
		currentThumbnailAspectRatio,
		currentContentTextLineCount,
		currentFooterHeight,
		currentStyleProps
	)
	return math.floor(tileWidth * relativeHeight.Scale + relativeHeight.Offset)
end
