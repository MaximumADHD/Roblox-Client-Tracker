--!strict
local Fonts = require(script.Parent.Fonts)
local LightTheme = require(script.Parent.Themes.LightTheme)
local LightThemeNew = require(script.Parent.Themes.LightThemeNew)
local IconSizeMap = require(script.Parent.IconSizes.IconSizeMap)
local IconSizeMapNew = require(script.Parent.IconSizes.IconSizeMapNew)

export type Theme = typeof(LightTheme) | typeof(LightThemeNew)
export type IconSizeMapType = typeof(IconSizeMap) | typeof(IconSizeMapNew)
export type ThemeItem = {
	Color: Color3,
	Transparency: number,
}

export type Dimensions = {
	IconSizeMap: IconSizeMapType,
}

export type AppStyle = {
	Theme: Theme,
	Font: Fonts.FontPalette,
	Dimensions: Dimensions?,
}

return {}
