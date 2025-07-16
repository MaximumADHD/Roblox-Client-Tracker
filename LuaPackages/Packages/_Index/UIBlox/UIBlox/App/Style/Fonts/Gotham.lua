local Font = require(script.Parent)

local baseSize = 16
-- Nominal size conversion
-- https://confluence.rbx.com/display/PX/Font+Metrics
local nominalSizeFactor = 1.2
local font: Font.FontPaletteNew = {
	BaseSize = baseSize * nominalSizeFactor,
	Title = {
		Font = Enum.Font.GothamBlack,
		RelativeSize = 32 / baseSize,
		RelativeMinSize = 24 / baseSize,
	},
	Header1 = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 20 / baseSize,
		RelativeMinSize = 16 / baseSize,
	},
	Header2 = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 16 / baseSize,
		RelativeMinSize = 12 / baseSize,
	},
	SubHeader1 = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 16 / baseSize,
		RelativeMinSize = 12 / baseSize,
	},
	Body = {
		Font = Enum.Font.Gotham,
		RelativeSize = 16 / baseSize,
		RelativeMinSize = 12 / baseSize,
	},
	CaptionHeader = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 12 / baseSize,
		RelativeMinSize = 9 / baseSize,
	},
	CaptionSubHeader = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 12 / baseSize,
		RelativeMinSize = 9 / baseSize,
	},
	CaptionBody = {
		Font = Enum.Font.Gotham,
		RelativeSize = 12 / baseSize,
		RelativeMinSize = 9 / baseSize,
	},
	Footer = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 10 / baseSize,
		RelativeMinSize = 8 / baseSize,
	},
	HeadingLarge = {
		Font = Enum.Font.GothamBlack,
		RelativeSize = 32 / baseSize,
		RelativeMinSize = 24 / baseSize,
	},
	HeadingSmall = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 20 / baseSize,
		RelativeMinSize = 16 / baseSize,
	},
	TitleLarge = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 16 / baseSize,
		RelativeMinSize = 12 / baseSize,
	},
	BodyLarge = {
		Font = Enum.Font.Gotham,
		RelativeSize = 16 / baseSize,
		RelativeMinSize = 12 / baseSize,
	},
	CaptionLarge = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 12 / baseSize,
		RelativeMinSize = 9 / baseSize,
	},
	BodySmall = {
		Font = Enum.Font.Gotham,
		RelativeSize = 12 / baseSize,
		RelativeMinSize = 9 / baseSize,
	},
	CaptionSmall = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = 10 / baseSize,
		RelativeMinSize = 8 / baseSize,
	},
}

return font
