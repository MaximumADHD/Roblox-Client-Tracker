local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

local validateFont = require(ValidatorRoot.validateFont)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)
local validateTheme = if UIBloxConfig.useNewThemeColorPalettes
	then require(UIBloxRoot.App.Style.Validator.validateThemeNew)
	else require(ValidatorRoot.validateTheme)

local StylePalette = t.strictInterface({
	Theme = validateTheme,
	Font = validateFont,
	Dimensions = t.optional(t.strictInterface({
		IconSizeMap = t.table,
	})),
})

return StylePalette
