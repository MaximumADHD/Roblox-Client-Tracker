--[[
	A horizontal collection of RoundTextButtons.

	Props:
		Enum.HorizontalAlignment HorizontalAlignment = The alignment of the button bar.
			Determines if buttons should be centered or aligned to one corner.
		table Buttons = The buttons to add to this button bar.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Stylizer = Framework.Style.Stylizer

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)

local Button = Framework.UI.Button
local ButtonBar = Roact.PureComponent:extend("ButtonBar")

function ButtonBar:render()
	local props = self.props
	
	local theme = props.Stylizer
	
	local horizontalAlignment = props.HorizontalAlignment
	local buttons = props.Buttons
	local children = props[Roact.Children]

	local components = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, theme.buttonBar.padding),
			HorizontalAlignment = horizontalAlignment,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}, children)
	}

	if horizontalAlignment ~= Enum.HorizontalAlignment.Center then
		table.insert(components, Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, theme.buttonBar.edgePadding),
			PaddingLeft = UDim.new(0, 0),
		}))
	end
	
	for i, button in ipairs(buttons) do
		table.insert(components, Roact.createElement(Button, {
			LayoutOrder = i,
			Style = button.Style,
			Size = UDim2.new(0, Constants.BUTTON_WIDTH, 1, 0), 
			StyleModifier = button.StyleModifier,
			Text = button.Name,
			ZIndex = props.ZIndex or 1,
			OnClick = button.OnPressed
		}))
	end

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder or 1,
		Size = UDim2.new(1, 0, 0, Constants.BUTTON_HEIGHT),
		AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
		Position = props.Position or UDim2.new(0, 0, 0.5, 0),
		BackgroundTransparency = 1,
	}, components)
end

ButtonBar = withContext({
	Stylizer = Stylizer
})(ButtonBar)



return ButtonBar
