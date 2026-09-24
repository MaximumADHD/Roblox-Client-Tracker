--[[
	Theming for UI components
]]

-- TODO STUDIOPLAT-28104: When we actually move things around, they'll all be
-- under this folder so this should be removed and the paths cleaned up
local Framework = script.Parent.Parent

return {
	Colors = require(Framework.Style.Colors),
	ColorSystem = require(Framework.Style.ColorSystem),
	ComponentSymbols = require(Framework.Style.ComponentSymbols),
	createDefaultTheme = require(Framework.Style.createDefaultTheme),
	getRawComponentStyle = require(Framework.Style.getRawComponentStyle),
	makeTheme = require(Framework.Style.makeTheme),
	Padding = require(Framework.Style.Padding),
	StudioColorClasses = require(Framework.Style.ColorSystem.StudioColorClasses),
	StyleKey = require(Framework.Style.StyleKey),
	ThemeSwitcher = require(Framework.Style.ThemeSwitcher),

	Themes = {
		BaseTheme = require(Framework.Style.Themes.BaseTheme),
		DarkTheme = require(Framework.Style.Themes.DarkTheme),
		LightTheme = require(Framework.Style.Themes.LightTheme),
		StudioTheme = require(Framework.Style.Themes.StudioTheme),
	},
}
