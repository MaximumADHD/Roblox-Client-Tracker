local validatorRoot = script.Parent
local ToastRoot = validatorRoot.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local t = require(Packages.t)

local validateColorInfo = require(UIBloxRoot.Core.Style.Validator.validateColorInfo)

return t.strictInterface({
	-- ImageSet compatible image info or image directory
	Image = t.union(t.table, t.string),
	Size = t.UDim2,

	AnchorPoint = t.optional(t.Vector2),
	-- The color table from the style palette
	colorStyle = t.optional(validateColorInfo),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
})