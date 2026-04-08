local TokenDefaults = require(script.Parent.TokenDefaults)

export type ColorToken = {
	Color3: Color3,
	Transparency: number,
}

export type TypographyToken = {
	Font: Enum.Font,
	FontSize: number,
	LineHeight: number,
	LetterSpacing: number,
}

export type GlobalTokens = typeof(TokenDefaults.Global)
export type SemanticTokens = typeof(TokenDefaults.Semantic)
export type ComponentTokens = typeof(TokenDefaults.Component)

export type Tokens = {
	Global: GlobalTokens,
	Semantic: SemanticTokens,
	Component: ComponentTokens,
}

return {}
