local getThemeFromName = require(script.Parent.Themes.getThemeFromName)
local getFontFromName = require(script.Parent.Fonts.getFontFromName)
local Constants = require(script.Parent.Constants)

local StylePalette = {}
StylePalette.__index = StylePalette

local DEFAULT_FONT = Constants.FontName.Gotham
local FONT_MAP = {
	[Constants.FontName.Gotham] = require(script.Parent.Fonts.Gotham),
}

local DEFAULT_THEME = Constants.ThemeName.Light
local THEME_MAP = {
	[Constants.ThemeName.Dark] = require(script.Parent.Themes.DarkTheme),
	[Constants.ThemeName.Light] = require(script.Parent.Themes.LightTheme),
}

function StylePalette.new(style)
	--By default a new style will be empty.
	-- This will allow the font and theme to be merged independently even when one is empty.
	local self = {}

	if style ~= nil then
		self.Font = style.Font
		self.Theme = style.Theme
	end

	setmetatable(self, StylePalette)
	return self
end

function StylePalette:updateFont(fontName)
	self.Font = getFontFromName(fontName, DEFAULT_FONT, FONT_MAP)
end

function StylePalette:updateTheme(themeName)
	self.Theme = getThemeFromName(themeName, DEFAULT_THEME, THEME_MAP)
end

function StylePalette:currentStyle()
	local style = {
		Font = self.Font,
		Theme = self.Theme,
	}
	return style
end

return StylePalette