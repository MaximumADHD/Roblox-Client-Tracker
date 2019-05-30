--[[
	The is a wrapper for the style provider for apps.
	props:
		style : table - Includes the name of the theme and font being used.
		{
			themeName : string - The name of the theme being used.
			fontName : string - The name of the font being used.
		}
]]
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local StyleProvider = UIBlox.Style.Provider

local AppStyleProvider = Roact.Component:extend("AppStyleProvider")

local getThemeFromName = require(script.Parent.Themes.getThemeFromName)
local getFontFromName = require(script.Parent.Fonts.getFontFromName)
local Constants = require(script.Parent.Constants)

local DEFAULT_FONT = Constants.FontName.Gotham
local FONT_MAP = {
	[Constants.FontName.Gotham] = require(script.Parent.Fonts.Gotham),
}

local DEFAULT_THEME = Constants.ThemeName.Dark
local THEME_MAP = {
	[Constants.ThemeName.Dark] = require(script.Parent.Themes.DarkTheme),
	[Constants.ThemeName.Light] = require(script.Parent.Themes.LightTheme),
}

function AppStyleProvider:render()
	local style = self.props.style
	ArgCheck.isNotNil(style, "style prop for AppStyleProvider")
	local appTheme = getThemeFromName(style.themeName, DEFAULT_THEME, THEME_MAP)
	local appFont = getFontFromName(style.fontName, DEFAULT_FONT, FONT_MAP)
	local appStyle = {
		Theme = appTheme,
		Font = appFont,
	}
	return Roact.createElement(StyleProvider,{
		style = appStyle,
	}, self.props[Roact.Children])
end

return AppStyleProvider