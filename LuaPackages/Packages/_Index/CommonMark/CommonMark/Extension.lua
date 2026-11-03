-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/Extension.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DocumentParser = require(Root.internal.DocumentParser)
local IncludeSourceSpans = require(Root.parser.IncludeSourceSpans)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserFactory = require(Root.parser.InlineParserFactory)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local Node = require(Root.node.Node)
local PostProcessor = require(Root.parser.PostProcessor)

type BlockParserFactory = BlockParserFactory.BlockParserFactory
type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DocumentParser = DocumentParser.DocumentParser
type IncludeSourceSpans = IncludeSourceSpans.IncludeSourceSpans
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserFactory = InlineParserFactory.InlineParserFactory
type LinkProcessor = LinkProcessor.LinkProcessor
type Node = Node.Node
type PostProcessor = PostProcessor.PostProcessor

-- PORT NOTE: the renderer types come through internal/port/RendererTypes, which never runs, so
-- parsing doesn't load the HTML renderer.
type AttributeProviderFactory = typeof(require(Root.internal.port.RendererTypes).AttributeProviderFactory)
type HtmlNodeRendererFactory = typeof(require(Root.internal.port.RendererTypes).HtmlNodeRendererFactory)
type UrlSanitizer = typeof(require(Root.internal.port.RendererTypes).UrlSanitizer)

-- PORT NOTE: Parser.Builder and Extension name each other (Builder.extensions takes extensions,
-- and an extension's extendParser takes the builder), and Parser and Parser.Builder name each
-- other (build and the constructor), so per porting-from-java.md Interfaces the three types share
-- this module and parser/Parser.lua re-exports Parser and Builder. HtmlRenderer and
-- HtmlRenderer.Builder name each other and Extension the same way, so their types live here too
-- and renderer/html/HtmlRenderer.lua re-exports them. Extension is the host because both
-- builders name it: hosting in Parser.lua would pull HtmlRenderer's types into the parser. A
-- class's metatable type needs its class table, which lives in the class's own module, so each
-- type here is its fields type itself: the private fields and every instance method, in
-- definition order, as porting-from-java.md Classes lists them.
export type Parser = {
	_blockParserFactories: { BlockParserFactory },
	_inlineContentParserFactories: { InlineContentParserFactory },
	_delimiterProcessors: { DelimiterProcessor },
	_linkProcessors: { LinkProcessor },
	_linkMarkers: { [number]: true },
	_inlineParserFactory: InlineParserFactory,
	_postProcessors: { PostProcessor },
	_includeSourceSpans: IncludeSourceSpans,
	_maxOpenBlockParsers: number,
	_maxInlineNesting: number,
	_enabledInlineTypes: { string }?,
	_linkReferenceDefinitions: boolean,
	parse: (self: Parser, input: string) -> Node,
	parseReader: (self: Parser, input: string) -> Node,
	createDocumentParser: (self: Parser) -> DocumentParser,
	postProcess: (self: Parser, document: Node) -> Node,
}

export type ParserBuilder = {
	_blockParserFactories: { BlockParserFactory },
	_inlineContentParserFactories: { InlineContentParserFactory },
	_delimiterProcessors: { DelimiterProcessor },
	_linkProcessors: { LinkProcessor },
	_postProcessors: { PostProcessor },
	_linkMarkers: { [number]: true },
	_enabledBlockTypes: { string },
	_enabledInlineTypes: { string }?,
	_linkReferenceDefinitions: boolean,
	_inlineParserFactory: InlineParserFactory?,
	_includeSourceSpans: IncludeSourceSpans,
	_maxOpenBlockParsers: number,
	_maxInlineNesting: number,
	build: (self: ParserBuilder) -> Parser,
	extensions: (self: ParserBuilder, extensions: { Extension }) -> ParserBuilder,
	enabledBlockTypes: (self: ParserBuilder, enabledBlockTypes: { string }) -> ParserBuilder,
	enabledInlineTypes: (self: ParserBuilder, enabledInlineTypes: { string }?) -> ParserBuilder,
	linkReferenceDefinitions: (self: ParserBuilder, linkReferenceDefinitions: boolean) -> ParserBuilder,
	includeSourceSpans: (self: ParserBuilder, includeSourceSpans: IncludeSourceSpans) -> ParserBuilder,
	maxOpenBlockParsers: (self: ParserBuilder, maxOpenBlockParsers: number) -> ParserBuilder,
	maxInlineNesting: (self: ParserBuilder, maxInlineNesting: number) -> ParserBuilder,
	customBlockParserFactory: (self: ParserBuilder, blockParserFactory: BlockParserFactory) -> ParserBuilder,
	customInlineContentParserFactory: (
		self: ParserBuilder,
		inlineContentParserFactory: InlineContentParserFactory
	) -> ParserBuilder,
	customDelimiterProcessor: (self: ParserBuilder, delimiterProcessor: DelimiterProcessor) -> ParserBuilder,
	linkProcessor: (self: ParserBuilder, linkProcessor: LinkProcessor) -> ParserBuilder,
	linkMarker: (self: ParserBuilder, linkMarker: number) -> ParserBuilder,
	postProcessor: (self: ParserBuilder, postProcessor: PostProcessor) -> ParserBuilder,
	inlineParserFactory: (self: ParserBuilder, inlineParserFactory: InlineParserFactory?) -> ParserBuilder,
	getInlineParserFactory: (self: ParserBuilder) -> InlineParserFactory,
}

export type HtmlRenderer = {
	_softbreak: string,
	_escapeHtml: boolean,
	_percentEncodeUrls: boolean,
	_omitSingleParagraphP: boolean,
	_sanitizeUrls: boolean,
	_urlSanitizer: UrlSanitizer,
	_attributeProviderFactories: { AttributeProviderFactory },
	_nodeRendererFactories: { HtmlNodeRendererFactory },
	renderAppendable: (self: HtmlRenderer, node: Node, output: { string }) -> (),
	render: (self: HtmlRenderer, node: Node) -> string,
}

export type HtmlRendererBuilder = {
	_softbreak: string,
	_escapeHtml: boolean,
	_sanitizeUrls: boolean,
	_urlSanitizer: UrlSanitizer,
	_percentEncodeUrls: boolean,
	_omitSingleParagraphP: boolean,
	_attributeProviderFactories: { AttributeProviderFactory },
	_nodeRendererFactories: { HtmlNodeRendererFactory },
	build: (self: HtmlRendererBuilder) -> HtmlRenderer,
	softbreak: (self: HtmlRendererBuilder, softbreak: string) -> HtmlRendererBuilder,
	escapeHtml: (self: HtmlRendererBuilder, escapeHtml: boolean) -> HtmlRendererBuilder,
	sanitizeUrls: (self: HtmlRendererBuilder, sanitizeUrls: boolean) -> HtmlRendererBuilder,
	urlSanitizer: (self: HtmlRendererBuilder, urlSanitizer: UrlSanitizer) -> HtmlRendererBuilder,
	percentEncodeUrls: (self: HtmlRendererBuilder, percentEncodeUrls: boolean) -> HtmlRendererBuilder,
	omitSingleParagraphP: (self: HtmlRendererBuilder, omitSingleParagraphP: boolean) -> HtmlRendererBuilder,
	attributeProviderFactory: (
		self: HtmlRendererBuilder,
		attributeProviderFactory: AttributeProviderFactory
	) -> HtmlRendererBuilder,
	nodeRendererFactory: (
		self: HtmlRendererBuilder,
		nodeRendererFactory: HtmlNodeRendererFactory
	) -> HtmlRendererBuilder,
	extensions: (self: HtmlRendererBuilder, extensions: { Extension }) -> HtmlRendererBuilder,
}

-- Base interface for a parser/renderer extension.
--
-- Doesn't have any methods itself, but has specific sub interfaces to configure parser/renderer.
-- This base interface is for convenience, so that a list of extensions can be built and then used
-- for configuring both the parser and renderer in the same way.
--
-- PORT NOTE: Java's empty marker interface, with Parser.ParserExtension and
-- HtmlRenderer.HtmlRendererExtension as sub-interfaces, is one table type with an optional
-- function per sub-interface (ROACTCHAT-2833). `extension instanceof ParserExtension` becomes a
-- nil check on extendParser, and ParserExtension.extend(builder) becomes extendParser(builder).
-- The hooks are plain functions with no self, as ROACTCHAT-2833 specifies, so an extension's
-- state comes from closures.
export type Extension = {
	extendParser: ((ParserBuilder) -> ())?,
	extendHtmlRenderer: ((HtmlRendererBuilder) -> ())?,
}

return {}
