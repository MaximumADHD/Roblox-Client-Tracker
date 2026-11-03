-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/InlineParserImpl.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AutolinkInlineParser = require(Root.internal.inline.AutolinkInlineParser)
local BackslashInlineParser = require(Root.internal.inline.BackslashInlineParser)
local BackticksInlineParser = require(Root.internal.inline.BackticksInlineParser)
local Bracket = require(Root.internal.Bracket)
local Characters = require(Root.text.Characters)
local CoreLinkProcessor = require(Root.internal.inline.CoreLinkProcessor)
local Delimiter = require(Root.internal.Delimiter)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local EmphasisDelimiterProcessor = require(Root.internal.inline.EmphasisDelimiterProcessor)
local EntityInlineParser = require(Root.internal.inline.EntityInlineParser)
local Escaping = require(Root.internal.util.Escaping)
local HtmlInlineParser = require(Root.internal.inline.HtmlInlineParser)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserContext = require(Root.parser.InlineParserContext)
local Integer = require(Root.internal.port.Integer)
local LinkInfo = require(Root.parser.beta.LinkInfo)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local LinkResult = require(Root.parser.beta.LinkResult)
local LinkScanner = require(Root.internal.util.LinkScanner)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local Position = require(Root.parser.beta.Position)
local Scanner = require(Root.parser.beta.Scanner)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpans = require(Root.node.SourceSpans)
local StaggeredDelimiterProcessor = require(Root.internal.StaggeredDelimiterProcessor)

type Bracket = Bracket.Bracket
type Delimiter = Delimiter.Delimiter
type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type InlineContentParser = InlineContentParser.InlineContentParser
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserContext = InlineParserContext.InlineParserContext
type LinkInfo = LinkInfo.LinkInfo
type LinkProcessor = LinkProcessor.LinkProcessor
type LinkResult = LinkResult.LinkResult
type Node = Node.Node
type Position = Position.Position
type Scanner = Scanner.Scanner
type SourceLines = SourceLines.SourceLines
type SourceSpans = SourceSpans.SourceSpans
type StaggeredDelimiterProcessor = StaggeredDelimiterProcessor.StaggeredDelimiterProcessor
type Text = Nodes.Text

local byte, gsub, sub = string.byte, string.gsub, string.sub

local END = Scanner.END
local NEWLINE = byte("\n")
local SPACE = byte(" ")
local BANG = byte("!")
local OPEN_BRACKET = byte("[")
local CLOSE_BRACKET = byte("]")
local OPEN_PAREN = byte("(")
local CLOSE_PAREN = byte(")")
local LESS_THAN = byte("<")
local UNDERSCORE = byte("_")
local ASTERISK = byte("*")

local InlineParserImpl = {}
InlineParserImpl.__index = InlineParserImpl

-- PORT NOTE: the BitSets of special characters and link markers are set tables of byte values,
-- like InlineParserContext's link markers. Maps keyed by Character are keyed by byte value.
type InlineParserImplFields = {
	_context: InlineParserContext,
	-- PORT NOTE: not in Java; the core inline types enabledInlineTypes left on.
	_enabledInlineTypes: { [string]: true },
	-- PORT NOTE: not in Java; whether `[` and `]` can start and close links, images or custom
	-- link processing (see the enabledInlineTypes PORT NOTE).
	_bracketsEnabled: boolean,
	_inlineContentParserFactories: { InlineContentParserFactory },
	_delimiterProcessors: { [number]: DelimiterProcessor },
	_linkProcessors: { LinkProcessor },
	_specialCharacters: { [number]: true },
	_linkMarkers: { [number]: true },
	_maxInlineNesting: number,
	-- Whether maxInlineNesting is in effect, i.e. whether nesting depth is tracked.
	_limitInlineNesting: boolean,
	-- How deeply nested each inline node we created is, keyed by node identity. A node's depth is
	-- one more than the deepest recorded depth among the nodes it wraps, so it accounts for its
	-- whole subtree without having to walk it. Both emphasis-like delimiters and links/images
	-- record here and read from here, so neither can be used to hide depth from the other.
	-- Only maintained when limitInlineNesting is set.
	-- PORT NOTE: the IdentityHashMap is a table keyed by node, as Luau tables key by identity.
	_nestingDepths: { [Node]: number },
	_inlineParsers: { [number]: { InlineContentParser } },
	_scanner: Scanner,
	_includeSourceSpans: boolean,
	_trailingSpaces: number,
	-- Top delimiter (emphasis, strong emphasis or custom emphasis). (Brackets are on a separate
	-- stack, different from the algorithm described in the spec.)
	_lastDelimiter: Delimiter?,
	-- PORT NOTE: not in Java; the order in which this parse created each delimiter, for
	-- processDelimiters' opener bounds (see the PORT NOTE there).
	_delimiterIndexes: { [Delimiter]: number },
	_delimiterCount: number,
	-- Top opening bracket (`[` or `![`).
	_lastBracket: Bracket?,
	-- PORT NOTE: not in Java; the brackets disallowPreviousLinks has already walked over, so that
	-- later walks can stop there (see the PORT NOTE there).
	_disallowWalked: { [Bracket]: true },
	calculateInlineContentParserFactories: (
		self: InlineParserImpl,
		customFactories: { InlineContentParserFactory }
	) -> { InlineContentParserFactory },
	calculateLinkProcessors: (self: InlineParserImpl, linkProcessors: { LinkProcessor }) -> { LinkProcessor },
	createInlineContentParsers: (self: InlineParserImpl) -> { [number]: { InlineContentParser } },
	scanner: (self: InlineParserImpl) -> Scanner,
	parse: (self: InlineParserImpl, lines: SourceLines, block: Node) -> (),
	reset: (self: InlineParserImpl, lines: SourceLines) -> (),
	text: (self: InlineParserImpl, sourceLines: SourceLines) -> Text,
	parseInline: (self: InlineParserImpl) -> { Node }?,
	parseDelimiters: (
		self: InlineParserImpl,
		delimiterProcessor: DelimiterProcessor,
		delimiterChar: number
	) -> { Node }?,
	parseOpenBracket: (self: InlineParserImpl) -> Node,
	parseLinkMarker: (self: InlineParserImpl) -> { Node }?,
	parseCloseBracket: (self: InlineParserImpl) -> Node,
	parseLinkOrImage: (self: InlineParserImpl, opener: Bracket, beforeClose: Position) -> Node?,
	parseLinkInfo: (self: InlineParserImpl, opener: Bracket, beforeClose: Position) -> LinkInfo?,
	wrapBracket: (self: InlineParserImpl, opener: Bracket, wrapperNode: Node, includeMarker: boolean) -> Node?,
	replaceBracket: (self: InlineParserImpl, opener: Bracket, node: Node, includeMarker: boolean) -> Node,
	addBracket: (self: InlineParserImpl, bracket: Bracket) -> (),
	removeLastBracket: (self: InlineParserImpl) -> (),
	disallowPreviousLinks: (self: InlineParserImpl) -> (),
	parseLineBreak: (self: InlineParserImpl) -> Node,
	parseText: (self: InlineParserImpl) -> Node,
	scanDelimiters: (
		self: InlineParserImpl,
		delimiterProcessor: DelimiterProcessor,
		delimiterChar: number
	) -> DelimiterData?,
	processDelimiters: (self: InlineParserImpl, stackBottom: Delimiter?) -> (),
	recordNestingDepth: (self: InlineParserImpl, node: Node, depth: number) -> (),
	nestingDepthOfSiblings: (self: InlineParserImpl, first: Node?, finish: Node?) -> number,
	removeDelimitersBetween: (self: InlineParserImpl, opener: Delimiter, closer: Delimiter) -> (),
	removeDelimiterAndNodes: (self: InlineParserImpl, delim: Delimiter) -> (),
	removeDelimiterKeepNode: (self: InlineParserImpl, delim: Delimiter) -> (),
	removeDelimiter: (self: InlineParserImpl, delim: Delimiter) -> (),
	mergeChildTextNodes: (self: InlineParserImpl, node: Node) -> (),
	mergeTextNodesInclusive: (self: InlineParserImpl, parent: Node, parents: { Node }) -> (),
	mergeIfNeeded: (self: InlineParserImpl, first: Text?, last: Text?, textLength: number) -> (),
}

export type InlineParserImpl = typeof(setmetatable({} :: InlineParserImplFields, InlineParserImpl))

-- PORT NOTE: enabledInlineTypes widens commonmark-java's surface, which has no inline counterpart
-- to enabledBlockTypes. Each type switches off only core syntax: Code, HtmlInline, Autolink,
-- Entity and BackslashEscape drop their inline content parser, Emphasis drops the `*` and `_`
-- processors, Link and Image gate CoreLinkProcessor (and Image the `!` marker), and HardLineBreak
-- turns both hard breaks soft: trailing spaces are dropped, and a backslash before a newline stays
-- a literal `\`. Custom parsers, processors and markers always
-- run. `[` and `]` are special only while something can process brackets.
local CORE_INLINE_TYPES: { string } = table.freeze({
	"Code",
	"HtmlInline",
	"Autolink",
	"Entity",
	"BackslashEscape",
	"Emphasis",
	"Link",
	"Image",
	"HardLineBreak",
})

local ALL_INLINE_TYPES: { [string]: true } = {}
for _, inlineType in ipairs(CORE_INLINE_TYPES) do
	ALL_INLINE_TYPES[inlineType] = true
end
table.freeze(ALL_INLINE_TYPES)

function InlineParserImpl.getDefaultInlineTypes(): { string }
	return CORE_INLINE_TYPES
end

function InlineParserImpl.checkEnabledInlineTypes(enabledInlineTypes: { string })
	for _, enabledInlineType in ipairs(enabledInlineTypes) do
		if not ALL_INLINE_TYPES[enabledInlineType] then
			local options = table.concat(CORE_INLINE_TYPES, ", ")
			error(`Can't enable inline type {enabledInlineType}, possible options are: [{options}]`)
		end
	end
end

local function calculateEnabledInlineTypes(context: InlineParserContext): { [string]: true }
	local getEnabledInlineTypes = context.getEnabledInlineTypes
	local enabledInlineTypes = if getEnabledInlineTypes ~= nil then getEnabledInlineTypes(context) else nil
	if enabledInlineTypes == nil then
		return ALL_INLINE_TYPES
	end
	InlineParserImpl.checkEnabledInlineTypes(enabledInlineTypes)
	local set: { [string]: true } = {}
	for _, inlineType in ipairs(enabledInlineTypes) do
		set[inlineType] = true
	end
	return set
end

local function addDelimiterProcessorForChar(
	delimiterChar: number,
	toAdd: DelimiterProcessor,
	delimiterProcessors: { [number]: DelimiterProcessor }
)
	-- PORT NOTE: Map.put returns the previous value; here it is read before the write.
	local existing = delimiterProcessors[delimiterChar]
	delimiterProcessors[delimiterChar] = toAdd
	if existing ~= nil then
		error(`Delimiter processor conflict with delimiter char '{string.char(delimiterChar)}'`)
	end
end

local function addDelimiterProcessors(
	delimiterProcessors: { DelimiterProcessor },
	map: { [number]: DelimiterProcessor }
)
	for _, delimiterProcessor in ipairs(delimiterProcessors) do
		local opening = delimiterProcessor:getOpeningCharacter()
		local closing = delimiterProcessor:getClosingCharacter()
		if opening == closing then
			local old = map[opening]
			if old ~= nil and old:getOpeningCharacter() == old:getClosingCharacter() then
				local s: StaggeredDelimiterProcessor
				-- PORT NOTE: `instanceof StaggeredDelimiterProcessor` is a metatable check;
				-- StaggeredDelimiterProcessor has no subclasses. It keeps its own type (it adds
				-- `add`), so it is cast where it goes in and out of the map.
				if getmetatable(old :: any) == StaggeredDelimiterProcessor then
					s = old :: any
				else
					s = StaggeredDelimiterProcessor.new(opening)
					s:add(old)
				end
				s:add(delimiterProcessor)
				map[opening] = s :: any
			else
				addDelimiterProcessorForChar(opening, delimiterProcessor, map)
			end
		else
			addDelimiterProcessorForChar(opening, delimiterProcessor, map)
			addDelimiterProcessorForChar(closing, delimiterProcessor, map)
		end
	end
end

local function calculateDelimiterProcessors(
	delimiterProcessors: { DelimiterProcessor },
	enabledInlineTypes: { [string]: true }
): { [number]: DelimiterProcessor }
	local map: { [number]: DelimiterProcessor } = {}
	-- PORT NOTE: AsteriskDelimiterProcessor and UnderscoreDelimiterProcessor are
	-- EmphasisDelimiterProcessor.new with their character (see EmphasisDelimiterProcessor.lua).
	if enabledInlineTypes.Emphasis then
		addDelimiterProcessors(
			{ EmphasisDelimiterProcessor.new(ASTERISK), EmphasisDelimiterProcessor.new(UNDERSCORE) },
			map
		)
	end
	addDelimiterProcessors(delimiterProcessors, map)
	return map
end

local function calculateLinkMarkers(
	linkMarkers: { [number]: true },
	enabledInlineTypes: { [string]: true }
): { [number]: true }
	local bitSet: { [number]: true } = {}
	for c in pairs(linkMarkers) do
		bitSet[c] = true
	end
	if enabledInlineTypes.Image then
		bitSet[BANG] = true
	end
	return bitSet
end

-- PORT NOTE: Java passes delimiterProcessors.keySet(); this takes the map and reads its keys.
local function calculateSpecialCharacters(
	linkMarkers: { [number]: true },
	delimiterCharacters: { [number]: DelimiterProcessor },
	inlineContentParserFactories: { InlineContentParserFactory },
	bracketsEnabled: boolean
): { [number]: true }
	local bitSet = table.clone(linkMarkers)
	for c in pairs(delimiterCharacters) do
		bitSet[c] = true
	end
	for _, factory in ipairs(inlineContentParserFactories) do
		for c in pairs(factory:getTriggerCharacters()) do
			bitSet[c] = true
		end
	end
	if bracketsEnabled then
		bitSet[OPEN_BRACKET] = true
		bitSet[CLOSE_BRACKET] = true
	end
	bitSet[BANG] = true
	bitSet[NEWLINE] = true
	return bitSet
end

function InlineParserImpl.new(context: InlineParserContext): InlineParserImpl
	local self: InlineParserImpl =
		setmetatable({ _nestingDepths = {}, _delimiterIndexes = {}, _disallowWalked = {} }, InlineParserImpl) :: any
	self._context = context
	local enabledInlineTypes = calculateEnabledInlineTypes(context)
	self._enabledInlineTypes = enabledInlineTypes
	local customLinkProcessors = context:getCustomLinkProcessors()
	local customLinkMarkers = context:getCustomLinkMarkers()
	self._bracketsEnabled = enabledInlineTypes.Link == true
		or enabledInlineTypes.Image == true
		or #customLinkProcessors > 0
		or next(customLinkMarkers) ~= nil
	self._inlineContentParserFactories =
		self:calculateInlineContentParserFactories(context:getCustomInlineContentParserFactories())
	self._delimiterProcessors = calculateDelimiterProcessors(context:getCustomDelimiterProcessors(), enabledInlineTypes)
	self._linkProcessors = self:calculateLinkProcessors(customLinkProcessors)
	self._linkMarkers = calculateLinkMarkers(customLinkMarkers, enabledInlineTypes)
	self._maxInlineNesting = context:getMaxInlineNesting()
	self._limitInlineNesting = self._maxInlineNesting ~= Integer.MAX_VALUE
	self._specialCharacters = calculateSpecialCharacters(
		self._linkMarkers,
		self._delimiterProcessors,
		self._inlineContentParserFactories,
		self._bracketsEnabled
	)
	return self
end

function InlineParserImpl.calculateInlineContentParserFactories(
	self: InlineParserImpl,
	customFactories: { InlineContentParserFactory }
): { InlineContentParserFactory }
	-- Custom parsers can override built-in parsers if they want, so make sure they are tried
	-- first
	local list = table.clone(customFactories)
	local enabled = self._enabledInlineTypes
	if enabled.BackslashEscape then
		table.insert(list, BackslashInlineParser.Factory.new(enabled.HardLineBreak == true))
	end
	if enabled.Code then
		table.insert(list, BackticksInlineParser.Factory.new())
	end
	if enabled.Entity then
		table.insert(list, EntityInlineParser.Factory.new())
	end
	if enabled.Autolink then
		table.insert(list, AutolinkInlineParser.Factory.new())
	end
	if enabled.HtmlInline then
		table.insert(list, HtmlInlineParser.Factory.new())
	end
	return list
end

function InlineParserImpl.calculateLinkProcessors(
	self: InlineParserImpl,
	linkProcessors: { LinkProcessor }
): { LinkProcessor }
	-- Custom link processors can override the built-in behavior, so make sure they are tried
	-- first
	local list = table.clone(linkProcessors)
	local enabled = self._enabledInlineTypes
	if enabled.Link or enabled.Image then
		table.insert(list, CoreLinkProcessor.new(enabled.Link == true, enabled.Image == true))
	end
	return list
end

function InlineParserImpl.createInlineContentParsers(self: InlineParserImpl): { [number]: { InlineContentParser } }
	local map: { [number]: { InlineContentParser } } = {}
	for _, factory in ipairs(self._inlineContentParserFactories) do
		local parser = factory:create()
		for c in pairs(factory:getTriggerCharacters()) do
			local parsers = map[c]
			if parsers == nil then
				parsers = {}
				map[c] = parsers
			end
			table.insert(parsers, parser)
		end
	end
	return map
end

function InlineParserImpl.scanner(self: InlineParserImpl): Scanner
	return self._scanner
end

-- Parse content in block into inline children, appending them to the block node.
function InlineParserImpl.parse(self: InlineParserImpl, lines: SourceLines, block: Node)
	self:reset(lines)

	while true do
		local nodes = self:parseInline()
		if nodes == nil then
			break
		end
		for _, node in ipairs(nodes) do
			block:appendChild(node)
		end
	end

	self:processDelimiters(nil)
	self:mergeChildTextNodes(block)
end

function InlineParserImpl.reset(self: InlineParserImpl, lines: SourceLines)
	self._scanner = Scanner.of(lines)
	self._includeSourceSpans = #lines:getSourceSpans() > 0
	self._trailingSpaces = 0
	self._lastDelimiter = nil
	self._lastBracket = nil
	table.clear(self._disallowWalked)
	table.clear(self._nestingDepths)
	table.clear(self._delimiterIndexes)
	self._delimiterCount = 0
	self._inlineParsers = self:createInlineContentParsers()
end

function InlineParserImpl.text(_self: InlineParserImpl, sourceLines: SourceLines): Text
	local text = Nodes.Text(sourceLines:getContent())
	text:setSourceSpans(sourceLines:getSourceSpans())
	return text
end

-- Parse the next inline element in subject, advancing our position. On success, return the new
-- inline node. On failure, return nil.
function InlineParserImpl.parseInline(self: InlineParserImpl): { Node }?
	local scanner = self._scanner
	local c = scanner:peek()

	if c == OPEN_BRACKET and self._bracketsEnabled then
		return { self:parseOpenBracket() }
	elseif c == CLOSE_BRACKET and self._bracketsEnabled then
		return { self:parseCloseBracket() }
	elseif c == NEWLINE then
		return { self:parseLineBreak() }
	elseif c == END then
		return nil
	end

	if self._linkMarkers[c] then
		local markerPosition = scanner:position()
		local nodes = self:parseLinkMarker()
		if nodes ~= nil then
			return nodes
		end
		-- Reset and try other things (e.g. inline parsers below)
		scanner:setPosition(markerPosition)
	end

	-- No inline parser, delimiter or other special handling.
	if not self._specialCharacters[c] then
		return { self:parseText() }
	end

	local inlineParsers = self._inlineParsers[c]
	if inlineParsers ~= nil then
		local position = scanner:position()
		for _, inlineParser in ipairs(inlineParsers) do
			local parsedInline = inlineParser:tryParse(self :: any)
			if parsedInline ~= nil then
				local node = parsedInline:getNode()
				scanner:setPosition(parsedInline:getPosition())
				if self._includeSourceSpans and #node:getSourceSpans() == 0 then
					node:setSourceSpans(scanner:getSource(position, scanner:position()):getSourceSpans())
				end
				return { node }
			else
				-- Reset position
				scanner:setPosition(position)
			end
		end
	end

	local delimiterProcessor = self._delimiterProcessors[c]
	if delimiterProcessor ~= nil then
		local nodes = self:parseDelimiters(delimiterProcessor, c)
		if nodes ~= nil then
			return nodes
		end
	end

	-- If we get here, even for a special/delimiter character, we will just treat it as text.
	return { self:parseText() }
end

-- Attempt to parse delimiters like emphasis, strong emphasis or custom delimiters.
function InlineParserImpl.parseDelimiters(
	self: InlineParserImpl,
	delimiterProcessor: DelimiterProcessor,
	delimiterChar: number
): { Node }?
	local res = self:scanDelimiters(delimiterProcessor, delimiterChar)
	if res == nil then
		return nil
	end

	local characters = res.characters

	-- Add entry to stack for this opener
	-- PORT NOTE: the new delimiter is also held in a local, so the analyzer sees it as non-nil.
	local lastDelimiter = Delimiter.new(characters, delimiterChar, res.canOpen, res.canClose, self._lastDelimiter)
	self._lastDelimiter = lastDelimiter
	self._delimiterCount += 1
	self._delimiterIndexes[lastDelimiter] = self._delimiterCount
	if lastDelimiter.previous ~= nil then
		lastDelimiter.previous.next = lastDelimiter
	end

	return characters
end

-- Add open bracket to delimiter stack and add a text node to block's children.
function InlineParserImpl.parseOpenBracket(self: InlineParserImpl): Node
	local scanner = self._scanner
	local start = scanner:position()
	scanner:next()
	local contentPosition = scanner:position()

	local node = self:text(scanner:getSource(start, contentPosition))

	-- Add entry to stack for this opener
	self:addBracket(Bracket.link(node, start, contentPosition, self._lastBracket, self._lastDelimiter))

	return node
end

-- If next character is `[`, add a bracket to the stack. Otherwise, return nil.
function InlineParserImpl.parseLinkMarker(self: InlineParserImpl): { Node }?
	local scanner = self._scanner
	local markerPosition = scanner:position()
	scanner:next()
	local bracketPosition = scanner:position()
	if scanner:nextChar(OPEN_BRACKET) then
		local contentPosition = scanner:position()
		local bangNode = self:text(scanner:getSource(markerPosition, bracketPosition))
		local bracketNode = self:text(scanner:getSource(bracketPosition, contentPosition))

		-- Add entry to stack for this opener
		self:addBracket(
			Bracket.withMarker(
				bangNode,
				markerPosition,
				bracketNode,
				bracketPosition,
				contentPosition,
				self._lastBracket,
				self._lastDelimiter
			)
		)
		return { bangNode, bracketNode }
	else
		return nil
	end
end

-- Try to match close bracket against an opening in the delimiter stack. Return either a link or
-- image, or a plain [ character. If there is a matching delimiter, remove it from the delimiter
-- stack.
function InlineParserImpl.parseCloseBracket(self: InlineParserImpl): Node
	local scanner = self._scanner
	local beforeClose = scanner:position()
	scanner:next()
	local afterClose = scanner:position()

	-- Get previous `[` or `![`
	local opener = self._lastBracket
	if opener == nil then
		-- No matching opener, just return a literal.
		return self:text(scanner:getSource(beforeClose, afterClose))
	end

	if not opener.allowed then
		-- Matching opener, but it's not allowed, just return a literal.
		self:removeLastBracket()
		return self:text(scanner:getSource(beforeClose, afterClose))
	end

	local linkOrImage = self:parseLinkOrImage(opener, beforeClose)
	if linkOrImage ~= nil then
		return linkOrImage
	end
	scanner:setPosition(afterClose)

	-- Nothing parsed, just parse the bracket as text and continue
	self:removeLastBracket()
	return self:text(scanner:getSource(beforeClose, afterClose))
end

-- PORT NOTE: Java's instanceof LinkResultImpl check is a nil check, since LinkResult and
-- LinkResultImpl are one class (see LinkResult.lua). The switch on result.getType() reads the
-- type into a local for the if/elseif chain.
function InlineParserImpl.parseLinkOrImage(self: InlineParserImpl, opener: Bracket, beforeClose: Position): Node?
	local scanner = self._scanner
	local linkInfo = self:parseLinkInfo(opener, beforeClose)
	if linkInfo == nil then
		return nil
	end
	local processorStartPosition = scanner:position()

	for _, linkProcessor in ipairs(self._linkProcessors) do
		local linkResult = linkProcessor:process(linkInfo, scanner, self._context)
		if linkResult == nil then
			-- Reset position in case the processor used the scanner, and it didn't work out.
			scanner:setPosition(processorStartPosition)
			continue
		end

		local result = linkResult
		local node = result:getNode()
		local position = result:getPosition()
		local includeMarker = result:isIncludeMarker()

		local type = result:getType()
		if type == LinkResult.Type.WRAP then
			scanner:setPosition(position)
			return self:wrapBracket(opener, node, includeMarker)
		elseif type == LinkResult.Type.REPLACE then
			scanner:setPosition(position)
			return self:replaceBracket(opener, node, includeMarker)
		end
	end

	return nil
end

-- PORT NOTE: DestinationTitle and LinkInfoImpl, private nested classes at the end of the Java
-- class, are defined here, above their first uses in parseInlineDestinationTitle and
-- parseLinkInfo.

-- A destination and optional title for a link or image.
local DestinationTitle = {}
DestinationTitle.__index = DestinationTitle

type DestinationTitleFields = {
	destination: string,
	title: string?,
}

type DestinationTitle = typeof(setmetatable({} :: DestinationTitleFields, DestinationTitle))

function DestinationTitle.new(destination: string, title: string?): DestinationTitle
	return setmetatable({
		destination = destination,
		title = title,
	}, DestinationTitle) :: any
end

local LinkInfoImpl = {}
LinkInfoImpl.__index = LinkInfoImpl

-- PORT NOTE: Java (InlineParserImpl.java:425 and 456) copies the link text with
-- scanner.getSource(opener.contentPosition, beforeClose).getContent() in parseLinkInfo, for every
-- closer that might form a link. For nested images like "![".repeat(n) + "x" + "](u)".repeat(n)
-- each copy is O(n) long, so parsing is quadratic. Here LinkInfoImpl keeps the scanner and the two
-- positions instead, and text() makes the same copy on its first call and caches it. The built-in
-- CoreLinkProcessor reads the text only for reference links without a label (shortcut and
-- collapsed), so inline links never copy it. The text is identical: positions are immutable, and
-- getSource reads only the scanner's lines, which nothing changes once inline parsing starts
-- (Java's Scanner holds the same live list). getSource can't throw here either, since both
-- positions came from this scanner and contentPosition is before beforeClose.
type LinkInfoImplFields = {
	_marker: Text?,
	_openingBracket: Text,
	_text: string?,
	_scanner: Scanner,
	_textStart: Position,
	_textEnd: Position,
	_label: string?,
	_destination: string?,
	_title: string?,
	_afterTextBracket: Position,
	marker: (self: LinkInfoImpl) -> Text?,
	openingBracket: (self: LinkInfoImpl) -> Text,
	text: (self: LinkInfoImpl) -> string,
	label: (self: LinkInfoImpl) -> string?,
	destination: (self: LinkInfoImpl) -> string?,
	title: (self: LinkInfoImpl) -> string?,
	afterTextBracket: (self: LinkInfoImpl) -> Position,
}

type LinkInfoImpl = typeof(setmetatable({} :: LinkInfoImplFields, LinkInfoImpl))

function LinkInfoImpl.new(
	marker: Text?,
	openingBracket: Text,
	scanner: Scanner,
	textStart: Position,
	textEnd: Position,
	label: string?,
	destination: string?,
	title: string?,
	afterTextBracket: Position
): LinkInfo
	local self = setmetatable({
		_marker = marker,
		_openingBracket = openingBracket,
		_text = nil,
		_scanner = scanner,
		_textStart = textStart,
		_textEnd = textEnd,
		_label = label,
		_destination = destination,
		_title = title,
		_afterTextBracket = afterTextBracket,
	}, LinkInfoImpl)
	return (self :: any) :: LinkInfo
end

function LinkInfoImpl.marker(self: LinkInfoImpl): Text?
	return self._marker
end

function LinkInfoImpl.openingBracket(self: LinkInfoImpl): Text
	return self._openingBracket
end

function LinkInfoImpl.text(self: LinkInfoImpl): string
	local cached = self._text
	if cached ~= nil then
		return cached
	end
	local text = self._scanner:getSource(self._textStart, self._textEnd):getContent()
	self._text = text
	return text
end

function LinkInfoImpl.label(self: LinkInfoImpl): string?
	return self._label
end

function LinkInfoImpl.destination(self: LinkInfoImpl): string?
	return self._destination
end

function LinkInfoImpl.title(self: LinkInfoImpl): string?
	return self._title
end

function LinkInfoImpl.afterTextBracket(self: LinkInfoImpl): Position
	return self._afterTextBracket
end

-- Attempt to parse link destination, returning the string or nil if no match.
local function parseLinkDestination(scanner: Scanner): string?
	local delimiter = scanner:peek()
	local start = scanner:position()
	if not LinkScanner.scanLinkDestination(scanner) then
		return nil
	end

	local dest: string
	if delimiter == LESS_THAN then
		-- chop off surrounding <..>:
		local rawDestination = scanner:getSource(start, scanner:position()):getContent()
		dest = sub(rawDestination, 2, #rawDestination - 1)
	else
		dest = scanner:getSource(start, scanner:position()):getContent()
	end

	return Escaping.unescapeString(dest)
end

-- Attempt to parse link title (sans quotes), returning the string or nil if no match.
local function parseLinkTitle(scanner: Scanner): string?
	local start = scanner:position()
	if not LinkScanner.scanLinkTitle(scanner) then
		return nil
	end

	-- chop off ', " or parens
	local rawTitle = scanner:getSource(start, scanner:position()):getContent()
	local title = sub(rawTitle, 2, #rawTitle - 1)
	return Escaping.unescapeString(title)
end

-- Try to parse the destination and an optional title for an inline link/image.
local function parseInlineDestinationTitle(scanner: Scanner): DestinationTitle?
	if not scanner:nextChar(OPEN_PAREN) then
		return nil
	end

	scanner:whitespace()
	local dest = parseLinkDestination(scanner)
	if dest == nil then
		return nil
	end

	local title: string? = nil
	local whitespace = scanner:whitespace()
	-- title needs a whitespace before
	if whitespace >= 1 then
		title = parseLinkTitle(scanner)
		scanner:whitespace()
	end
	if not scanner:nextChar(CLOSE_PAREN) then
		-- Don't have a closing `)`, so it's not a destination and title.
		-- Note that something like `[foo](` could still be valid later, `(` will just be text.
		return nil
	end
	return DestinationTitle.new(dest, title)
end

function InlineParserImpl.parseLinkInfo(self: InlineParserImpl, opener: Bracket, beforeClose: Position): LinkInfo?
	local scanner = self._scanner
	-- Check to see if we have a link (or image, with a ! in front). The different types:
	-- - Inline:       `[foo](/uri)` or with optional title `[foo](/uri "title")`
	-- - Reference links
	--   - Full:      `[foo][bar]` (foo is the text and bar is the label that needs to match a
	-- reference)
	--   - Collapsed: `[foo][]`    (foo is both the text and label)
	--   - Shortcut:  `[foo]`      (foo is both the text and label)

	-- Starting position is after the closing `]`
	local afterClose = scanner:position()

	-- Maybe an inline link/image
	local destinationTitle = parseInlineDestinationTitle(scanner)
	if destinationTitle ~= nil then
		return LinkInfoImpl.new(
			opener.markerNode,
			opener.bracketNode,
			scanner,
			opener.contentPosition,
			beforeClose,
			nil,
			destinationTitle.destination,
			destinationTitle.title,
			afterClose
		)
	end
	-- Not an inline link/image, rewind back to after `]`.
	scanner:setPosition(afterClose)

	-- Maybe a reference link/image like `[foo][bar]`, `[foo][]` or `[foo]`.
	-- Note that even `[foo](` could be a valid link if foo is a reference, which is why we try
	-- this even if the `(` failed to be parsed as an inline link/image before.

	-- See if there's a link label like `[bar]` or `[]`
	local label = InlineParserImpl.parseLinkLabel(scanner)
	if label == nil then
		-- No label, rewind back
		scanner:setPosition(afterClose)
	end
	local textIsReference = label == nil or label == ""
	if opener.bracketAfter and textIsReference and opener.markerNode == nil then
		-- In case of shortcut or collapsed links, the text is used as the reference. But the
		-- reference is not allowed to contain an unescaped bracket, so if that's the case we
		-- don't need to continue. This is an optimization.
		return nil
	end

	return LinkInfoImpl.new(
		opener.markerNode,
		opener.bracketNode,
		scanner,
		opener.contentPosition,
		beforeClose,
		label,
		nil,
		nil,
		afterClose
	)
end

function InlineParserImpl.wrapBracket(
	self: InlineParserImpl,
	opener: Bracket,
	wrapperNode: Node,
	includeMarker: boolean
): Node?
	local scanner = self._scanner
	-- Wrapping this content would nest it one level deeper. Images can contain images, so without
	-- a limit input like "![".repeat(n) + "x" + "](u)".repeat(n) nests arbitrarily deep, same as
	-- for delimiters. Bail out before changing anything; the caller then treats the brackets as
	-- plain text.
	--
	-- Note that this can under-count by whatever nesting the processDelimiters call below adds to
	-- the content afterwards (e.g. "[*a*](u)" with a limit of 1 still wraps, resulting in depth
	-- 2). That's bounded: the depth recorded at the end of this method is exact by then, so
	-- anything wrapping the result sees the true depth, and the tree can exceed the limit by at
	-- most one level.
	if self._limitInlineNesting and opener.contentNestingDepth >= self._maxInlineNesting then
		return nil
	end

	-- Add all nodes between the opening bracket and now (closing bracket) as child nodes of the
	-- link
	local n = opener.bracketNode:getNext()
	while n ~= nil do
		local next = n:getNext()
		wrapperNode:appendChild(n)
		n = next
	end

	if self._includeSourceSpans then
		local startPosition = if includeMarker and opener.markerPosition ~= nil
			then opener.markerPosition
			else opener.bracketPosition
		wrapperNode:setSourceSpans(scanner:getSource(startPosition, scanner:position()):getSourceSpans())
	end

	-- Process delimiters such as emphasis inside link/image
	self:processDelimiters(opener.previousDelimiter)
	self:mergeChildTextNodes(wrapperNode)
	-- We don't need the corresponding text node anymore, we turned it into a link/image node
	if includeMarker and opener.markerNode ~= nil then
		opener.markerNode:unlink()
	end
	opener.bracketNode:unlink()
	self:removeLastBracket()

	-- Record the depth after removing the bracket, so that it counts towards the content of the
	-- enclosing bracket (if any) instead of this one. Note that processDelimiters above may have
	-- nested the content further, which contentNestingDepth includes by now.
	self:recordNestingDepth(wrapperNode, opener.contentNestingDepth + 1)

	-- Links within links are not allowed. We found this link, so there can be no other links
	-- around it.
	if opener.markerNode == nil then
		self:disallowPreviousLinks()
	end

	return wrapperNode
end

function InlineParserImpl.replaceBracket(
	self: InlineParserImpl,
	opener: Bracket,
	node: Node,
	includeMarker: boolean
): Node
	local scanner = self._scanner
	-- Remove delimiters (but keep text nodes)
	while self._lastDelimiter ~= nil and self._lastDelimiter ~= opener.previousDelimiter do
		self:removeDelimiterKeepNode(self._lastDelimiter)
	end

	if self._includeSourceSpans then
		local startPosition = if includeMarker and opener.markerPosition ~= nil
			then opener.markerPosition
			else opener.bracketPosition
		node:setSourceSpans(scanner:getSource(startPosition, scanner:position()):getSourceSpans())
	end

	self:removeLastBracket()

	-- Remove nodes that we added since the opener, because we're replacing them
	local n: Node? = if includeMarker and opener.markerNode ~= nil then opener.markerNode else opener.bracketNode
	while n ~= nil do
		local next = n:getNext()
		n:unlink()
		n = next
	end

	-- Record the depth after removing the bracket, so that it counts towards the content of the
	-- enclosing bracket (if any) instead of this one. The replacement node typically has no
	-- children (e.g. a footnote reference), but a LinkProcessor is free to attach some, so measure
	-- them.
	self:recordNestingDepth(node, self:nestingDepthOfSiblings(node:getFirstChild(), nil) + 1)

	-- Links within links are not allowed. We found this link, so there can be no other links
	-- around it. Note that this makes any syntax like `[foo]` behave the same as built-in links,
	-- which is probably a good default (it works for footnotes). It might be useful for a
	-- `LinkProcessor` to be able to specify the behavior; something we could add to `LinkResult`
	-- in the future if requested.
	if opener.markerNode == nil or not includeMarker then
		self:disallowPreviousLinks()
	end

	return node
end

function InlineParserImpl.addBracket(self: InlineParserImpl, bracket: Bracket)
	if self._lastBracket ~= nil then
		self._lastBracket.bracketAfter = true
	end
	self._lastBracket = bracket
end

-- PORT NOTE: the bracket is cast to non-nil: every caller has a bracket on the stack, which Java
-- relies on too, but the analyzer can't see.
function InlineParserImpl.removeLastBracket(self: InlineParserImpl)
	local bracket = self._lastBracket :: Bracket
	self._lastBracket = bracket.previous
	-- Whatever was nested inside this bracket is now content of the enclosing bracket, either as
	-- the child nodes of the link/image this bracket formed, or (if it didn't form one) as the
	-- nodes that were between the brackets.
	if self._lastBracket ~= nil and bracket.contentNestingDepth > self._lastBracket.contentNestingDepth then
		self._lastBracket.contentNestingDepth = bracket.contentNestingDepth
	end
end

-- PORT NOTE: Java (InlineParserImpl.java:580-589) walks the whole bracket stack on every call. Each
-- unclosed `![` stays on the stack, so for `![[]()`.repeat(n) (cmark's "pattern `![[]()`
-- repeated") the walks are quadratic. This stops at the first bracket an earlier call walked over;
-- `allowed` can't mark that stop, since image and other marker openers stay allowed. The output is
-- identical: a bracket's `previous` never changes and brackets only leave the stack from the top,
-- so every bracket below a walked one was walked too. Every link opener there is already
-- disallowed, nothing sets `allowed` back, and marker openers are left alone either way.
function InlineParserImpl.disallowPreviousLinks(self: InlineParserImpl)
	local bracket = self._lastBracket
	while bracket ~= nil and not self._disallowWalked[bracket] do
		self._disallowWalked[bracket] = true
		if bracket.markerNode == nil then
			-- Disallow link opener. It will still get matched, but will not result in a link.
			bracket.allowed = false
		end
		bracket = bracket.previous
	end
end

-- PORT NOTE: Java's content.length() counts UTF-16 units; this counts code points as the bytes
-- outside 0x80-0xBF (porting-from-java.md, Strings and characters). The helper has no Java
-- counterpart and sits above its only use, in parseLinkLabel.
local function codePointCount(s: string): number
	local _, count = gsub(s, "[^\128-\191]", "")
	return count
end

-- Attempt to parse a link label, returning the label between the brackets or nil.
function InlineParserImpl.parseLinkLabel(scanner: Scanner): string?
	if not scanner:nextChar(OPEN_BRACKET) then
		return nil
	end

	local start = scanner:position()
	if not LinkScanner.scanLinkLabelContent(scanner) then
		return nil
	end
	local finish = scanner:position()

	if not scanner:nextChar(CLOSE_BRACKET) then
		return nil
	end

	local content = scanner:getSource(start, finish):getContent()
	-- spec: A link label can have at most 999 characters inside the square brackets.
	if codePointCount(content) > 999 then
		return nil
	end

	return content
end

function InlineParserImpl.parseLineBreak(self: InlineParserImpl): Node
	self._scanner:next()

	local hard = self._trailingSpaces >= 2 and self._enabledInlineTypes.HardLineBreak == true
	self._trailingSpaces = 0
	if hard then
		return Nodes.HardLineBreak()
	else
		return Nodes.SoftLineBreak()
	end
end

-- Parse the next character as plain text, and possibly more if the following characters are
-- non-special.
function InlineParserImpl.parseText(self: InlineParserImpl): Node
	local scanner = self._scanner
	local specialCharacters = self._specialCharacters
	local start = scanner:position()
	scanner:next()
	local c: number
	while true do
		c = scanner:peek()
		if c == END or specialCharacters[c] then
			break
		end
		scanner:next()
	end

	local source = scanner:getSource(start, scanner:position())
	local content = source:getContent()

	if c == NEWLINE then
		-- We parsed until the end of the line. Trim any trailing spaces and remember them (for
		-- hard line breaks).
		local finish = Characters.skipBackwards(SPACE, content, #content - 1, 0) + 1
		self._trailingSpaces = #content - finish
		content = sub(content, 1, finish)
	elseif c == END then
		-- For the last line, both tabs and spaces are trimmed for some reason (checked with
		-- commonmark.js).
		local finish = Characters.skipSpaceTabBackwards(content, #content - 1, 0) + 1
		content = sub(content, 1, finish)
	end

	local text = Nodes.Text(content)
	text:setSourceSpans(source:getSourceSpans())
	return text
end

-- PORT NOTE: DelimiterSearchKey and DelimiterData, private nested classes at the end of the Java
-- class, are defined here, above scanDelimiters and processDelimiters, which use them.
-- DelimiterSearchKey's equals and hashCode exist only to key openerBottoms, and Luau tables key
-- by identity, so it is a number that is equal exactly when Java's equals holds: caseNumber is
-- always 0 to 5, so delimiterChar * 6 + caseNumber is unique per pair.
local DelimiterSearchKey = {}

function DelimiterSearchKey.new(delimiterChar: number, caseNumber: number): number
	return delimiterChar * 6 + caseNumber
end

local DelimiterData = {}
DelimiterData.__index = DelimiterData

type DelimiterDataFields = {
	characters: { Text },
	canClose: boolean,
	canOpen: boolean,
}

type DelimiterData = typeof(setmetatable({} :: DelimiterDataFields, DelimiterData))

function DelimiterData.new(characters: { Text }, canOpen: boolean, canClose: boolean): DelimiterData
	return setmetatable({
		characters = characters,
		canOpen = canOpen,
		canClose = canClose,
	}, DelimiterData) :: any
end

-- Scan a sequence of characters with code delimiterChar, and return information about the number
-- of delimiters and whether they are positioned such that they can open and/or close emphasis or
-- strong emphasis.
function InlineParserImpl.scanDelimiters(
	self: InlineParserImpl,
	delimiterProcessor: DelimiterProcessor,
	delimiterChar: number
): DelimiterData?
	local scanner = self._scanner
	local before = scanner:peekPreviousCodePoint()
	local start = scanner:position()

	-- Quick check to see if we have enough delimiters.
	local delimiterCount = scanner:matchMultiple(delimiterChar)
	if delimiterCount < delimiterProcessor:getMinLength() then
		scanner:setPosition(start)
		return nil
	end

	-- We do have enough, extract a text node for each delimiter character.
	local delimiters: { Text } = {}
	scanner:setPosition(start)
	local positionBefore = start
	while scanner:nextChar(delimiterChar) do
		table.insert(delimiters, self:text(scanner:getSource(positionBefore, scanner:position())))
		positionBefore = scanner:position()
	end

	local after = scanner:peekCodePoint()

	-- We could be more lazy here, in most cases we don't need to do every match case.
	local beforeIsPunctuation = before == END or Characters.isPunctuationCodePoint(before)
	local beforeIsWhitespace = before == END or Characters.isWhitespaceCodePoint(before)
	local afterIsPunctuation = after == END or Characters.isPunctuationCodePoint(after)
	local afterIsWhitespace = after == END or Characters.isWhitespaceCodePoint(after)

	local leftFlanking = not afterIsWhitespace and (not afterIsPunctuation or beforeIsWhitespace or beforeIsPunctuation)
	local rightFlanking = not beforeIsWhitespace
		and (not beforeIsPunctuation or afterIsWhitespace or afterIsPunctuation)
	local canOpen: boolean
	local canClose: boolean
	if delimiterChar == UNDERSCORE then
		canOpen = leftFlanking and (not rightFlanking or beforeIsPunctuation)
		canClose = rightFlanking and (not leftFlanking or afterIsPunctuation)
	else
		canOpen = leftFlanking and delimiterChar == delimiterProcessor:getOpeningCharacter()
		canClose = rightFlanking and delimiterChar == delimiterProcessor:getClosingCharacter()
	end

	return DelimiterData.new(delimiters, canOpen, canClose)
end

function InlineParserImpl.processDelimiters(self: InlineParserImpl, stackBottom: Delimiter?)
	-- Keep track of the bottom of each kind of opener to have a lower bound on search
	local openerBottoms: { [number]: Delimiter? } = {}

	-- Some delimiter processors only consume part of a run per call (e.g. 2 characters for
	-- StrongEmphasis), so a run can be matched over and over, each time nesting the node just
	-- created one level deeper inside a new one. Input like "*".repeat(n) + "x" + "*".repeat(n)
	-- therefore nests as deep as the input is long, which would overflow the stack of any
	-- recursive consumer of the tree (e.g. a renderer).
	--
	-- To limit that, a match is only allowed if the node it creates would be nested at most
	-- maxInlineNesting levels deep, which is one more than the deepest of the nodes it wraps
	-- (see nestingDepths). Measuring the content this way rather than tracking the delimiters
	-- themselves also covers nesting that builds up without any delimiter being reused, e.g.
	-- "*a ".repeat(n) + " b*".repeat(n), where each level uses a different pair of runs.
	--
	-- Delimiters that can't be matched are left as plain text by the cleanup at the end of this
	-- method.

	-- find first closer above stackBottom:
	local closer = self._lastDelimiter
	while closer ~= nil and closer.previous ~= stackBottom do
		closer = closer.previous
	end
	-- move forward, looking for closers, and handling each
	while closer ~= nil do
		local delimiterProcessor = self._delimiterProcessors[closer.delimiterChar]
		if not closer:canClose() or delimiterProcessor == nil then
			closer = closer.next
			continue
		end

		local searchKey = DelimiterSearchKey.new(
			closer.delimiterChar,
			-- Also distinguish by length of run and whether closer can open.
			closer:originalLength() % 3 + (if closer:canOpen() then 3 else 0)
		)
		local openerBottom = openerBottoms[searchKey]
		-- PORT NOTE: Java (InlineParserImpl.java:820-837) stops the search below only on reaching
		-- openerBottom itself. A later match can remove openerBottom from the stack (e.g. for
		-- `*a `.repeat(n) + `_a*_ `.repeat(n), cmark's "issue #389"), and from then on every closer
		-- of this kind walks back over all remaining openers, which is quadratic. For processors
		-- whose `_rejectsByMultipleOf3Rule` is set, this also stops at any opener created before
		-- openerBottom, as cmark 0.31.1's process_emphasis does with its position-based
		-- openers_bottom. The flag is a port-internal capability, not a Java API: it says process
		-- returns 0 exactly when the "multiple of 3" rule rejects the pair. EmphasisDelimiterProcessor.new
		-- sets it on what it builds (the core `*` and `_` processors and any
		-- CommonMark.Parser.Delimiter.EmphasisLikeDelimiterProcessor), and a
		-- StaggeredDelimiterProcessor has it when every member does (e.g. the core `_` processor
		-- plus an extension's longer `_` processor).
		-- The output is identical: every opener at or below openerBottom was already looked at by an
		-- earlier closer with the same key and couldn't match it, or sat past a depth break.
		-- - Rejection: the opener gate (InlineParserImpl.java:852) reads the opener's character and
		--   canOpen, and the rule (EmphasisDelimiterProcessor.java:32-37) reads its canClose and
		--   originalLength, all fixed, plus the closer's originalLength % 3 and canOpen, which the
		--   key fixes. A StaggeredDelimiterProcessor picks
		--   its member by the opener's current length (StaggeredDelimiterProcessor.java:81-83), which
		--   shrinks as other closers consume it, but every member applies the same rule, so
		--   whichever member a later closer reaches rejects too.
		-- - Depth break: the content depth only grows (later closers sit further right, and a match
		--   inside the range records a depth above what it wraps), so Java's longer walk breaks
		--   there as well.
		-- Other processors may accept depending on current lengths, so they keep Java's walk.
		local bottomIndex = if openerBottom ~= nil
				and (delimiterProcessor :: any)._rejectsByMultipleOf3Rule == true
			then self._delimiterIndexes[openerBottom]
			else nil

		local openingDelimiterChar = delimiterProcessor:getOpeningCharacter()

		-- Found delimiter closer. Now look back for first matching opener.
		local usedDelims = 0
		local openerFound = false
		local matchDepth = 0
		local createdNode: Node? = nil
		local opener = closer.previous
		-- The depth of the content is monotonically non-decreasing as opener moves further back
		-- (the range it would wrap only grows), so instead of rescanning that ever-growing range
		-- from scratch for every candidate -- which would make a single closer's search
		-- quadratic -- extend a running maximum, scanning each newly-exposed segment once.
		local scanBoundary: Text = closer:getCloser()
		local contentDepth = 0
		while
			opener ~= nil
			and opener ~= stackBottom
			and opener ~= openerBottom
			and (bottomIndex == nil or self._delimiterIndexes[opener] > bottomIndex)
		do
			if self._limitInlineNesting then
				contentDepth =
					math.max(contentDepth, self:nestingDepthOfSiblings(opener:getOpener():getNext(), scanBoundary))
				scanBoundary = opener:getOpener()
				if contentDepth >= self._maxInlineNesting then
					-- Because the depth only grows as we move further back, no opener can match
					-- anymore.
					break
				end
			end

			if opener:canOpen() and opener.delimiterChar == openingDelimiterChar then
				usedDelims = delimiterProcessor:process(opener :: any, closer :: any)
				if usedDelims > 0 then
					openerFound = true
					matchDepth = contentDepth + 1
					-- The node process() just created is conventionally inserted right after the
					-- opener's innermost remaining character (all built-in and extension
					-- DelimiterProcessors follow this); grab it now, before the character removal
					-- below unlinks that very character.
					createdNode = opener:getOpener():getNext()
					break
				end
			end
			opener = opener.previous
		end

		if not openerFound then
			-- Set lower bound for future searches for openers.
			openerBottoms[searchKey] = closer.previous
			if not closer:canOpen() then
				-- We can remove a closer that can't be an opener,
				-- once we've seen there's no matching opener:
				self:removeDelimiterKeepNode(closer)
			end
			closer = closer.next
			continue
		end

		-- PORT NOTE: from here on opener is read as `matched`, a non-nil cast of it: openerFound
		-- implies opener is set, which the analyzer can't see.
		local matched = opener :: Delimiter

		-- Remove number of used delimiters nodes.
		for _ = 0, usedDelims - 1 do
			local delimiter = table.remove(matched.characters) :: Text
			delimiter:unlink()
		end
		for _ = 0, usedDelims - 1 do
			local delimiter = table.remove(closer.characters, 1) :: Text
			delimiter:unlink()
		end

		self:removeDelimitersBetween(matched, closer)

		if createdNode ~= nil then
			self:recordNestingDepth(createdNode, matchDepth)
		end

		-- No delimiter characters left to process, so we can remove delimiter and the now empty
		-- node.
		if matched:length() == 0 then
			self:removeDelimiterAndNodes(matched)
		end

		if closer:length() == 0 then
			local next = closer.next
			self:removeDelimiterAndNodes(closer)
			closer = next
		end
	end

	-- remove all delimiters
	while self._lastDelimiter ~= nil and self._lastDelimiter ~= stackBottom do
		self:removeDelimiterKeepNode(self._lastDelimiter)
	end
end

-- Remember how deeply nested a node we just created is, so that anything wrapping it later sees
-- the depth it contributes: an enclosing delimiter pair looks it up via nestingDepthOfSiblings (it
-- needs the depth of a range of nodes), an enclosing bracket via the running maximum on
-- Bracket.contentNestingDepth (it needs the depth of all content since the bracket was opened, so
-- it can avoid looking at the nodes at all).
function InlineParserImpl.recordNestingDepth(self: InlineParserImpl, node: Node, depth: number)
	if not self._limitInlineNesting then
		return
	end
	self._nestingDepths[node] = depth
	if self._lastBracket ~= nil and depth > self._lastBracket.contentNestingDepth then
		self._lastBracket.contentNestingDepth = depth
	end
end

-- The deepest recorded nesting depth among the siblings starting at first, up to (excluding)
-- finish (or to the last sibling if finish is nil). Only these direct siblings are inspected, not
-- their descendants -- each recorded depth already accounts for its own subtree.
-- PORT NOTE: Java's `for (var node = first; ...; node = node.getNext())` is a while loop.
function InlineParserImpl.nestingDepthOfSiblings(self: InlineParserImpl, first: Node?, finish: Node?): number
	local depth = 0
	local node = first
	while node ~= nil and node ~= finish do
		local nodeDepth = self._nestingDepths[node]
		if nodeDepth ~= nil and nodeDepth > depth then
			depth = nodeDepth
		end
		node = node:getNext()
	end
	return depth
end

function InlineParserImpl.removeDelimitersBetween(self: InlineParserImpl, opener: Delimiter, closer: Delimiter)
	local delimiter = closer.previous
	while delimiter ~= nil and delimiter ~= opener do
		local previousDelimiter = delimiter.previous
		self:removeDelimiterKeepNode(delimiter)
		delimiter = previousDelimiter
	end
end

-- Remove the delimiter and the corresponding text node. For used delimiters, e.g. `*` in `*foo*`.
function InlineParserImpl.removeDelimiterAndNodes(self: InlineParserImpl, delim: Delimiter)
	self:removeDelimiter(delim)
end

-- Remove the delimiter but keep the corresponding node as text. For unused delimiters such as `_`
-- in `foo_bar`.
function InlineParserImpl.removeDelimiterKeepNode(self: InlineParserImpl, delim: Delimiter)
	self:removeDelimiter(delim)
end

function InlineParserImpl.removeDelimiter(self: InlineParserImpl, delim: Delimiter)
	if delim.previous ~= nil then
		delim.previous.next = delim.next
	end
	if delim.next == nil then
		-- top of stack
		self._lastDelimiter = delim.previous
	else
		delim.next.previous = delim.previous
	end
end

function InlineParserImpl.mergeChildTextNodes(self: InlineParserImpl, node: Node)
	-- No children, no need for merging
	if node:getFirstChild() == nil then
		return
	end

	-- Merge adjacent text nodes among the children of `node` and, iteratively, of all its
	-- descendants. An explicit stack is used rather than recursion so that deeply nested
	-- inline content (e.g. thousands of nested emphasis) cannot overflow the call stack.
	-- Each parent's text runs are disjoint from its descendants', so the order in which
	-- parents are processed does not affect the result.
	local parents: { Node } = { node }
	while #parents > 0 do
		self:mergeTextNodesInclusive(table.remove(parents) :: Node, parents)
	end
end

function InlineParserImpl.mergeTextNodesInclusive(self: InlineParserImpl, parent: Node, parents: { Node })
	local first: Text? = nil
	local last: Text? = nil
	local length = 0

	local node = parent:getFirstChild()
	local toNode = parent:getLastChild()
	while node ~= nil do
		if node.kind == "Text" then
			local text = node :: Text
			if first == nil then
				first = text
			end
			length += #(text.literal :: string)
			last = text
		else
			self:mergeIfNeeded(first, last, length)
			first = nil
			last = nil
			length = 0

			-- Defer this child's own children to the outer loop instead of recursing.
			if node:getFirstChild() ~= nil then
				table.insert(parents, node)
			end
		end
		if node == toNode then
			break
		end
		node = node:getNext()
	end

	self:mergeIfNeeded(first, last, length)
end

-- PORT NOTE: textLength only sized Java's StringBuilder; the parts array needs no capacity.
function InlineParserImpl.mergeIfNeeded(self: InlineParserImpl, first: Text?, last: Text?, _textLength: number)
	if first ~= nil and last ~= nil and first ~= last then
		local parts = { first.literal :: string }
		local n = 1
		local sourceSpans: SourceSpans? = nil
		if self._includeSourceSpans then
			local spans = SourceSpans.new()
			spans:addAll(first:getSourceSpans())
			sourceSpans = spans
		end
		local node = first:getNext()
		local stop = last:getNext()
		while node ~= stop do
			local text = node :: Text
			n += 1
			parts[n] = text.literal :: string
			if sourceSpans ~= nil then
				sourceSpans:addAll(text:getSourceSpans())
			end

			local unlink = text
			node = text:getNext()
			unlink:unlink()
		end
		local literal = table.concat(parts)
		first.literal = literal
		if sourceSpans ~= nil then
			first:setSourceSpans(sourceSpans:getSourceSpans())
		end
	end
end

return InlineParserImpl
