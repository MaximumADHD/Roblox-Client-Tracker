local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)
local validateTheme = require(ValidatorRoot.validateTheme)
local validateFont = require(ValidatorRoot.validateFont)

local StylePalette = t.strictInterface({
	Theme = validateTheme,
	Font = validateFont,
})

return StylePalette
