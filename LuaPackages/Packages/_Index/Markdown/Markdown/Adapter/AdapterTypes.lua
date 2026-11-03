-- The adapter's rule, builder and context types, shared by the engine, the rules and extensions.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local Types = require(Root.Types)

type ParserNode = CommonMark.Node
type RendererNode = Types.Node

-- A renderer node's attributes (Types.Attributes), typed loosely so a literal like
-- `{ depth = 2 }` passes
export type Attributes = { [string]: any }

-- The renderer nodes the adapter emits; each one's renderer `type` follows from its name.
export type BlockName = "PARAGRAPH" | "HEADING" | "QUOTE" | "CODE_BLOCK" | "DIVIDER" | "LIST" | "LIST_ITEM"
export type InlineName = "TEXT" | "BREAK" | "STYLED_TEXT" | "LINK" | "IMAGE"
export type RendererName = BlockName | InlineName
-- The blocks an `as` rule may name: those that draw their children's inlines. The others are
-- leaves (DIVIDER, CODE_BLOCK) or list structure (LIST, LIST_ITEM), which only a handler builds.
export type AsName = "PARAGRAPH" | "HEADING" | "QUOTE"
-- The STYLED_TEXT styles MarkdownRenderer draws
export type Style = "BOLD" | "BOLD_2" | "ITALIC" | "ITALIC_2" | "UNDERLINE" | "STRIKE" | "INLINE_CODE"

-- A place where the renderer AST can't express the parser AST and the adapter flattened it:
-- * QuoteBlocks: a quote holding more than one block, or a block other than a paragraph,
--   counting only the blocks that draw something.
-- * ListItemBlocks: a list item holding more than one block besides its first nested list, a
--   block other than a paragraph or a list, a second list, or a block after its nested list,
--   counting only the blocks that draw something.
-- * LooseList: a loose list drawn tight: a nested one (splitting it like a top-level one would
--   give its parent item several sibling LISTs, and renderList pairs only one), or a top-level
--   one when the list rule doesn't split.
export type GapKind = "QuoteBlocks" | "ListItemBlocks" | "LooseList"
export type Gap = {
	kind: GapKind,
	node: ParserNode,
}

-- What a caller passes to a parser's parse or safeParse after the source, as with the old parser's
-- `safeParse(markdown, options)`. The adapter hands it to every handler as `ctx.options`; no rule
-- reads it yet.
export type EntryOptions = {
	-- More Markdown is still arriving, so content left incomplete at the end may still finish
	isStreaming: boolean?,
}

export type FlattenOptions = {
	-- A child left out, which is still real structure (a list item's nested list)
	except: ParserNode?,
	-- Reported for the node when the flattening loses structure: more than one drawn child, a
	-- drawn child other than a paragraph, or a drawn child after `except`
	gap: GapKind?,
	-- Block kinds removed with their content wherever they appear in the flattened tree
	drop: { [string]: boolean }?,
}

export type Context = {
	-- The renderer node the handled node adapts into, and how many blocks below ROOT it is (ROOT
	-- is 0); an inline parent has its block's depth
	parent: RendererNode,
	depth: number,
	-- Whether `parent` is ROOT and has no block yet
	isFirstTopLevel: boolean,
	-- The caller's entry options, or an empty table when it passed none
	options: EntryOptions,

	block: (self: Context, name: BlockName, attributes: Attributes?) -> RendererNode,
	append: (self: Context, parent: RendererNode, name: RendererName, attributes: Attributes?) -> RendererNode,
	-- Raises when `parent` holds blocks (ROOT, LIST)
	text: (self: Context, text: string) -> (),

	adaptChildrenOf: (self: Context, node: ParserNode, into: RendererNode?) -> (),
	adaptInlinesOf: (self: Context, node: ParserNode, into: RendererNode) -> (),
	flatten: (self: Context, node: ParserNode, into: RendererNode, options: FlattenOptions?) -> (),

	childrenOf: (self: Context, node: ParserNode) -> () -> ParserNode?,
	plainText: (self: Context, node: ParserNode) -> string,
	gap: (self: Context, kind: GapKind, node: ParserNode) -> (),
}

export type Handler = (node: ParserNode, ctx: Context) -> ()

export type InlineRule = "children" | "drop" | Handler | { style: Style } | { text: (node: ParserNode) -> string }
export type BlockRule = "children" | "drop" | Handler | {
	as: AsName,
	attributes: ((node: ParserNode) -> Attributes?)?,
}

export type NodePolicy = "children" | "drop"
export type BlockInTextPolicy = "flatten" | "drop"
export type Fallback = {
	unknownInline: NodePolicy?,
	unknownBlock: NodePolicy?,
	blockInText: BlockInTextPolicy?,
}

export type PassName = "mergeText" | "dropEmpty"

export type Builder = {
	inline: (self: Builder, kind: string, rule: InlineRule) -> (),
	block: (self: Builder, kind: string, rule: BlockRule) -> (),
	fallback: (self: Builder, fallback: Fallback) -> (),
	pass: (self: Builder, name: PassName, enabled: boolean) -> (),
}

-- An extension that also brings adapter rules. CommonMark reads only extendParser and
-- extendHtmlRenderer, so it never learns about the adapter.
export type AdapterExtension = {
	extendParser: ((CommonMark.ParserBuilder) -> ())?,
	extendHtmlRenderer: ((CommonMark.HtmlRendererBuilder) -> ())?,
	extendAdapter: ((builder: Builder) -> ())?,
}

-- What a profile lists: CommonMark's own extensions, which have no adapter rules, and Markdown's
export type Extension = CommonMark.Extension | AdapterExtension

return {}
