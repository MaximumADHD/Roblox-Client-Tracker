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
	Tokens: Tokens,
	Settings: Settings,
}

export type Settings = {
	preferredTransparency: number?,
	reducedMotion: boolean?,
}

export type DropShadowItem = {
	-- Position of the drop shadow
	Position: UDim2,
	-- AnchorPoint of the drop shadow
	AnchorPoint: Vector2,
	-- Size of the drop shadow
	Size: UDim2,
	-- The Color and Transparency that describes the drop shadow colors
	ImageColor: ThemeItem,
	-- Asset name for the drop shadow
	ImageAssetName: string,
	-- Slice center that should be applied to the drop shadow image asset
	SliceCenter: Rect,
}

export type PaddingItem = {
	Left: number,
	Top: number,
	Right: number,
	Bottom: number,
}

export type BorderItem = {
	-- Color of border
	BorderColor: ThemeItem?,
	-- Corner radius of the border.
	CornerRadius: UDim?,
	-- Size of the border
	Width: number?,
}

export type ControlStateColors = {
	Initialize: ThemeItem?,
	Default: ThemeItem?,
	Pressed: ThemeItem?,
	Hover: ThemeItem?,
	Selected: ThemeItem?,
	SelectedPressed: ThemeItem?,
	Disabled: ThemeItem?,
}

export type ColorItem = {
	Color3: Color3,
	Transparency: number,
}

export type TypographyItem = {
	Font: Enum.Font,
	FontSize: number,
	LineHeight: number,
	LetterSpacing: number,
}

return {}
