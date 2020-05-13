local Style = script.Parent
local getThemeFromName = require(Style.Themes.getThemeFromName)
local getFontFromName = require(Style.Fonts.getFontFromName)
local Constants = require(Style.Constants)

local validateStyle = require(Style.Validator.validateStyle)

local AppStylePalette = {}
AppStylePalette.__index = AppStylePalette

local DEFAULT_FONT = Constants.FontName.Gotham
local FONT_MAP = {
	[Constants.FontName.Gotham] = require(script.Parent.Fonts.Gotham),
}

local DEFAULT_THEME = Constants.ThemeName.Light
local THEME_MAP = {
	[Constants.ThemeName.Dark] = require(script.Parent.Themes.DarkTheme),
	[Constants.ThemeName.Light] = require(script.Parent.Themes.LightTheme),
}

function AppStylePalette.new(style)
	--By default a new style will be empty.
	-- This will allow the font and theme to be merged independently even when one is empty.
	local self = {}

	if style ~= nil then
		self.Font = style.Font
		self.Theme = style.Theme
	else
		self.Font = getFontFromName("", DEFAULT_FONT, FONT_MAP)
		self.Theme = getThemeFromName("", DEFAULT_THEME, THEME_MAP)
	end

	setmetatable(self, AppStylePalette)
	return self
end

function AppStylePalette:updateFont(fontName)
	self.Font = getFontFromName(fontName, DEFAULT_FONT, FONT_MAP)
end

function AppStylePalette:updateTheme(themeName)
	self.Theme = getThemeFromName(themeName, DEFAULT_THEME, THEME_MAP)
end

function AppStylePalette:currentStyle()
	local style = {
		Font = self.Font,
		Theme = self.Theme,
	}

	assert(validateStyle(style))
	return style
end

return AppStylePalette