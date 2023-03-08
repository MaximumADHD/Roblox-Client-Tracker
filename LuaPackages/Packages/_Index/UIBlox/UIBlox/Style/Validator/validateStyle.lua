local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

local validateFont = require(ValidatorRoot.validateFont)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)
local validateTheme = if UIBloxConfig.useNewThemeColorPalettes
	then require(UIBloxRoot.App.Style.Validator.validateThemeNew)
	else require(ValidatorRoot.validateTheme)

if UIBloxConfig.enableRoDSDesignTokenSupport then
	local validateTokens = require(UIBloxRoot.App.Style.Validator.validateTokens)
	local StylePalette = t.strictInterface({
		Theme = validateTheme,
		Font = validateFont,
		Tokens = t.optional(validateTokens),
	})
	return StylePalette
else
	local StylePalette = t.strictInterface({
		Theme = validateTheme,
		Font = validateFont,
	})
	return StylePalette
end
