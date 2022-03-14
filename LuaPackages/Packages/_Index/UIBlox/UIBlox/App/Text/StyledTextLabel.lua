local Text = script.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local DEFAULT_LINE_HEIGHT = 1.4

--[[
	At this point this is just a wrapper for the GenericTextLabel for external use
]]
local StyledTextLabel = Roact.PureComponent:extend("StyledTextLabel")


StyledTextLabel.validateProps = t.strictInterface({
	text = t.string,
	fontStyle = validateFontInfo,
	colorStyle = validateColorInfo,

	textTruncate = t.optional(t.EnumItem),
	textXAlignment = t.optional(t.EnumItem),
	textYAlignment = t.optional(t.EnumItem),

	size = t.optional(t.UDim2),

	maxSize = t.optional(t.Vector2),

	richText = t.optional(t.boolean),
	layoutOrder = t.optional(t.number),
	fluidSizing = t.optional(t.boolean),

	automaticSize = t.optional(t.EnumItem),
	lineHeight = t.optional(t.number),
})

StyledTextLabel.defaultProps = {
	textXAlignment = Enum.TextXAlignment.Left,
	textYAlignment = Enum.TextYAlignment.Center,
	richText = true,
	fluidSizing = true,
	automaticSize = Enum.AutomaticSize.None,
}

function StyledTextLabel:render()
	return Roact.createElement(GenericTextLabel, {
		maxSize = self.props.maxSize,
		fontStyle = self.props.fontStyle,
		colorStyle = self.props.colorStyle,
		fluidSizing = self.props.fluidSizing,


		Size = self.props.size,
		Text = self.props.text,
		TextXAlignment = self.props.textXAlignment,
		TextYAlignment = self.props.textYAlignment,
		TextTruncate = self.props.textTruncate,
		LayoutOrder = self.props.layoutOrder,
		RichText = self.props.richText,
		AutomaticSize = self.props.automaticSize,
		LineHeight = self.props.lineHeight or DEFAULT_LINE_HEIGHT,
	})
end

return StyledTextLabel
