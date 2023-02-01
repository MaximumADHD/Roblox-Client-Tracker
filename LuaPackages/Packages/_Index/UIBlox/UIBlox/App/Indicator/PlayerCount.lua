local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local validateImage = require(UIBlox.Core.ImageSet.Validator.validateImage)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local TEXT_MAX_BOUND = 10000

local ICON_SIZE = getIconSize(IconSize.Large)
local ICON_TEXT_PADDING = 12
local PADDING_LEFT_RIGHT = 12

local StatWidgetPropsInterface = t.strictInterface({
	countText = t.string,
	labelText = t.string,
	icon = validateImage,
})

local PlayerCount = Roact.PureComponent:extend("PlayerCount")

PlayerCount.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	countLeft = StatWidgetPropsInterface,
	countRight = StatWidgetPropsInterface,
})

function PlayerCount:init()
	self.getTextWidth = function(text, fontStyle, style)
		local baseSize = style.Font.BaseSize
		local fontSize = fontStyle.RelativeSize * baseSize
		local bounds = Vector2.new(TEXT_MAX_BOUND, TEXT_MAX_BOUND)
		return GetTextSize(text, fontSize, fontStyle.Font, bounds).X
	end
	self.getMeasuredSectionWidth = function(countInfo, style)
		local countWidth = self.getTextWidth(countInfo.countText, style.Font.Title, style)
		local labelWidth = self.getTextWidth(countInfo.labelText, style.Font.CaptionHeader, style)
		return math.max(countWidth, labelWidth) + ICON_SIZE + ICON_TEXT_PADDING
	end
end

function PlayerCount:render()
	return withStyle(function(style)
		local leftSectionWidth = self.getMeasuredSectionWidth(self.props.countLeft, style)
		local rightSectionWidth = self.getMeasuredSectionWidth(self.props.countRight, style)
		local leftSectionWeight = leftSectionWidth / (leftSectionWidth + rightSectionWidth)
		local rightSectionWeight = 1.0 - leftSectionWeight
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			LeftSection = self:renderStatWidget({
				stat = self.props.countLeft,
				layoutOrder = 1,
				position = UDim2.new(0, 0, 0, 0),
				anchorPoint = Vector2.new(0, 0),
				size = if UIBloxConfig.fixGameDetailsAutomaticSize
					then UDim2.new(leftSectionWeight, 0, 0, 0)
					else UDim2.new(leftSectionWeight, 0, 1, 0),
				automaticSize = if UIBloxConfig.fixGameDetailsAutomaticSize then Enum.AutomaticSize.Y else nil,
				horizontalAlignment = Enum.HorizontalAlignment.Left,
			}, style),
			RightSection = self:renderStatWidget({
				stat = self.props.countRight,
				layoutOrder = 2,
				position = UDim2.new(1, 0, 0, 0),
				anchorPoint = Vector2.new(1, 0),
				size = if UIBloxConfig.fixGameDetailsAutomaticSize
					then UDim2.new(rightSectionWeight, 0, 0, 0)
					else UDim2.new(rightSectionWeight, 0, 1, 0),
				automaticSize = if UIBloxConfig.fixGameDetailsAutomaticSize then Enum.AutomaticSize.Y else nil,
				horizontalAlignment = Enum.HorizontalAlignment.Right,
			}, style),
		})
	end)
end

function PlayerCount:renderStatWidget(widgetProps, style)
	local icon = widgetProps.stat.icon
	local number = widgetProps.stat.countText
	local label = widgetProps.stat.labelText
	local position = widgetProps.position
	local anchorPoint = widgetProps.anchorPoint
	local size = widgetProps.size
	local horizontalAlignment = widgetProps.horizontalAlignment
	local layoutOrder = widgetProps.layoutOrder
	local automaticSize = widgetProps.automaticSize

	return Roact.createElement("Frame", {
		Position = position,
		AnchorPoint = anchorPoint,
		Size = size,
		AutomaticSize = if UIBloxConfig.fixGameDetailsAutomaticSize then automaticSize else nil,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = horizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, ICON_TEXT_PADDING),
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING_LEFT_RIGHT),
			PaddingRight = UDim.new(0, PADDING_LEFT_RIGHT),
		}),
		Icon = Roact.createElement(ImageSetLabel, {
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			Image = icon,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
		}),
		TextSection = Roact.createElement("Frame", {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, ICON_SIZE + ICON_TEXT_PADDING, 0, 0),
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Number = Roact.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
				Text = number,
				fluidSizing = true,
				TextWrapped = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.Title,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
			Label = Roact.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				Text = label,
				fluidSizing = true,
				TextWrapped = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.CaptionHeader,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
		}),
	})
end

return PlayerCount
