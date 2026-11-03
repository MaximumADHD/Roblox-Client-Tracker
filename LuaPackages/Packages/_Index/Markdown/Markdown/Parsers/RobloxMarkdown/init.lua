-- The Roblox Markdown profile (ROACTCHAT-2831, Roblox Markdown Specification v15): the CommonMark
-- core plus the profile's options and extensions, behind parse, safeParse and renderHtml, and the
-- adapter they configure behind toRendererAst. The parser is built with createParser.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Adapter = require(Root.Adapter)
local CommonMark = require(Packages.CommonMark)
local MentionExtension = require(script.Mention.MentionExtension)
local NoNestedQuote = require(script.NoNestedQuote)
local Types = require(Root.Types)
local UnderlineExtension = require(script.Underline.UnderlineExtension)
local createParser = require(Root.Adapter.createParser)

type Document = CommonMark.Document
type EntryOptions = Adapter.EntryOptions
type Extension = Adapter.Extension
type Gap = Adapter.Gap
type Node = CommonMark.Node
type ParseOptions = CommonMark.ParseOptions
type RenderOptions = CommonMark.RenderOptions
type RendererNode = Types.Node

-- HTML blocks are off (ROACTCHAT-2831 #1), so the lines a core HTML block would take are parsed as
-- ordinary Markdown. Indented code blocks are on (spec v15). Block quotes come from NoNestedQuote
-- instead of the core factory.
local ENABLED_BLOCK_TYPES: { string } = table.freeze({
	"Heading",
	"FencedCodeBlock",
	"IndentedCodeBlock",
	"ThematicBreak",
	"ListBlock",
})

-- Raw HTML, autolinks and entity and numeric character references are off (spec v15,
-- *Unsupported CommonMark features*), so a `<` that doesn't start a mention is text and an `&`
-- reference stays literal in text.
local ENABLED_INLINE_TYPES: { string } = table.freeze({
	"Code",
	"BackslashEscape",
	"Emphasis",
	"Link",
	"Image",
	"HardLineBreak",
})

-- NoNestedQuote comes first so its factory runs first, where the core quote factory would.
local EXTENSIONS: { Extension } = table.freeze({
	table.freeze(NoNestedQuote.extension()),
	table.freeze(CommonMark.Ext.Gfm.Strikethrough.StrikethroughExtension.builder():requireTwoTildes(false):build()),
	table.freeze(UnderlineExtension.create()),
	table.freeze(MentionExtension.create()),
})

local parser = createParser({
	extensions = EXTENSIONS,
	parserOptions = {
		enabledBlockTypes = ENABLED_BLOCK_TYPES,
		enabledInlineTypes = ENABLED_INLINE_TYPES,
		-- Spec v15 doesn't support link reference definitions, so reference links stay literal.
		linkReferenceDefinitions = false,
		-- ROACTCHAT-2838: 32 open block parsers is about 16 list levels.
		maxOpenBlockParsers = 32,
		maxInlineNesting = 32,
	},
})

-- Frozen because CommonMark caches the built renderer per options table and reads it only once.
local RENDER_OPTIONS: RenderOptions = table.freeze({
	extensions = EXTENSIONS :: { any },
})

local RobloxMarkdown = {}

-- The parser's options table, frozen by createParser
RobloxMarkdown.parseOptions = parser.parseOptions
RobloxMarkdown.renderOptions = RENDER_OPTIONS

function RobloxMarkdown.parse(source: string): Document
	return parser.parseDocument(source)
end

-- The renderer AST and the places the adapter flattened (gaps)
function RobloxMarkdown.toRendererAst(document: Node, options: EntryOptions?): (RendererNode, { Gap })
	return parser.toRendererAst(document, options)
end

-- ROACTCHAT-2838 *Error guard*: the core never pcalls, so this is the one guard around a parse,
-- extension callbacks included. It returns the same `(ok, result)` shape as the existing parsers'
-- safeParse, which MarkdownViewer's OnError path consumes, but via `pcall`: the raised value comes
-- back unchanged, without the `debug.traceback` they append, and nothing is logged here.
function RobloxMarkdown.safeParse(source: string): (boolean, any)
	return pcall(RobloxMarkdown.parse, source)
end

function RobloxMarkdown.renderHtml(document: Node): string
	return CommonMark.renderHtml(document, RENDER_OPTIONS)
end

return RobloxMarkdown
