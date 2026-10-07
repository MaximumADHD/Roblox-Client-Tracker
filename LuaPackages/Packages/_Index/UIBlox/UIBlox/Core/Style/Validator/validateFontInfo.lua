local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Foundation = require(Packages.Foundation)
local t = require(Packages.t)

local validateFontFace = require(script.Parent.validateFontFace)
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration

export type FontInfo = {
	RelativeSize: number,
	RelativeMinSize: number,
	Font: Font | Enum.Font,
	FontFace: Font?,
}

return t.strictInterface({
	RelativeSize = t.numberMinExclusive(0),
	RelativeMinSize = t.numberMinExclusive(0),
	Font = if FFlagFoundationFontFaceMigration then t.union(t.EnumItem, validateFontFace) else t.EnumItem,
	FontFace = if FFlagFoundationFontFaceMigration then t.optional(validateFontFace) else nil,
})
