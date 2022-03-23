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

local ICON_SIZE = getIconSize(IconSize.Large)
local ICON_TEXT_PADDING = 10
local PADDING_LEFT_RIGHT = 10

local StatWidgetPropsInterface = t.strictInterface({
	countText = t.string,
	labelText = t.string,
	icon = validateImage
})

local PlayerCount = Roact.PureComponent:extend("PlayerCount")

PlayerCount.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	countLeft = StatWidgetPropsInterface,
	countRight = StatWidgetPropsInterface
})

function PlayerCount:render()
	return withStyle(function(style)
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
				size = UDim2.new(0.5, 0, 1, 0),
				horizontalAlignment = Enum.HorizontalAlignment.Left
			}, style),
			RightSection = self:renderStatWidget({
				stat = self.props.countRight,
				layoutOrder = 2,
				position = UDim2.new(1, 0, 0, 0),
				anchorPoint = Vector2.new(1, 0),
				size = UDim2.new(0.5, 0, 1, 0),
				horizontalAlignment = Enum.HorizontalAlignment.Right
			}, style)
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

	return Roact.createElement("Frame", {
		Position = position,
		AnchorPoint = anchorPoint,
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = horizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
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
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),
		TextSection = Roact.createElement("Frame", {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical
			}),
			Number = Roact.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
				Text = number,
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
