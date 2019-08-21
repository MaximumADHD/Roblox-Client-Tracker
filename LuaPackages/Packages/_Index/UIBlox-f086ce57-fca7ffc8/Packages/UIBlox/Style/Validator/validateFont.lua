local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

local Font = t.strictInterface({
	Font = t.EnumItem,
	RelativeSize = t.numberMinExclusive(0),
})

local FontPalette = t.strictInterface({
	BaseSize = t.numberMinExclusive(0),
	Title = Font,
	Header1 = Font,
	Header2 = Font,
	SubHeader1 = Font,
	Body = Font,
	CaptionHeader = Font,
	CaptionSubHeader = Font,
	CaptionBody = Font,
	Footer = Font,
})

return FontPalette
