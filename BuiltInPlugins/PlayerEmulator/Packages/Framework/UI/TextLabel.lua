--[[
	A simple TextLabel.

	Required Props:
		string Text: The text to display in this button.

	Optional Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		number LayoutOrder: The layout order of this component in a list.
		UDim2 Size: The size of this component.
		UDim2 Position: The position of this component.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		Color3 TextColor: The color of the text label.
		boolean TextWrapped: Whether the text label should wrap.
		number ZIndex: The render index of this component.
		number TextTransparency: The transparency of this text.
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.

	Style Values:
		Color3 TextColor: The color of the text label.
		number BackgroundTransparency: The transparency of the text label.
		number TextTransparency: The transparency of this text.
		Enum.TextXAlignment TextXAlignment: The x alignment of this text.
		Enum.TextYAlignment TextYAlignment: The y alignment of this text.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local TextLabel = Roact.PureComponent:extend("TextLabel")
Typecheck.wrap(TextLabel, script)

function TextLabel:render()
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local position = self.props.Position
	local text = self.props.Text
	local theme = self.props.Theme
	local textWrapped = self.props.TextWrapped
	local zIndex = self.props.ZIndex

	local style
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		style = self.props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

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
		Position = position,
		Text = text,
		TextColor3 = textColor,
		TextSize = textSize,
		TextTransparency = transparency,
		TextWrapped = textWrapped,
		TextXAlignment = textXAlignment,
		TextYAlignment = textYAlignment,
		ZIndex = zIndex,
	}, self.props[Roact.Children])
end

ContextServices.mapToProps(TextLabel, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return TextLabel
