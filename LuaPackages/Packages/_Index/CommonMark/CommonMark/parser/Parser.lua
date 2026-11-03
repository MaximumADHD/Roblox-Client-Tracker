-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/Parser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local Definitions = require(Root.internal.Definitions)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DocumentParser = require(Root.internal.DocumentParser)
local Extension = require(Root.Extension)
local IncludeSourceSpans = require(Root.parser.IncludeSourceSpans)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParser = require(Root.parser.InlineParser)
local InlineParserContext = require(Root.parser.InlineParserContext)
local InlineParserContextImpl = require(Root.internal.InlineParserContextImpl)
local InlineParserFactory = require(Root.parser.InlineParserFactory)
local InlineParserImpl = require(Root.internal.InlineParserImpl)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local Node = require(Root.node.Node)
local PostProcessor = require(Root.parser.PostProcessor)

type BlockParserFactory = BlockParserFactory.BlockParserFactory
type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DocumentParser = DocumentParser.DocumentParser
type Extension = Extension.Extension
type IncludeSourceSpans = IncludeSourceSpans.IncludeSourceSpans
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParser = InlineParser.InlineParser
type InlineParserContext = InlineParserContext.InlineParserContext
type InlineParserFactory = InlineParserFactory.InlineParserFactory
type LinkProcessor = LinkProcessor.LinkProcessor
type Node = Node.Node
type PostProcessor = PostProcessor.PostProcessor

-- Parses input text to a tree of nodes.
--
-- Start with the builder method, configure the parser and build it. Example:
--
--     local parser = Parser.builder():build()
--     local document = parser:parse("input text")
local Parser = {}
Parser.__index = Parser

-- PORT NOTE: Parser and Builder are defined in Extension.lua, because they and Extension name each
-- other (see the note there), and are re-exported here.
export type Parser = Extension.Parser
export type Builder = Extension.ParserBuilder

function Parser.new(builder: Builder): Parser
	local self: Parser = setmetatable({
		_blockParserFactories = DocumentParser.calculateBlockParserFactories(
			builder._blockParserFactories,
			builder._enabledBlockTypes
		),
		_inlineParserFactory = builder:getInlineParserFactory(),
		_postProcessors = builder._postProcessors,
		_inlineContentParserFactories = builder._inlineContentParserFactories,
		_delimiterProcessors = builder._delimiterProcessors,
		_linkProcessors = builder._linkProcessors,
		_linkMarkers = builder._linkMarkers,
		_includeSourceSpans = builder._includeSourceSpans,
		_maxOpenBlockParsers = builder._maxOpenBlockParsers,
		_maxInlineNesting = builder._maxInlineNesting,
		_enabledInlineTypes = builder._enabledInlineTypes,
		_linkReferenceDefinitions = builder._linkReferenceDefinitions,
	}, Parser) :: any

	-- Try to construct an inline parser. Invalid configuration might result in an exception, which
	-- we want to detect as soon as possible.
	local context = InlineParserContextImpl.new(
		self._inlineContentParserFactories,
		self._delimiterProcessors,
		self._linkProcessors,
		self._linkMarkers,
		self._maxInlineNesting,
		Definitions.new(),
		self._enabledInlineTypes
	)
	self._inlineParserFactory:create(context)
	return self
end

local Builder = {}
Builder.__index = Builder

function Parser.builder(): Builder
	return Builder.new()
end

function Parser.parse(self: Parser, input: string): Node
	local documentParser = self:createDocumentParser()
	local document = documentParser:parse(input)
	return self:postProcess(document)
end

-- Note that if you have a file with a byte order mark (BOM), you need to skip it before handing
-- the reader to this library.
--
-- PORT NOTE: the Reader is the input string, following DocumentParser.parseReader, and the
-- IOException plumbing is gone.
function Parser.parseReader(self: Parser, input: string): Node
	local documentParser = self:createDocumentParser()
	local document = documentParser:parseReader(input)
	return self:postProcess(document)
end

function Parser.createDocumentParser(self: Parser): DocumentParser
	return DocumentParser.new(
		self._blockParserFactories,
		self._inlineParserFactory,
		self._inlineContentParserFactories,
		self._delimiterProcessors,
		self._linkProcessors,
		self._linkMarkers,
		self._includeSourceSpans,
		self._maxOpenBlockParsers,
		self._maxInlineNesting,
		self._enabledInlineTypes,
		self._linkReferenceDefinitions
	)
end

function Parser.postProcess(self: Parser, document: Node): Node
	for _, postProcessor in ipairs(self._postProcessors) do
		document = postProcessor:process(document)
	end
	return document
end

-- Builder for configuring a Parser.
--
-- PORT NOTE: Java's Set<Character> of link markers is a set table of byte values, as
-- InlineParserContext declares it, and the Set<Class<? extends Block>> of enabled block types is
-- an array of kind strings, as DocumentParser takes it.
function Builder.new(): Builder
	return setmetatable({
		_blockParserFactories = {},
		_inlineContentParserFactories = {},
		_delimiterProcessors = {},
		_linkProcessors = {},
		_postProcessors = {},
		_linkMarkers = {},
		_enabledBlockTypes = DocumentParser.getDefaultBlockParserTypes(),
		_enabledInlineTypes = nil,
		_linkReferenceDefinitions = true,
		_inlineParserFactory = nil,
		_includeSourceSpans = IncludeSourceSpans.NONE,
		_maxOpenBlockParsers = 100,
		_maxInlineNesting = 100,
	}, Builder) :: any
end

function Builder.build(self: Builder): Parser
	return Parser.new(self)
end

-- PORT NOTE: Java's Iterable<? extends Extension> is an array. Parser.ParserExtension is
-- Extension's extendParser field (see Extension.lua), so `instanceof ParserExtension` is a nil
-- check and the extension is called right here, in list order, as in Java.
function Builder.extensions(self: Builder, extensions: { Extension }): Builder
	for _, extension in ipairs(extensions) do
		local extendParser = extension.extendParser
		if extendParser ~= nil then
			extendParser(self)
		end
	end
	return self
end

-- Describe the list of markdown features the parser will recognize and parse.
--
-- By default, CommonMark will recognize and parse the following set of "block" elements:
--
-- * Heading (`#`)
-- * HtmlBlock (`<html></html>`)
-- * ThematicBreak (Horizontal Rule) (`---`)
-- * FencedCodeBlock (```` ``` ````)
-- * IndentedCodeBlock
-- * BlockQuote (`>`)
-- * ListBlock (Ordered / Unordered List) (`1. / *`)
--
-- To parse only a subset of the features listed above, pass a list of each feature's associated
-- Block kind. E.g., to only parse headings and lists:
--
--     Parser.builder():enabledBlockTypes({ "Heading", "ListBlock" })
--
-- If this list is empty, the parser will not recognize any CommonMark core features.
function Builder.enabledBlockTypes(self: Builder, enabledBlockTypes: { string }): Builder
	DocumentParser.checkEnabledBlockTypes(enabledBlockTypes)
	self._enabledBlockTypes = enabledBlockTypes
	return self
end

-- Describe the core inline syntax the parser will recognize, by inline type:
--
-- * Code (`` `code` ``)
-- * HtmlInline (`<span>`)
-- * Autolink (`<https://example.com>`)
-- * Entity (`&amp;`)
-- * BackslashEscape (`\*`)
-- * Emphasis (`*a*`, `**a**`, `_a_`)
-- * Link (`[a](b)`)
-- * Image (`![a](b)`)
-- * HardLineBreak (two trailing spaces, or a backslash, before a newline)
--
-- A disabled type's syntax stays literal text. With Image off, `![a](b)` is a `!` followed by a
-- link (when Link is on). With HardLineBreak or BackslashEscape off, a backslash before a newline
-- stays a literal `\`; with HardLineBreak off, every line break is soft. Custom inline content
-- parsers, delimiter processors and link processors from extensions always run. Link reference
-- definitions are block syntax, so they're still parsed (and dropped from the output) with Link
-- and Image off.
-- The default, nil, enables every type; an empty list disables all of them.
--
-- PORT NOTE: not in commonmark-java, which has no inline counterpart to enabledBlockTypes; added
-- so that each surface can switch core inline syntax off.
function Builder.enabledInlineTypes(self: Builder, enabledInlineTypes: { string }?): Builder
	if enabledInlineTypes ~= nil then
		InlineParserImpl.checkEnabledInlineTypes(enabledInlineTypes)
	end
	self._enabledInlineTypes = enabledInlineTypes
	return self
end

-- Whether paragraphs start with link reference definitions (`[label]: destination "title"`).
--
-- With false, those lines stay paragraph text and no definitions are collected, so full, collapsed
-- and shortcut reference links (`[a][label]`, `[label][]`, `[label]`) stay literal, and an
-- extension's InlineParserContext:getDefinition lookup for LinkReferenceDefinition returns nil.
-- Inline links (`[a](b)`) are unaffected. Definitions that extension block parsers return from
-- getDefinitions are still collected.
--
-- The default is true.
--
-- PORT NOTE: not in commonmark-java, where definitions are always parsed; added so that a surface
-- can turn them off. It's a boolean rather than an enabledBlockTypes name because definitions
-- aren't a BlockParserFactory and the default enabledBlockTypes list must stay Java's.
function Builder.linkReferenceDefinitions(self: Builder, linkReferenceDefinitions: boolean): Builder
	self._linkReferenceDefinitions = linkReferenceDefinitions
	return self
end

-- Whether to calculate source positions for parsed Nodes, see Node.getSourceSpans.
--
-- By default, source spans are disabled.
function Builder.includeSourceSpans(self: Builder, includeSourceSpans: IncludeSourceSpans): Builder
	self._includeSourceSpans = includeSourceSpans
	return self
end

-- Limit how many block parsers may be open at once while parsing.
--
-- Once the limit is reached, additional block starts are treated as plain text instead of creating
-- deeper nested block structure. The document root parser is not counted.
--
-- The default is 100; use Integer.MAX_VALUE (internal/port/Integer) for no limit.
function Builder.maxOpenBlockParsers(self: Builder, maxOpenBlockParsers: number): Builder
	if maxOpenBlockParsers < 0 then
		error("maxOpenBlockParsers must be >= 0")
	end
	self._maxOpenBlockParsers = maxOpenBlockParsers
	return self
end

-- Limit how deeply inline nodes may nest inside each other while parsing, to protect against
-- malicious input. This covers emphasis-like delimiters (e.g. `*` or the ins extension's `+`) as
-- well as images, both of which can nest arbitrarily deep for a small amount of input:
--
-- * Some delimiter processors only consume part of a run of delimiters at a time (e.g. two `*`
--   characters for StrongEmphasis), so a run of delimiters around a single character can nest one
--   level deeper for each pair that's consumed, as in `("*"):rep(n) .. "x" .. ("*"):rep(n)`.
-- * Images can contain images, as in `("!["):rep(n) .. "x" .. ("](u)"):rep(n)`.
--
-- Once the limit is reached, the delimiters or brackets that would nest another level are treated
-- as plain text instead. Note that the limit applies to the nesting of the resulting nodes, no
-- matter which of the above (or which combination of them) produced it.
--
-- Deeply nested inline nodes are a problem for any code that walks the resulting tree
-- recursively, such as the renderers in this library, which would otherwise overflow the stack.
--
-- The default is 100; use Integer.MAX_VALUE (internal/port/Integer) for no limit.
function Builder.maxInlineNesting(self: Builder, maxInlineNesting: number): Builder
	if maxInlineNesting < 0 then
		error("maxInlineNesting must be >= 0")
	end
	self._maxInlineNesting = maxInlineNesting
	return self
end

-- Add a custom block parser factory.
--
-- Note that custom factories are applied *before* the built-in factories. This is so that
-- extensions can change how some syntax is parsed that would otherwise be handled by built-in
-- factories. "With great power comes great responsibility."
function Builder.customBlockParserFactory(self: Builder, blockParserFactory: BlockParserFactory): Builder
	table.insert(self._blockParserFactories, blockParserFactory)
	return self
end

-- Add a factory for a custom inline content parser, for extending inline parsing or overriding
-- built-in parsing.
--
-- Note that parsers are triggered based on a special character as specified by
-- InlineContentParserFactory.getTriggerCharacters. It is possible to register multiple parsers for
-- the same character, or even for some built-in special character such as `` ` ``. The custom
-- parsers are tried first in order in which they are registered, and then the built-in ones.
function Builder.customInlineContentParserFactory(
	self: Builder,
	inlineContentParserFactory: InlineContentParserFactory
): Builder
	table.insert(self._inlineContentParserFactories, inlineContentParserFactory)
	return self
end

-- Add a custom delimiter processor for inline parsing.
--
-- Note that multiple delimiter processors with the same characters can be added, as long as they
-- have a different minimum length. In that case, the processor with the shortest matching length
-- is used. Adding more than one delimiter processor with the same character and minimum length is
-- invalid.
--
-- If you want more control over how parsing is done, you might want to use
-- customInlineContentParserFactory instead.
function Builder.customDelimiterProcessor(self: Builder, delimiterProcessor: DelimiterProcessor): Builder
	table.insert(self._delimiterProcessors, delimiterProcessor)
	return self
end

-- Add a custom link/image processor for inline parsing.
--
-- Multiple link processors can be added, and will be tried in order in which they were added. If
-- no link processor applies, the normal behavior applies. That means these can override built-in
-- link parsing.
function Builder.linkProcessor(self: Builder, linkProcessor: LinkProcessor): Builder
	table.insert(self._linkProcessors, linkProcessor)
	return self
end

-- Add a custom link marker for link processing. A link marker is a character like `!` which, if
-- it appears before the `[` of a link, changes the meaning of the link.
--
-- If a link marker followed by a valid link is parsed, the LinkInfo that is passed to
-- LinkProcessor will have its marker set. A link processor should check the Text's literal and
-- then do any processing, and will probably want to use LinkResult.includeMarker.
function Builder.linkMarker(self: Builder, linkMarker: number): Builder
	self._linkMarkers[linkMarker] = true
	return self
end

function Builder.postProcessor(self: Builder, postProcessor: PostProcessor): Builder
	table.insert(self._postProcessors, postProcessor)
	return self
end

-- Overrides the parser used for inline markdown processing.
--
-- Provide an implementation of InlineParserFactory which provides a custom inline parser to modify
-- how the following are parsed: bold (**) italic (*) strikethrough (~~) backtick quote (`) link
-- ([title](http://)) image (![alt](http://))
--
-- Note that if this method is not called or the inline parser factory is set to nil, then the
-- default implementation will be used.
--
-- PORT NOTE: kept as Java has it, for extensions, but not exposed as a parse option
-- (ROACTCHAT-2833).
function Builder.inlineParserFactory(self: Builder, inlineParserFactory: InlineParserFactory?): Builder
	self._inlineParserFactory = inlineParserFactory
	return self
end

-- PORT NOTE: the method reference InlineParserImpl::new is a table implementing
-- InlineParserFactory, shared by every builder rather than created per call.
local DEFAULT_INLINE_PARSER_FACTORY: InlineParserFactory = {
	create = function(_self: InlineParserFactory, inlineParserContext: InlineParserContext): InlineParser
		return InlineParserImpl.new(inlineParserContext) :: any
	end,
}

function Builder.getInlineParserFactory(self: Builder): InlineParserFactory
	local inlineParserFactory = self._inlineParserFactory
	if inlineParserFactory ~= nil then
		return inlineParserFactory
	else
		return DEFAULT_INLINE_PARSER_FACTORY
	end
end

Parser.Builder = Builder

-- PORT NOTE: the ParserExtension interface is Extension's extendParser field (see Extension.lua).

return Parser
