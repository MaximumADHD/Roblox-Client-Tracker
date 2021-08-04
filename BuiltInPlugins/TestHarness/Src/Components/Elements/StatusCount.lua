-- TODO: RIDE-3881 Add this component to DevFramework
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local StatusCount = Roact.PureComponent:extend("StatusCount")

StatusCount.defaultProps = {
	Size = UDim2.fromScale(0, 1),
	AutomaticSize = Enum.AutomaticSize.X,
	Spacing = 10,
	Padding = 10,
	IconSize = 16,
}

function StatusCount:wrapComponent(component)
	if not self.props.OnClick then
		return component
	end

	local props = self.props
	local layoutOrder = props.LayoutOrder
	local onClick = props.OnClick
	local size = props.Size
	local automaticSize = props.AutomaticSize

	return Roact.createElement("TextButton", {
		Size = size,
		AutomaticSize = automaticSize,
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		[Roact.Event.Activated] = onClick,
		Text = ""
	}, component)
end

function StatusCount:render()
	local props = self.props
	local text = props.Text
	local icon = props.Icon
	local iconSize = props.IconSize
	local padding = props.Padding
	local spacing = props.Spacing
	local style = props.OnClick and "BorderBox"

	return self:wrapComponent(Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		Padding = padding,
		Spacing = spacing,
		Style = style,
	}, {
		Icon = Roact.createElement(Pane, {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(iconSize, iconSize),
			Style = {
				Image = icon,
			}
		}),
		Text = text and Roact.createElement(TextLabel, {
			Text = text,
			LayoutOrder = 2,
			FitWidth = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	}))
end

StatusCount = withContext({
	Stylizer = Stylizer,
})(StatusCount)

return StatusCount
