--!strict

-- General
export type ParserOptions = {
	inlineTags: { [string]: boolean },
}

-- Tokenization
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

-- Tree
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

return {}
