--!strict
local Fonts = require(script.Parent.Fonts)
local LightTheme = require(script.Parent.Themes.LightTheme)
local LightThemeNew = require(script.Parent.Themes.LightThemeNew)
local TokenTypes = require(script.Parent.Tokens.Types)

export type Theme = typeof(LightTheme) | typeof(LightThemeNew)
export type ThemeItem = {
	Color: Color3,
	Transparency: number,
}

export type Tokens = TokenTypes.Tokens
export type ComponentTokens = TokenTypes.ComponentTokens
export type GlobalTokens = TokenTypes.GlobalTokens
export type SemanticTokens = TokenTypes.SemanticTokens

export type AppStyle = {
	Theme: Theme,
	Font: Fonts.FontPalette,
	Tokens: Tokens?,
}

return {}
