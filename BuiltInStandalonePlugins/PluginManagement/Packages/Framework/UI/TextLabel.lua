--[[
	A simple TextLabel.

	Required Props:
		string Text: The text to display in this button.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		number LayoutOrder: The layout order of this component in a list.
		UDim2 Size: The size of this component.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.

	Style Values:
		Color3 Color: The color of the box.
		number Transparency: The transparency of the box.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Typecheck = require(Framework.Util).Typecheck

local TextLabel = Roact.PureComponent:extend("TextLabel")
Typecheck.wrap(TextLabel, script)

function TextLabel:render()
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local text = self.props.Text
	local theme = self.props.Theme
	local style = theme:getStyle("Framework", self)

	local font = style.Font
	local textColor = style.TextColor
	local textSize = style.TextSize
	local transparency = style.TextTransparency
	local textXAlignment = style.TextXAlignment
	local textYAlignment = style.TextYAlignment

	return Roact.createElement("TextLabel", {
		BackgroundTransparency = 1,
		Font = font,
		LayoutOrder = layoutOrder,
		Size = size,
		Text = text,
		TextColor3 = textColor,
		TextSize = textSize,
		TextTransparency = transparency,
		TextXAlignment = textXAlignment,
		TextYAlignment = textYAlignment,
	}, self.props[Roact.Children])
end

ContextServices.mapToProps(TextLabel, {
	Theme = ContextServices.Theme,
})

return TextLabel
