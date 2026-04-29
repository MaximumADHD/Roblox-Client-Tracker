local Framework = script.Parent
local strict = require(Framework.Util.strict)

return strict({
	Colors = require(script.Colors),
	ComponentSymbols = require(script.ComponentSymbols),
	createDefaultTheme = require(script.createDefaultTheme),
	makeTheme = require(script.makeTheme),
	getRawComponentStyle = require(script.getRawComponentStyle),
	Padding = require(script.Padding),
	StyleKey = require(script.StyleKey),
	-- STUDIOPLAT-29013 Remove Stylizer from this list
	Stylizer = require(Framework.UI.ContextServices.Stylizer),
	ThemeSwitcher = require(script.ThemeSwitcher),

	Themes = strict({
		BaseTheme = require(script.Themes.BaseTheme),
		DarkTheme = require(script.Themes.DarkTheme),
		LightTheme = require(script.Themes.LightTheme),
		StudioTheme = require(script.Themes.StudioTheme),
		FoundationDark = require(script.Themes.FoundationDark),
		FoundationLight = require(script.Themes.FoundationLight),
	}),

	ColorSystem = require(script.ColorSystem),
	StudioColorClasses = require(script.ColorSystem.StudioColorClasses),
})
