local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local TextLabel = UI.Decoration.TextLabel

local LeftTruncateTextLabel = require(Plugin.Src.Components.LeftTruncateTextLabel)

local StudioService = game:GetService("StudioService")

local RightCell = Roact.PureComponent:extend("RightCell")

function RightCell:getIcon()
	local props = self.props
	if type(props.Value) ~= "userdata" then
		return
	end
	local icon = StudioService:GetClassIcon(props.Value.ClassName)
	local iconSize = icon.ImageRectSize or Vector2.new()
	local padding = 2
	return Roact.createElement("ImageLabel", {
		Size = UDim2.fromOffset(iconSize.X, iconSize.Y),
		BackgroundTransparency = 1,
		Image = icon.Image,
		ImageRectSize = iconSize,
		ImageRectOffset = icon.ImageRectOffset,
		Position = UDim2.new(0, padding, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5)
	})
end

function RightCell:render()
	local props = self.props
	local style = props.Style
	local backgroundColor = if (props.RowIndex % 2) == 1 then style.BackgroundOdd else style.BackgroundEven
	local width = props.Width or UDim.new(1 / #props.Columns, 0)
	local tooltipText = if props.Value then tostring(props.Value) else nil
	
	local icon = self:getIcon()
	local iconWidth = 24

	local label
	if icon then
		label = Roact.createElement(TextLabel, {
			TextColor = props.Style.Text,
			TextTruncate = Enum.TextTruncate.AtEnd,
			Position = UDim2.fromOffset(iconWidth, 0),
			Size = UDim2.new(1, -iconWidth, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = props.ColumnIndex,
			Text = tostring(props.Value),
		})
	else
		label = Roact.createElement(LeftTruncateTextLabel, {
			TextColor = props.Style.Text,
			Size = UDim2.fromScale(1, 1),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = props.ColumnIndex,
			Text = tostring(props.Value),
		})
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.ColumnIndex,
		Padding = {
			Top = 1,
			Bottom = 1,
			Left = 5,
			Right = 5,
		},
		Style = "Box",
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 1,
		BorderColor3 = style.Border,
		Size = UDim2.new(width.Scale, width.Offset, 1, 0),
	}, {
		Icon = icon,
		Label = label,
		Tooltip = tooltipText and Roact.createElement(Tooltip, {
			MaxWidth = style.Tooltip.MaxWidth,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end



return RightCell
