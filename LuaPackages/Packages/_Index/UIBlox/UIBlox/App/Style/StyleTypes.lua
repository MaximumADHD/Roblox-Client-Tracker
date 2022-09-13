--!strict
local Fonts = require(script.Parent.Fonts)
local LightTheme = require(script.Parent.Themes.LightTheme)

export type Theme = typeof(LightTheme)

export type AppStyle = {
	Theme: Theme,
	Font: Fonts.FontPalette,
}

return {}
