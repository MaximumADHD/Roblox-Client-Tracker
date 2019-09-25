local UIBloxRoot = script.Parent.Parent.Parent
local t = require(UIBloxRoot.Parent.t)
local validateColor = require(UIBloxRoot.Style.Validator.validateColor)

return t.strictInterface({
	-- ImageSet compatible image info or image directory
	Image = t.union(t.table, t.string),
	Size = t.UDim2,

	AnchorPoint = t.optional(t.Vector2),
	-- The color table from the style palette
	colorStyle = t.optional(validateColor),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
})