local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local GroupButton = Roact.Component:extend("GroupButton")

function GroupButton:init()
	self.state = {
		Hovering = false,
	}
	self.mouseEnter = function()
		self:setState({
			Hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			Hovering = false,
		})
	end
end

function GroupButton:render()
	local props = self.props
	local style = props.Stylizer

	return Roact.createElement(Button, {
		Size = style.Size,
		Padding = style.Padding,
		LayoutOrder = props.LayoutOrder,
		Style = {
			Foreground = Image,
			ForegroundStyle = {
				Image = if self.state.Hovering then style.HoveredImage else style.Image,
				Size = style.ImageSize,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ScaleType = Enum.ScaleType.Stretch
			},
			Background = Pane,
			BackgroundStyle = "None",
		},

		OnClick = props.OnClick,
		OnMouseEnter = self.mouseEnter,
		OnMouseLeave = self.mouseLeave,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
		Tooltip = Roact.createElement(Tooltip, {
			Text = props.TooltipMessage,
		})
	})
end

GroupButton = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupButton)

return GroupButton
