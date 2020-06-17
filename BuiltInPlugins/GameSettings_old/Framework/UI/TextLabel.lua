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
		boolean TextWrapped: Whether the text label should wrap.
		number ZIndex: The render index of this component.

	Style Values:
		Color3 Color: The color of the box.
		number Transparency: The transparency of the box.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize

local TextLabel = Roact.PureComponent:extend("TextLabel")
Typecheck.wrap(TextLabel, script)

local FFlagTextLabelProps = game:DefineFastFlag("TextLabelProps", false)

function TextLabel:render()
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local text = self.props.Text
	local theme = self.props.Theme
	local textWrapped = self.props.TextWrapped
	local zIndex = self.props.ZIndex
	local style = theme:getStyle("Framework", self)

	local backgroundTransparency = prioritize(self.props.BackgroundTransparency, style.BackgroundTransparency, 1)
	local font = prioritize(self.props.Font, style.Font)
	local textColor = prioritize(self.props.TextColor, style.TextColor)
	local textSize = prioritize(self.props.TextSize, style.TextSize)
	local transparency = prioritize(self.props.TextTransparency, style.TextTransparency)
	local textXAlignment = prioritize(self.props.TextXAlignment, style.TextXAlignment)
	local textYAlignment = prioritize(self.props.TextYAlignment, style.TextYAlignment)


	return Roact.createElement("TextLabel", {
		BackgroundTransparency = backgroundTransparency,
		Font = font,
		LayoutOrder = layoutOrder,
		Size = size,
		Text = text,
		TextColor3 = textColor,
		TextSize = textSize,
		TextTransparency = transparency,
		TextWrapped = FFlagTextLabelProps and textWrapped or nil,
		TextXAlignment = textXAlignment,
		TextYAlignment = textYAlignment,
		ZIndex = FFlagTextLabelProps and zIndex or nil,
	}, self.props[Roact.Children])
end

ContextServices.mapToProps(TextLabel, {
	Theme = ContextServices.Theme,
})

return TextLabel
