local Packages = script:FindFirstAncestor("Packages")

local React = require(Packages.React)

export type Token = {
	name: string,
	text: string,
	capture: { string }?,
	isBlock: boolean?,
	offset: number,
}
export type Attributes = { [string]: string | number | nil }
export type Node = {
	name: string,
	children: { Node },
	attributes: Attributes?,
	text: string?,
	isBlock: boolean?,
	url: string?,
	offset: number,
	index: number?,
}

export type ParserOptions = {
	inlineTags: { [string]: boolean },
}

export type TokenName =
	"background"
	| "iden"
	| "keyword"
	| "builtin"
	| "string"
	| "number"
	| "comment"
	| "operator"
	| "custom"

export type TokenColors = {
	[TokenName]: Color3?,
}

export type Lexer = {
	scan: (src: string) -> () -> (string, string),
	navigator: () -> any,
	finished: boolean?,
}

export type LinkCallbackType = (string) -> ()

type TextStyles_Internal = {
	bold: boolean?,
	italic: boolean?,
	strike: boolean?,
}
type TextStyles_Public = {
	font: Enum.Font?,
	fontFace: Font?,
	textSize: number?,
	transparency: number?,
	color: string?,
}
export type TextStyles = TextStyles_Internal & TextStyles_Public

type ImageStyles = {
	size: UDim2?,
	transparency: number?,
	backgroundColor3: Color3?,
	backgroundTransparency: number?,
	scaleType: Enum.ScaleType?,
	resampleMode: Enum.ResamplerMode?,
	tags: string?,
}

type GuiObjectStyles = {
	backgroundColor3: Color3?,
	backgroundTransparency: number?,
}

export type MarkdownRendererPropsType = {
	textStyles: TextStyles_Public?,
	codeStyles: TextStyles_Public?,
	codeBackgroundStyles: GuiObjectStyles?,
	headerStyles: { TextStyles_Public }?,
	imageStyles: ImageStyles?,
}

export type Context = {
	textStyles: TextStyles,
	codeStyles: TextStyles,
	codeBackgroundStyles: GuiObjectStyles?,
	headerStyles: { TextStyles },
	imageStyles: ImageStyles,
	isInline: boolean,
	linkCallback: LinkCallbackType,
	colorScheme: TokenColors?,
	processChildren: (children: { Node }?, context: Context) -> { React.ReactElement },
}

-- Hack to have nicer types on mergeContexts. There is a hope user defined type functions will allow to ditch this.
export type PartialContext = {
	textStyles: TextStyles?,
	codeStyles: TextStyles?,
	codeBackgroundStyles: GuiObjectStyles?,
	headerStyles: { TextStyles }?,
	imageStyles: ImageStyles?,
	isInline: boolean?,
	linkCallback: LinkCallbackType?,
	colorScheme: TokenColors?,
	processChildren: ((children: { Node }?, context: Context) -> { React.ReactElement })?,
}

export type RendererFunction = (Node, context: Context) -> React.ReactElement?

export type RenderersType = {
	["ROOT"]: RendererFunction,
	["HEADING"]: RendererFunction,
	["PARAGRAPH"]: RendererFunction,
	["CODE_BLOCK"]: RendererFunction,
	["STYLED_TEXT"]: RendererFunction,
	["TEXT"]: RendererFunction,
	["INLINE_CODE"]: RendererFunction,
	["LINK"]: RendererFunction,
	["LIST"]: RendererFunction,
	["LIST_ITEM"]: RendererFunction,
	["DIVIDER"]: RendererFunction,
	["DIVIDER_2"]: RendererFunction,
	["QUOTE"]: RendererFunction,
	["IMAGE"]: RendererFunction,
	["TAG"]: RendererFunction,
	["BREAK"]: RendererFunction,
}

return {}
