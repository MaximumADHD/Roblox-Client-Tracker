local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ImagesTypes = require(App.ImageSet.ImagesTypes)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local StatWidget = require(App.Indicator.StatWidget)
local Fonts = require(App.Style.Fonts)
local useStyle = require(UIBlox.Core.Style.useStyle)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local TEXT_MAX_BOUND = 10000
local ICON_SIZE = getIconSize(IconSize.Large)
local ICON_TEXT_PADDING = 12

type StatWidgetProps = {
	countText: string,
	labelText: string,
	icon: ImagesTypes.ImageSetImage,
}

export type Props = {
	layoutOrder: number,
	countLeft: StatWidgetProps,
	countRight: StatWidgetProps,
}

local function getTextWidth(text, fontStyle: Fonts.Font, style)
	local baseSize = style.Font.BaseSize
	local fontSize = fontStyle.RelativeSize * baseSize
	local bounds = Vector2.new(TEXT_MAX_BOUND, TEXT_MAX_BOUND)
	return GetTextSize(text, fontSize, fontStyle.Font, bounds).X
end

local function getMeasuredSectionWidth(countInfo, style)
	local countWidth = getTextWidth(countInfo.countText, style.Font.Title, style)
	local labelWidth = getTextWidth(countInfo.labelText, style.Font.CaptionHeader, style)
	return math.max(countWidth, labelWidth) + ICON_SIZE + ICON_TEXT_PADDING
end

local function PlayerCount(props: Props)
	local style = useStyle()

	local leftSectionWidth = getMeasuredSectionWidth(props.countLeft, style)
	local rightSectionWidth = getMeasuredSectionWidth(props.countRight, style)
	local leftSectionWeight = leftSectionWidth / (leftSectionWidth + rightSectionWidth)
	local rightSectionWeight = 1.0 - leftSectionWeight

	local countLeft = props.countLeft
	local countRight = props.countRight

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		LeftSection = React.createElement(StatWidget, {
			countText = countLeft.countText,
			labelText = countLeft.labelText,
			icon = countLeft.icon,
			layoutOrder = 1,
			position = UDim2.new(0, 0, 0, 0),
			anchorPoint = Vector2.new(0, 0),
			size = UDim2.new(leftSectionWeight, 0, 1, 0),
			horizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
		RightSection = React.createElement(StatWidget, {
			countText = countRight.countText,
			labelText = countRight.labelText,
			icon = countRight.icon,
			layoutOrder = 2,
			position = UDim2.new(1, 0, 0, 0),
			anchorPoint = Vector2.new(1, 0),
			size = UDim2.new(rightSectionWeight, 0, 1, 0),
			horizontalAlignment = Enum.HorizontalAlignment.Right,
		}),
	})
end

return PlayerCount
