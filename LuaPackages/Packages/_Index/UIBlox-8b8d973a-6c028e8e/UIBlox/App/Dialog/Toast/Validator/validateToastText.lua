local validatorRoot = script.Parent
local ToastRoot = validatorRoot.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local t = require(Packages.t)

local validateFontInfo = require(UIBloxRoot.Core.Style.Validator.validateFontInfo)
local validateColorInfo = require(UIBloxRoot.Core.Style.Validator.validateColorInfo)

return t.strictInterface({
	-- The color table from the style palette
	colorStyle = validateColorInfo,
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