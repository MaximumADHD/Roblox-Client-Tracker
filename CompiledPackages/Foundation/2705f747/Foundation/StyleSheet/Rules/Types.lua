local Foundation = script:FindFirstAncestor("Foundation")
local Tokens = require(Foundation.Providers.Style.Tokens)

type Tokens = Tokens.Tokens

export type StyleRule = {
	tag: string,
	modifier: string?,
	pseudo: string?,
	priority: number?,
	properties: {
		[string]: any,
	},
	attributes: { StyleAttribute<any> }?,
	children: { StyleRule }?,
}

export type StyleRuleNoTag = {
	modifier: string?,
	priority: number?,
	properties: { [string]: any },
	attributes: { StyleAttribute<unknown> }?,
	pseudo: string?,
	children: { StyleRule }?,
}

export type StyleAttribute<T> = {
	name: string,
	value: T,
}

export type Colors = {
	[string]: {
		Color3: Color3,
		Transparency: number,
	},
}

export type ColorScopes = {
	[string]: Colors,
}

export type Variants = {
	[string]: Colors,
}

export type Strokes = { { name: string, size: number } }

export type Gaps = { { name: string, size: UDim } }

export type Radii = { { name: string, size: UDim } }

export type Sizes = { { name: string, size: UDim } }

export type TextStyle = {
	Font: Enum.Font,
	TextSize: number,
	LineHeight: number,
}

export type Typography = {
	[string]: TextStyle,
}

export type Paddings = { { name: string, size: UDim } }

export type Margins = { { name: string, size: UDim } }

export type Gutters = { { name: string, size: UDim } }

export type FormattedTokens = {
	colors: ColorScopes,
	variants: Variants,
	strokes: Strokes,
	gaps: Gaps,
	radii: Radii,
	sizes: Sizes,
	typography: Typography,
	paddings: Paddings,
	margins: Margins,
	gutters: Gutters,
}

export type RulesGenerator = (
	tokens: Tokens,
	formattedTokens: FormattedTokens
) -> ({ StyleRule }, { StyleRule }, { StyleRule })

return {}
