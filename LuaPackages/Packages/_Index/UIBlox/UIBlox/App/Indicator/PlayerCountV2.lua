local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local React = require(Packages.React)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local StatWidget = require(App.Indicator.StatWidget)
local useStyle = require(UIBlox.Core.Style.useStyle)
local validateImage = require(UIBlox.Core.ImageSet.Validator.validateImage)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local devOnly = require(UIBlox.Utility.devOnly)

local TEXT_MAX_BOUND = 10000
local ICON_SIZE = getIconSize(IconSize.Large)
local ICON_TEXT_PADDING = 12

local StatWidgetPropsInterface = t.strictInterface({
	countText = t.string,
	labelText = t.string,
	icon = validateImage,
})

local validateProps = devOnly(t.strictInterface({
	layoutOrder = t.integer,
	countLeft = StatWidgetPropsInterface,
	countRight = StatWidgetPropsInterface,
}))

local function getTextWidth(text, fontStyle, style)
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
	assert(validateProps(props))

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
