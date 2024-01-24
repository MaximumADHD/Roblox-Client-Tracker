local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

local Font = require(UIBlox.Core.Style.Validator.validateFontInfo)

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

local FontPaletteNew = t.strictInterface({
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
	HeadingLarge = Font,
	HeadingSmall = Font,
	TitleLarge = Font,
	BodyLarge = Font,
	CaptionLarge = Font,
	BodySmall = Font,
	CaptionSmall = Font,
})

return t.union(FontPalette, FontPaletteNew)
