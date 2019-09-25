local UIBloxRoot = script.Parent.Parent.Parent
local t = require(UIBloxRoot.Parent.t)
local validateFontInfo = require(UIBloxRoot.Style.Validator.validateFontInfo)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)

return t.strictInterface({
	-- The color table from the style palette
	colorStyle = validateColor,
	-- The Font table from the style palette
	fontStyle = validateFontInfo,
	Size = t.UDim2,
	Text = t.string,

	AnchorPoint = t.optional(t.Vector2),
	-- Whether the TextLabel is Fluid Sizing between the font's min and default sizes (optional)
	fluidSizing = t.optional(t.boolean),
	LayoutOrder = t.optional(t.integer),
	-- The max size avaliable for the textbox
	maxSize = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	TextTruncate = t.optional(t.EnumItem),
	TextXAlignment = t.optional(t.EnumItem),
	TextYAlignment = t.optional(t.EnumItem),
})