--[[
	A basic pane with minimal configuration.
	All standard props are passed through to the underlying instance, which may be a Frame or ImageLabel.

	Optional Props:
		BackgroundColor: Override the color of the background.
		BorderColor: Override the color of the border image color.
		Padding: An optional number or table adding a UIPadding instance.
		Layout: An optional Enum.FillDirection adding a UIListLayout instance.
		Spacing: An optional number or UDim to space elements out by.

	Styles:
		Default: The pane has no background
		Box: The pane has the current theme's main background.
		RoundBox: The pane has the current theme's main background with the standard rounded border.
]]

local Framework = script.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.packages.Dash)
local assign = Dash.assign
local join = Dash.join
local omit = Dash.omit

local Pane = Roact.PureComponent:extend("Pane")

function Pane:render()
	local props = self.props
	local style = props.Stylizer
	local children = props[Roact.Children] or {}

	local padding = props.Padding
	if padding then
		local isPaddingNumber = type(padding) == "number"
		children.Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, isPaddingNumber and padding or padding.Top or 0),
			PaddingBottom = UDim.new(0, isPaddingNumber and padding or padding.Bottom or 0),
			PaddingLeft = UDim.new(0, isPaddingNumber and padding or padding.Left or 0),
			PaddingRight = UDim.new(0, isPaddingNumber and padding or padding.Right or 0),
		})
	end
	if props.Layout then
		local spacing
		if props.Spacing then
			if typeof(props.Spacing) == "number" then
				spacing = UDim.new(0, props.Spacing)
			else
				spacing = props.Spacing
			end
		end
		children.Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = props.Layout,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = spacing,
		})
	end

	local automaticSize = props.AutomaticSize
	local scaleX = 1
	local scaleY = 1
	if automaticSize then
		if automaticSize == Enum.AutomaticSize.X or automaticSize == Enum.AutomaticSize.XY then
			scaleX = 0
		end
		if automaticSize == Enum.AutomaticSize.Y or automaticSize == Enum.AutomaticSize.XY then
			scaleY = 0
		end
	end

	local className = "Frame"
	local defaultProps = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = props.Size or UDim2.fromScale(scaleX, scaleY),
	}
	local color = props.BackgroundColor3 or props.BackgroundColor or style.Background
	if color then
		defaultProps.BackgroundTransparency = 0
	end
	if style.Image then
		className = "ImageLabel"
		assign(defaultProps, {
			Image = style.Image,
			ImageColor3 = color,
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = style.SliceCenter,
		})
	elseif color then
		defaultProps.BackgroundColor3 = color
	end
	if style.Border then
		children = {
			Contents = Roact.createElement("ImageLabel", {
				Size = UDim2.fromScale(scaleX, scaleY),
				AutomaticSize = automaticSize,
				Image = style.Border.Image,
				ImageColor3 = props.BorderColor or style.Border.Background,
				BackgroundTransparency = 1,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = style.Border.SliceCenter,
			}, children)
		}
	end
	local componentProps = omit(join(defaultProps, props), {
		Roact.Children,
		"BackgroundColor",
		"BorderColor",
		"Padding",
		"Layout",
		"Spacing",
		"Style",
		"Stylizer"
	})
	
	return Roact.createElement(className, componentProps, children)
end

ContextServices.mapToProps(Pane, {
	Stylizer = ContextServices.Stylizer
})

return Pane
