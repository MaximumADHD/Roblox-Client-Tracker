local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

--[[
	Currently we have two ways of referencing font styles: through style.Tokens and style.Font.
	In the period of time while we are migrating towards tokens, we can accept both as valid font
	types and consumers can handle both.

	TypographyItem from App/Style/StyleTypes is the tokens-friendly luau type.
	Here we redefine as an interface for convenience in unioning with validateFontInfo.
]]

return t.strictInterface({
	Font = t.EnumItem,
	FontSize = t.numberMinExclusive(0),
	LineHeight = t.numberMinExclusive(0),
	LetterSpacing = t.numberMin(0),
})
