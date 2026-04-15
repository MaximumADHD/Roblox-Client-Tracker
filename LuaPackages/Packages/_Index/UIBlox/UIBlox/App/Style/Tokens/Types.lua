local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local TokenDefaults = require(script.Parent.TokenDefaults)
local RbxDesignFoundationsV2 = require(Packages.RbxDesignFoundationsV2)

export type ColorToken = {
	Color3: Color3?,
	Transparency: number,
}

export type TypographyToken = {
	Font: Enum.Font,
	FontSize: number,
	LineHeight: number,
	LetterSpacing: number,
}

local themeTokens = RbxDesignFoundationsV2.Tokens.Dark(1)

export type GlobalTokens = typeof(TokenDefaults.Global)
export type SemanticTokens = typeof(TokenDefaults.Semantic)
export type ComponentTokens = typeof(TokenDefaults.Component)

export type RbxDesignFoundationsV2Tokens = typeof(themeTokens)

local filteredTokens = {
	Color = themeTokens.Color,
	Config = themeTokens.Config,
	DarkMode = themeTokens.DarkMode,
	Ease = themeTokens.Ease,
	LightMode = themeTokens.LightMode,
	Inverse = themeTokens.Inverse,
	Semantic = themeTokens.Semantic, -- TODO(tokens): Remove once icon sizes are moved
	Size = themeTokens.Size,
	Padding = themeTokens.Padding,
	Margin = themeTokens.Margin,
	Gap = themeTokens.Gap,
	Gutter = themeTokens.Gutter,
	Radius = themeTokens.Radius,
	Stroke = themeTokens.Stroke,
	LineHeight = themeTokens.LineHeight,
	FontSize = themeTokens.FontSize,
	FontWeight = themeTokens.FontWeight,
	Time = themeTokens.Time,
	Typography = themeTokens.Typography,
}
export type FoundationTokens = typeof(filteredTokens)

export type BaseTokens = {
	Global: GlobalTokens,
	Semantic: SemanticTokens,
	Component: ComponentTokens,
}

export type Tokens = BaseTokens & FoundationTokens

return {}
