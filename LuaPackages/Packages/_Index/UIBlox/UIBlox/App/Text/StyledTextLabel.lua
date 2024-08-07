local Text = script.Parent
local App = Text.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local validateColorToken = require(UIBlox.Core.Style.Validator.validateColorToken)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

--[[
	At this point this is just a wrapper for the GenericTextLabel for external use
]]
local StyledTextLabel = Roact.PureComponent:extend("StyledTextLabel")

StyledTextLabel.validateProps = t.strictInterface({
	-- Determines the string rendered by the UI element
	text = t.string,
	-- The Font table from the style palette
	fontStyle = t.union(validateFontInfo, validateTypographyInfo),
	-- The color table from the style palette
	colorStyle = t.union(validateColorInfo, validateColorToken),
	-- Controls the truncation of the text displayed in this text label
	textTruncate = t.optional(t.EnumItem),
	-- Controls the wrapping of the text displayed in this text label
	textWrapped = t.optional(t.boolean),
	-- Determines the horizontal alignment of rendered text
	textXAlignment = t.optional(t.EnumItem),
	-- Determines the vertical alignment of rendered text
	textYAlignment = t.optional(t.EnumItem),
	-- Determine the pixel and scalar size of the text label. By default it will size to the text string.
	size = t.optional(t.UDim2),
	-- The max size available for the textbox
	maxSize = t.optional(t.Vector2),
	-- Determines whether the TextLabel renders the `text` prop string using rich text formatting
	richText = t.optional(t.boolean),
	-- The layout order of this component
	layoutOrder = t.optional(t.number),
	-- Whether the TextLabel is Fluid Sizing between the font's min and default sizes
	fluidSizing = t.optional(t.boolean),
	-- Determines whether resizing occurs based on child content
	automaticSize = t.optional(t.EnumItem),
	lineHeight = t.optional(t.number),
	clipsDescendants = t.optional(t.boolean),
	onAbsoluteSizeChange = t.optional(t.callback),
	openTypeFeatures = t.optional(t.string),
})

StyledTextLabel.defaultProps = {
	textXAlignment = Enum.TextXAlignment.Left,
	textYAlignment = Enum.TextYAlignment.Center,
	richText = true,
	fluidSizing = true,
	automaticSize = Enum.AutomaticSize.None,
	lineHeight = 1.4,
	clipsDescendants = false,
	openTypeFeatures = nil,
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
		TextWrapped = self.props.textWrapped,
		LayoutOrder = self.props.layoutOrder,
		RichText = self.props.richText,
		AutomaticSize = self.props.automaticSize,
		LineHeight = self.props.lineHeight,
		ClipsDescendants = self.props.clipsDescendants,
		openTypeFeatures = self.props.openTypeFeatures,
		[Roact.Change.AbsoluteSize] = self.props.onAbsoluteSizeChange,
	})
end

return StyledTextLabel
