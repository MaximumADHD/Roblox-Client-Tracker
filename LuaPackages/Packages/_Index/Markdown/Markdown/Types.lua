local Packages = script.Parent.Parent

local React = require(Packages.React)
local NodeType = require(script.Parent.Enums.NodeType)
local InlineLayout = require(Packages.InlineLayout)
local MarkdownCore = require(Packages.MarkdownCore)
type InlineElement = InlineLayout.InlineElement
type TokenColors = MarkdownCore.TokenColors

export type ParserOptions = {
	inlineTags: { [string]: boolean },
	nodeConfiguration: {
		[string]: {
			type: NodeType.NodeType,
		},
	},
}

export type TokenContext = {
	prevChar: string?,
	nextChar: string?,
}
export type Token = {
	name: string,
	text: string,
	capture: { string }?,
	isBlock: boolean?,
	offset: number,
	context: TokenContext?,
}

export type DelimiterName = "BOLD" | "BOLD_2" | "ITALIC" | "ITALIC_2" | "STRIKE" | "INLINE_CODE"
export type DelimiterChar = "*" | "_" | "~" | "`"
export type DelimiterInfo = {
	char: DelimiterChar,
	length: number,
}
export type DelimiterMatch = {
	with: Delimiter,
	length: number,
	isOpener: boolean,
}
export type Delimiter = {
	char: DelimiterChar,
	runLength: number,
	origRunLength: number,
	canOpen: boolean,
	canClose: boolean,
	startIdx: number,
	tokenStart: number,
	matches: { DelimiterMatch }?,
}
export type DelimiterRun = {
	char: DelimiterChar,
	prevChar: string?,
	nextChar: string?,
	length: number,
	startIdx: number,
	endIdx: number,
}
export type DelimiterToken = Token & {
	name: "DELIMITER_RUN",
	delimiterIndex: number,
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
	type: NodeType.NodeType,
}

export type LinkCallbackType = (string) -> ()

type TextStyles_Internal = {
	bold: boolean?,
	italic: boolean?,
	strike: boolean?,
	selectable: boolean?,
	viewTags: (string | { [string]: boolean })?,
}
type TextStyles_Public = {
	font: Enum.Font?,
	fontFace: Font?,
	textSize: number?,
	transparency: number?,
	color: string?,
}
type CodeStyles_Public = TextStyles_Public & {
	lineHeight: number?,
}
export type TextStyles = TextStyles_Internal & TextStyles_Public
export type CodeStyles = TextStyles_Internal & CodeStyles_Public

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

type CodeSettings = {
	showLineNumbers: boolean?,
	showCopyButton: boolean?,
}

export type MarkdownRendererPropsType = {
	textStyles: TextStyles_Public?,
	codeStyles: CodeStyles_Public?,
	codeBackgroundStyles: GuiObjectStyles?,
	codeSettings: CodeSettings?,
	linkStyles: LinkStyles?,
	headerStyles: { TextStyles_Public }?,
	imageStyles: ImageStyles?,
}

export type LinkStyles = {
	linkColor: string?,
}

export type Context = {
	textStyles: TextStyles,
	codeStyles: CodeStyles,
	codeBackgroundStyles: GuiObjectStyles?,
	codeSettings: CodeSettings?,
	linkStyles: LinkStyles,
	headerStyles: { TextStyles },
	imageStyles: ImageStyles,
	isInline: boolean,
	linkCallback: LinkCallbackType,
	colorScheme: TokenColors?,
	processChildren: (node: Node, context: Context) -> { React.ReactElement } | { InlineElement },
}

-- Hack to have nicer types on mergeContexts. There is a hope user defined type functions will allow to ditch this.
export type PartialContext = {
	textStyles: TextStyles?,
	codeStyles: CodeStyles?,
	codeBackgroundStyles: GuiObjectStyles?,
	codeSettings: CodeSettings?,
	headerStyles: { TextStyles }?,
	imageStyles: ImageStyles?,
	isInline: boolean?,
	linkCallback: LinkCallbackType?,
	colorScheme: TokenColors?,
	processChildren: ((node: Node, context: Context) -> { React.ReactElement } | { InlineElement })?,
}

export type RenderResult = React.ReactElement | { React.ReactElement } | InlineElement | { InlineElement } | nil
export type RendererFunction = (Node, context: Context) -> RenderResult

export type RenderersType = {
	["ROOT"]: RendererFunction,
	["HEADING"]: RendererFunction,
	["PARAGRAPH"]: RendererFunction,
	["CODE_BLOCK"]: RendererFunction,
	["STYLED_TEXT"]: RendererFunction,
	["TEXT"]: RendererFunction,
	["LINK"]: RendererFunction,
	["LIST"]: RendererFunction,
	["LIST_ITEM"]: RendererFunction,
	["DIVIDER"]: RendererFunction,
	["QUOTE"]: RendererFunction,
	["IMAGE"]: RendererFunction,
	["TAG"]: RendererFunction,
	["BREAK"]: RendererFunction,
	["LINE_BREAK"]: RendererFunction,
}

export type AdditionalFeatureRenderersType = {
	[string]: RendererFunction,
}

return {}
