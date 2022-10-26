--!strict
local Fonts = require(script.Parent.Fonts)
local LightTheme = require(script.Parent.Themes.LightTheme)
local LightThemeNew = require(script.Parent.Themes.LightThemeNew)

export type Theme = typeof(LightTheme) | typeof(LightThemeNew)

export type AppStyle = {
	Theme: Theme,
	Font: Fonts.FontPalette,
}

return {}
