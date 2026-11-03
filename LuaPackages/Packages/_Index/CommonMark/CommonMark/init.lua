-- Roblox-written
-- CommonMark's public API (ROACTCHAT-2829): parse Markdown to a Document, render a Document to
-- HTML, the extension building blocks in package namespaces, and the types. Options are read once
-- per options table and cached; see internal/port/ApiOptions.

local Root = script
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local AbstractVisitor = require(Root.node.AbstractVisitor)
local ApiOptions = require(Root.internal.port.ApiOptions)
local AsciiMatcher = require(Root.text.AsciiMatcher)
local AutolinkInlineParser = require(Root.internal.inline.AutolinkInlineParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParser = require(Root.parser.block.BlockParser)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockQuoteParser = require(Root.internal.BlockQuoteParser)
local BlockStart = require(Root.parser.block.BlockStart)
local CharMatcher = require(Root.text.CharMatcher)
local Characters = require(Root.text.Characters)
local CustomBlock = require(Root.node.CustomBlock)
local CustomNode = require(Root.node.CustomNode)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DelimiterRun = require(Root.parser.delimiter.DelimiterRun)
local EmphasisDelimiterProcessor = require(Root.internal.inline.EmphasisDelimiterProcessor)
local Extension = require(Root.Extension)
local IncludeSourceSpans = require(Root.parser.IncludeSourceSpans)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParser = require(Root.parser.InlineParser)
local InlineParserContext = require(Root.parser.InlineParserContext)
local InlineParserState = require(Root.parser.beta.InlineParserState)
local LinkInfo = require(Root.parser.beta.LinkInfo)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local LinkResult = require(Root.parser.beta.LinkResult)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Nodes = require(Root.node.Nodes)
local ParsedInline = require(Root.parser.beta.ParsedInline)
local ParserState = require(Root.parser.block.ParserState)
local Position = require(Root.parser.beta.Position)
local Scanner = require(Root.parser.beta.Scanner)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpan = require(Root.node.SourceSpan)
local SourceSpans = require(Root.node.SourceSpans)
local StrikethroughExtension = require(Root.ext.gfm.strikethrough.StrikethroughExtension)
local Visitor = require(Root.node.Visitor)

-- The renderer's types come through internal/port/RendererTypes, which never runs, so requiring
-- CommonMark doesn't load the HTML renderer.
export type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
export type AbstractVisitor = AbstractVisitor.AbstractVisitor
export type AttributeProvider = typeof(require(Root.internal.port.RendererTypes).AttributeProvider)
export type AttributeProviderContext = typeof(require(Root.internal.port.RendererTypes).AttributeProviderContext)
export type AttributeProviderFactory = typeof(require(Root.internal.port.RendererTypes).AttributeProviderFactory)
export type BlockContinue = BlockContinue.BlockContinue
export type BlockParser = BlockParser.BlockParser
export type BlockParserFactory = BlockParserFactory.BlockParserFactory
export type BlockStart = BlockStart.BlockStart
export type CharMatcher = CharMatcher.CharMatcher
export type DefaultUrlSanitizer = typeof(require(Root.internal.port.RendererTypes).DefaultUrlSanitizer)
export type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
export type DelimiterRun = DelimiterRun.DelimiterRun
export type EmphasisLikeOptions = EmphasisDelimiterProcessor.EmphasisLikeOptions
export type Extension = Extension.Extension
export type HtmlNodeRendererContext = typeof(require(Root.internal.port.RendererTypes).HtmlNodeRendererContext)
export type HtmlNodeRendererFactory = typeof(require(Root.internal.port.RendererTypes).HtmlNodeRendererFactory)
export type HtmlRendererBuilder = Extension.HtmlRendererBuilder
export type HtmlWriter = typeof(require(Root.internal.port.RendererTypes).HtmlWriter)
export type IncludeSourceSpans = IncludeSourceSpans.IncludeSourceSpans
export type InlineContentParser = InlineContentParser.InlineContentParser
export type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
export type InlineParser = InlineParser.InlineParser
export type InlineParserContext = InlineParserContext.InlineParserContext
export type InlineParserState = InlineParserState.InlineParserState
export type LinkInfo = LinkInfo.LinkInfo
export type LinkProcessor = LinkProcessor.LinkProcessor
export type LinkResult = LinkResult.LinkResult
export type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
export type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
export type NodeRenderer = typeof(require(Root.internal.port.RendererTypes).NodeRenderer)
export type ParseOptions = ApiOptions.ParseOptions
export type ParsedInline = ParsedInline.ParsedInline
export type ParserBuilder = Extension.ParserBuilder
export type ParserState = ParserState.ParserState
export type Position = Position.Position
export type RenderOptions = ApiOptions.RenderOptions
export type Scanner = Scanner.Scanner
export type SourceLine = SourceLine.SourceLine
export type SourceLines = SourceLines.SourceLines
export type SourceSpan = SourceSpan.SourceSpan
export type UrlSanitizer = typeof(require(Root.internal.port.RendererTypes).UrlSanitizer)
export type Visitor = Visitor.Visitor

export type BlockQuote = Nodes.BlockQuote
export type BulletList = Nodes.BulletList
export type Code = Nodes.Code
export type CustomBlock = Nodes.CustomBlock
export type CustomNode = Nodes.CustomNode
export type Delimited = Nodes.Delimited
export type Document = Nodes.Document
export type Emphasis = Nodes.Emphasis
export type FencedCodeBlock = Nodes.FencedCodeBlock
export type HardLineBreak = Nodes.HardLineBreak
export type Heading = Nodes.Heading
export type HtmlBlock = Nodes.HtmlBlock
export type HtmlInline = Nodes.HtmlInline
export type Image = Nodes.Image
export type IndentedCodeBlock = Nodes.IndentedCodeBlock
export type Link = Nodes.Link
export type LinkReferenceDefinition = Nodes.LinkReferenceDefinition
export type ListBlock = Nodes.ListBlock
export type ListItem = Nodes.ListItem
export type Node = Nodes.Node
export type OrderedList = Nodes.OrderedList
export type Paragraph = Nodes.Paragraph
export type SoftLineBreak = Nodes.SoftLineBreak
export type StrongEmphasis = Nodes.StrongEmphasis
export type Text = Nodes.Text
export type ThematicBreak = Nodes.ThematicBreak

-- PORT NOTE: values are grouped into namespaces that mirror the packages exported by the core's
-- and the strikethrough extension's module-info.java, capitalised as Lua modules are, so
-- `org.commonmark.node.SourceSpans` is `CommonMark.Node.SourceSpans`; `Internal` is the one added
-- namespace (see its note below). Types stay flat at the top level above (`CommonMark.Heading`,
-- `CommonMark.DelimiterProcessor`), because Luau's `export type` only works at a module's top level.
-- Types and values are separate namespaces in Luau, so the value `CommonMark.Node` (a namespace)
-- and the type `CommonMark.Node` coexist, as do the value `CommonMark.Text` and the type `Text`.
-- The namespace tables are frozen, as Java packages are closed; the root table and the modules
-- they hold are not.
local CommonMark = {}

CommonMark.Node = table.freeze({
	AbstractVisitor = AbstractVisitor,
	CustomBlock = CustomBlock,
	CustomNode = CustomNode,
	Nodes = Nodes,
	SourceSpan = SourceSpan,
	SourceSpans = SourceSpans,
})

CommonMark.Parser = table.freeze({
	SourceLine = SourceLine,
	SourceLines = SourceLines,
	Beta = table.freeze({
		LinkResult = LinkResult,
		ParsedInline = ParsedInline,
		Scanner = Scanner,
	}),
	Block = table.freeze({
		AbstractBlockParser = AbstractBlockParser,
		BlockContinue = BlockContinue,
		BlockStart = BlockStart,
	}),
	Delimiter = table.freeze({
		-- PORT NOTE: widens Java's surface. Java has no public emphasis-like processor (its
		-- EmphasisDelimiterProcessor is internal and abstract), so extensions copy the class; this
		-- is the core's generalised one, `new(char, options?)`, which builds the core `*` and `_`
		-- processors too.
		EmphasisLikeDelimiterProcessor = EmphasisDelimiterProcessor,
	}),
})

-- Freezes target, giving it members that load on first access. A frozen table can't store them,
-- so they're cached in `loaded`. Generalized iteration loads and lists every member; `pairs` and
-- `next` see only target's own.
local function freezeWithLazyMembers<T>(target: T, loaders: { [string]: () -> any }): T
	local loaded: { [string]: any } = table.clone(target :: any)
	local function member(key: string): any
		local value = loaded[key]
		if value == nil and loaders[key] ~= nil then
			value = loaders[key]()
			loaded[key] = value
		end
		return value
	end
	setmetatable(
		target :: any,
		table.freeze({
			__index = function(_, key)
				return member(key)
			end,
			__iter = function()
				for key in loaders do
					member(key)
				end
				return next, loaded
			end,
		})
	)
	table.freeze(target :: any)
	return target
end

type DefaultUrlSanitizerModule = typeof(require(Root.renderer.html.DefaultUrlSanitizer))

-- Absent until first accessed; see freezeWithLazyMembers
local lazy: any = nil

-- PORT NOTE: DefaultUrlSanitizer loads on first access rather than with the package, so that
-- parsing doesn't load the HTML renderer.
CommonMark.Renderer = table.freeze({
	Html = freezeWithLazyMembers({
		DefaultUrlSanitizer = lazy :: DefaultUrlSanitizerModule,
		-- PORT NOTE: a port helper (internal/port/LinkedHashMap) standing in for the
		-- java.util.LinkedHashMap that Java's renderer API takes as its ordered attribute map
		-- (Map<String, String>), so it's exported here rather than under Internal.
		LinkedHashMap = LinkedHashMap,
	}, {
		DefaultUrlSanitizer = function()
			return require(Root.renderer.html.DefaultUrlSanitizer)
		end,
	}),
})

CommonMark.Text = table.freeze({
	AsciiMatcher = AsciiMatcher,
	Characters = Characters,
})

CommonMark.Ext = table.freeze({
	Gfm = table.freeze({
		Strikethrough = table.freeze({
			StrikethroughExtension = StrikethroughExtension,
		}),
	}),
})

-- PORT NOTE: Java doesn't export org.commonmark.internal. These core internals are exposed so a
-- profile can wrap or reuse a core parser. Unstable: they may change without notice.
CommonMark.Internal = table.freeze({
	AutolinkInlineParser = AutolinkInlineParser,
	BlockQuoteParser = BlockQuoteParser,
})

-- Parses source to a Document. Don't mutate options after the first call that uses them.
function CommonMark.parse(source: string, options: ParseOptions?): Document
	return ApiOptions.getParser(options):parse(source)
end

-- Renders a Document (or any node and its children) to HTML. Don't mutate options after the
-- first call that uses them.
function CommonMark.renderHtml(document: Node, options: RenderOptions?): string
	return ApiOptions.getHtmlRenderer(options):render(document)
end

return CommonMark
