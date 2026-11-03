-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/DocumentParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParser = require(Root.parser.block.BlockParser)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockQuoteParser = require(Root.internal.BlockQuoteParser)
local BlockStart = require(Root.parser.block.BlockStart)
local Characters = require(Root.text.Characters)
local Definitions = require(Root.internal.Definitions)
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DocumentBlockParser = require(Root.internal.DocumentBlockParser)
local FencedCodeBlockParser = require(Root.internal.FencedCodeBlockParser)
local HeadingParser = require(Root.internal.HeadingParser)
local HtmlBlockParser = require(Root.internal.HtmlBlockParser)
local IncludeSourceSpans = require(Root.parser.IncludeSourceSpans)
local IndentedCodeBlockParser = require(Root.internal.IndentedCodeBlockParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserContextImpl = require(Root.internal.InlineParserContextImpl)
local InlineParserFactory = require(Root.parser.InlineParserFactory)
local Integer = require(Root.internal.port.Integer)
local LineReader = require(Root.internal.util.LineReader)
local LinkProcessor = require(Root.parser.beta.LinkProcessor)
local ListBlockParser = require(Root.internal.ListBlockParser)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Nodes = require(Root.node.Nodes)
local ParagraphParser = require(Root.internal.ParagraphParser)
local ParserState = require(Root.parser.block.ParserState)
local Parsing = require(Root.internal.util.Parsing)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpan = require(Root.node.SourceSpan)
local ThematicBreakParser = require(Root.internal.ThematicBreakParser)

type BlockParser = BlockParser.BlockParser
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type Definitions = Definitions.Definitions
type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DocumentBlockParser = DocumentBlockParser.DocumentBlockParser
type Document = Nodes.Document
type IncludeSourceSpans = IncludeSourceSpans.IncludeSourceSpans
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserFactory = InlineParserFactory.InlineParserFactory
type LinkProcessor = LinkProcessor.LinkProcessor
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type ParagraphParser = ParagraphParser.ParagraphParser
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine
type SourceLines = SourceLines.SourceLines
type SourceSpan = SourceSpan.SourceSpan

local byte, find, gsub, rep, sub = string.byte, string.find, string.gsub, string.rep, string.sub

local SPACE = byte(" ")
local TAB = byte("\t")
local CARRIAGE_RETURN = byte("\r")
local NEWLINE = byte("\n")

-- PORT NOTE: the Set<Class<? extends Block>> of block types is an array of node kind strings in
-- the LinkedHashSet's order, with "ListBlock" standing for the abstract ListBlock class
-- (nodes-containers). The Class-keyed HashMap is keyed by the same strings.
local CORE_FACTORY_TYPES: { string } = {
	"BlockQuote",
	"Heading",
	"FencedCodeBlock",
	"HtmlBlock",
	"ThematicBreak",
	"ListBlock",
	"IndentedCodeBlock",
}

local NODES_TO_CORE_FACTORIES: { [string]: BlockParserFactory } = table.freeze({
	BlockQuote = BlockQuoteParser.Factory.new(),
	Heading = HeadingParser.Factory.new(),
	FencedCodeBlock = FencedCodeBlockParser.Factory.new(),
	HtmlBlock = HtmlBlockParser.Factory.new(),
	ThematicBreak = ThematicBreakParser.Factory.new(),
	ListBlock = ListBlockParser.Factory.new(),
	IndentedCodeBlock = IndentedCodeBlockParser.Factory.new(),
})

-- PORT NOTE: the private nested classes MatchedBlockParserImpl and OpenBlockParser are file-local
-- and defined here, above their first use, rather than at the end of the file.
local MatchedBlockParserImpl = {}
MatchedBlockParserImpl.__index = MatchedBlockParserImpl

type MatchedBlockParserImplFields = {
	_matchedBlockParser: BlockParser,
	getMatchedBlockParser: (self: MatchedBlockParserImpl) -> BlockParser,
	getParagraphLines: (self: MatchedBlockParserImpl) -> SourceLines,
}

type MatchedBlockParserImpl = typeof(setmetatable({} :: MatchedBlockParserImplFields, MatchedBlockParserImpl))

function MatchedBlockParserImpl.new(matchedBlockParser: BlockParser): MatchedBlockParser
	local self = setmetatable({ _matchedBlockParser = matchedBlockParser }, MatchedBlockParserImpl)
	return (self :: any) :: MatchedBlockParser
end

function MatchedBlockParserImpl.getMatchedBlockParser(self: MatchedBlockParserImpl): BlockParser
	return self._matchedBlockParser
end

-- PORT NOTE: `instanceof ParagraphParser` is a metatable check; ParagraphParser has no subclasses.
local function isParagraphParser(blockParser: BlockParser): boolean
	return getmetatable(blockParser :: any) == ParagraphParser
end

function MatchedBlockParserImpl.getParagraphLines(self: MatchedBlockParserImpl): SourceLines
	if isParagraphParser(self._matchedBlockParser) then
		local paragraphParser: ParagraphParser = self._matchedBlockParser :: any
		return paragraphParser:getParagraphLines()
	end
	return SourceLines.empty()
end

local OpenBlockParser = {}
OpenBlockParser.__index = OpenBlockParser

type OpenBlockParserFields = {
	_blockParser: BlockParser,
	_sourceIndex: number,
}

type OpenBlockParser = typeof(setmetatable({} :: OpenBlockParserFields, OpenBlockParser))

function OpenBlockParser.new(blockParser: BlockParser, sourceIndex: number): OpenBlockParser
	return setmetatable({ _blockParser = blockParser, _sourceIndex = sourceIndex }, OpenBlockParser) :: any
end

local DocumentParser = {}
DocumentParser.__index = DocumentParser

-- PORT NOTE: Java's Set<Character> of link markers is a set table of byte values, as
-- InlineParserContext declares it.
type DocumentParserFields = {
	-- PORT NOTE: nil until the first setLine, like Java's null; every reader runs after it, so the
	-- field is typed non-optional.
	_line: SourceLine,
	-- Line index (0-based)
	_lineIndex: number,
	-- current index (offset) in input line (0-based)
	_index: number,
	-- current column of input line (tab causes column to go to next 4-space tab stop) (0-based)
	_column: number,
	-- if the current column is within a tab character (partially consumed tab)
	_columnIsInTab: boolean,
	_nextNonSpace: number,
	_nextNonSpaceColumn: number,
	_indent: number,
	_blank: boolean,
	_blockParserFactories: { BlockParserFactory },
	_inlineParserFactory: InlineParserFactory,
	_inlineContentParserFactories: { InlineContentParserFactory },
	_delimiterProcessors: { DelimiterProcessor },
	_linkProcessors: { LinkProcessor },
	_linkMarkers: { [number]: true },
	_includeSourceSpans: IncludeSourceSpans,
	_maxOpenBlockParsers: number,
	_maxInlineNesting: number,
	_enabledInlineTypes: { string }?,
	_linkReferenceDefinitions: boolean,
	_documentBlockParser: DocumentBlockParser,
	_definitions: Definitions,
	_openBlockParsers: { OpenBlockParser },
	_allBlockParsers: { BlockParser },
	parse: (self: DocumentParser, input: string) -> Document,
	parseReader: (self: DocumentParser, input: string) -> Document,
	getLine: (self: DocumentParser) -> SourceLine,
	getIndex: (self: DocumentParser) -> number,
	getNextNonSpaceIndex: (self: DocumentParser) -> number,
	getColumn: (self: DocumentParser) -> number,
	getIndent: (self: DocumentParser) -> number,
	isBlank: (self: DocumentParser) -> boolean,
	getActiveBlockParser: (self: DocumentParser) -> BlockParser,
	parseLine: (self: DocumentParser, ln: string, inputIndex: number) -> (),
	setLine: (self: DocumentParser, ln: string, inputIndex: number) -> (),
	findNextNonSpace: (self: DocumentParser) -> (),
	setNewIndex: (self: DocumentParser, newIndex: number) -> (),
	setNewColumn: (self: DocumentParser, newColumn: number) -> (),
	advance: (self: DocumentParser) -> (),
	addLine: (self: DocumentParser) -> (),
	addSourceSpans: (self: DocumentParser) -> (),
	findBlockStart: (self: DocumentParser, blockParser: BlockParser) -> BlockStart?,
	processInlines: (self: DocumentParser) -> (),
	addChild: (self: DocumentParser, openBlockParser: OpenBlockParser) -> (),
	activateBlockParser: (self: DocumentParser, openBlockParser: OpenBlockParser) -> (),
	deactivateBlockParser: (self: DocumentParser) -> OpenBlockParser,
	replaceParagraphLines: (self: DocumentParser, lines: number, paragraphParser: ParagraphParser) -> { SourceSpan },
	prepareActiveBlockParserForReplacement: (self: DocumentParser, blockParser: BlockParser) -> { SourceSpan },
	finalizeAndProcess: (self: DocumentParser) -> Document,
	closeBlockParsers: (self: DocumentParser, count: number) -> (),
	finalize: (self: DocumentParser, blockParser: BlockParser) -> (),
	addDefinitionsFrom: (self: DocumentParser, blockParser: BlockParser) -> (),
}

export type DocumentParser = typeof(setmetatable({} :: DocumentParserFields, DocumentParser))

-- PORT NOTE: enabledInlineTypes isn't in commonmark-java (see Parser.Builder.enabledInlineTypes);
-- it's passed through to the inline parser context, and nil enables every core inline type.
-- Likewise linkReferenceDefinitions (see Parser.Builder.linkReferenceDefinitions) goes to each
-- ParagraphParser; nil keeps Java's behavior.
function DocumentParser.new(
	blockParserFactories: { BlockParserFactory },
	inlineParserFactory: InlineParserFactory,
	inlineContentParserFactories: { InlineContentParserFactory },
	delimiterProcessors: { DelimiterProcessor },
	linkProcessors: { LinkProcessor },
	linkMarkers: { [number]: true },
	includeSourceSpans: IncludeSourceSpans,
	maxOpenBlockParsers: number,
	maxInlineNesting: number,
	enabledInlineTypes: { string }?,
	linkReferenceDefinitions: boolean?
): DocumentParser
	local self: DocumentParser = setmetatable({
		_line = nil,
		_lineIndex = -1,
		_index = 0,
		_column = 0,
		_columnIsInTab = false,
		_nextNonSpace = 0,
		_nextNonSpaceColumn = 0,
		_indent = 0,
		_blank = false,
		_blockParserFactories = blockParserFactories,
		_inlineParserFactory = inlineParserFactory,
		_inlineContentParserFactories = inlineContentParserFactories,
		_delimiterProcessors = delimiterProcessors,
		_linkProcessors = linkProcessors,
		_linkMarkers = linkMarkers,
		_includeSourceSpans = includeSourceSpans,
		_maxOpenBlockParsers = maxOpenBlockParsers,
		_maxInlineNesting = maxInlineNesting,
		_enabledInlineTypes = enabledInlineTypes,
		_linkReferenceDefinitions = linkReferenceDefinitions ~= false,
		_documentBlockParser = DocumentBlockParser.new(),
		_definitions = Definitions.new(),
		_openBlockParsers = {},
		_allBlockParsers = {},
	}, DocumentParser) :: any

	self:activateBlockParser(OpenBlockParser.new(self._documentBlockParser, 0))
	return self
end

function DocumentParser.getDefaultBlockParserTypes(): { string }
	return CORE_FACTORY_TYPES
end

function DocumentParser.calculateBlockParserFactories(
	customBlockParserFactories: { BlockParserFactory },
	enabledBlockTypes: { string }
): { BlockParserFactory }
	-- By having the custom factories come first, extensions are able to change behavior of core
	-- syntax.
	local list = table.clone(customBlockParserFactories)
	for _, blockType in ipairs(enabledBlockTypes) do
		table.insert(list, NODES_TO_CORE_FACTORIES[blockType])
	end
	return list
end

-- PORT NOTE: the message names the kind string where Java prints the Class, and lists the
-- possible options in CORE_FACTORY_TYPES' order where Java prints the HashMap's key set.
function DocumentParser.checkEnabledBlockTypes(enabledBlockTypes: { string })
	for _, enabledBlockType in ipairs(enabledBlockTypes) do
		if NODES_TO_CORE_FACTORIES[enabledBlockType] == nil then
			local options = table.concat(CORE_FACTORY_TYPES, ", ")
			error(`Can't enable block type {enabledBlockType}, possible options are: [{options}]`)
		end
	end
end

-- The main parsing function. Returns a parsed document AST.
function DocumentParser.parse(self: DocumentParser, input: string): Document
	local lineStart = 0
	local lineBreak = Characters.findLineBreak(input, lineStart)
	while lineBreak ~= -1 do
		local line = sub(input, lineStart + 1, lineBreak)
		self:parseLine(line, lineStart)
		if
			lineBreak + 1 < #input
			and byte(input, lineBreak + 1) == CARRIAGE_RETURN
			and byte(input, lineBreak + 1 + 1) == NEWLINE
		then
			lineStart = lineBreak + 2
		else
			lineStart = lineBreak + 1
		end
		lineBreak = Characters.findLineBreak(input, lineStart)
	end
	if input ~= "" and (lineStart == 0 or lineStart < #input) then
		local line = sub(input, lineStart + 1)
		self:parseLine(line, lineStart)
	end

	return self:finalizeAndProcess()
end

-- PORT NOTE: parse(Reader) is parseReader, after the overload's parameter type. LineReader wraps
-- a string (see its port note), so this takes the input string, and IOException plumbing is gone.
function DocumentParser.parseReader(self: DocumentParser, input: string): Document
	local lineReader = LineReader.new(input)
	local inputIndex = 0
	local line = lineReader:readLine()
	while line ~= nil do
		self:parseLine(line, inputIndex)
		inputIndex += #line
		local eol = lineReader:getLineTerminator()
		if eol ~= nil then
			inputIndex += #eol
		end
		line = lineReader:readLine()
	end

	return self:finalizeAndProcess()
end

function DocumentParser.getLine(self: DocumentParser): SourceLine
	return self._line
end

function DocumentParser.getIndex(self: DocumentParser): number
	return self._index
end

function DocumentParser.getNextNonSpaceIndex(self: DocumentParser): number
	return self._nextNonSpace
end

function DocumentParser.getColumn(self: DocumentParser): number
	return self._column
end

function DocumentParser.getIndent(self: DocumentParser): number
	return self._indent
end

function DocumentParser.isBlank(self: DocumentParser): boolean
	return self._blank
end

function DocumentParser.getActiveBlockParser(self: DocumentParser): BlockParser
	local openBlockParsers = self._openBlockParsers
	return openBlockParsers[#openBlockParsers - 1 + 1]._blockParser
end

-- Analyze a line of text and update the document appropriately. We parse markdown text by calling
-- this on each line of input, then finalizing the document.
function DocumentParser.parseLine(self: DocumentParser, ln: string, inputIndex: number)
	self:setLine(ln, inputIndex)

	-- PORT NOTE: DocumentParser implements ParserState; its own class type is cast to the
	-- interface where it's passed to block parsers and factories.
	local state: ParserState = self :: any
	local openBlockParsers = self._openBlockParsers

	-- For each containing block, try to parse the associated line start.
	-- The document will always match, so we can skip the first block parser and start at 1
	-- matches
	local matches = 1
	for i = 1, #openBlockParsers - 1 do
		local openBlockParser = openBlockParsers[i + 1]
		local blockParser = openBlockParser._blockParser
		self:findNextNonSpace()

		local result = blockParser:tryContinue(state)
		if result ~= nil then
			local blockContinue = result
			openBlockParser._sourceIndex = self:getIndex()
			if blockContinue:isFinalize() then
				self:addSourceSpans()
				self:closeBlockParsers(#openBlockParsers - i)
				return
			else
				if blockContinue:getNewIndex() ~= -1 then
					self:setNewIndex(blockContinue:getNewIndex())
				elseif blockContinue:getNewColumn() ~= -1 then
					self:setNewColumn(blockContinue:getNewColumn())
				end
				matches += 1
			end
		else
			break
		end
	end

	local unmatchedBlocks = #openBlockParsers - matches
	local blockParser = openBlockParsers[matches - 1 + 1]._blockParser
	local startedNewBlock = false

	local lastIndex = self._index

	-- Unless last matched container is a code block, try new container starts,
	-- adding children to the last matched container:
	local tryBlockStarts = blockParser:getBlock().kind == "Paragraph" or blockParser:isContainer()
	while tryBlockStarts do
		lastIndex = self._index
		self:findNextNonSpace()

		-- this is a little performance optimization:
		if
			self:isBlank()
			or (
				self._indent < Parsing.CODE_BLOCK_INDENT
				and Characters.isLetter(self._line:getContent(), self._nextNonSpace)
			)
		then
			self:setNewIndex(self._nextNonSpace)
			break
		end

		local blockStart = self:findBlockStart(blockParser)
		if blockStart == nil then
			self:setNewIndex(self._nextNonSpace)
			break
		end

		startedNewBlock = true
		local sourceIndex = self:getIndex()

		-- We're starting a new block. If we have any previous blocks that need to be closed, we
		-- need to do it now.
		if unmatchedBlocks > 0 then
			self:closeBlockParsers(unmatchedBlocks)
			unmatchedBlocks = 0
		end

		if blockStart:getNewIndex() ~= -1 then
			self:setNewIndex(blockStart:getNewIndex())
		elseif blockStart:getNewColumn() ~= -1 then
			self:setNewColumn(blockStart:getNewColumn())
		end

		local replacedSourceSpans: { SourceSpan }? = nil
		if blockStart:getReplaceParagraphLines() >= 1 or blockStart:isReplaceActiveBlockParser() then
			local activeBlockParser = self:getActiveBlockParser()
			if isParagraphParser(activeBlockParser) then
				local paragraphParser: ParagraphParser = activeBlockParser :: any
				local lines = if blockStart:isReplaceActiveBlockParser()
					then Integer.MAX_VALUE
					else blockStart:getReplaceParagraphLines()
				replacedSourceSpans = self:replaceParagraphLines(lines, paragraphParser)
			elseif blockStart:isReplaceActiveBlockParser() then
				replacedSourceSpans = self:prepareActiveBlockParserForReplacement(activeBlockParser)
			end
		end

		for _, newBlockParser in ipairs(blockStart:getBlockParsers()) do
			self:addChild(OpenBlockParser.new(newBlockParser, sourceIndex))
			if replacedSourceSpans ~= nil then
				newBlockParser:getBlock():setSourceSpans(replacedSourceSpans)
			end
			blockParser = newBlockParser
			tryBlockStarts = newBlockParser:isContainer()
		end
	end

	-- What remains at the offset is a text line. Add the text to the
	-- appropriate block.

	-- First check for a lazy continuation line
	if not startedNewBlock and not self:isBlank() and self:getActiveBlockParser():canHaveLazyContinuationLines() then
		openBlockParsers[#openBlockParsers - 1 + 1]._sourceIndex = lastIndex
		-- lazy paragraph continuation
		self:addLine()
	else
		-- finalize any blocks not matched
		if unmatchedBlocks > 0 then
			self:closeBlockParsers(unmatchedBlocks)
		end

		if not blockParser:isContainer() then
			self:addLine()
		elseif not self:isBlank() then
			-- create paragraph container for line
			local paragraphParser = ParagraphParser.new(self._linkReferenceDefinitions)
			self:addChild(OpenBlockParser.new(paragraphParser, lastIndex))
			self:addLine()
		else
			-- This can happen for a list item like this:
			-- ```
			-- *
			-- list item
			-- ```
			--
			-- The first line does not start a paragraph yet, but we still want to record source
			-- positions.
			self:addSourceSpans()
		end
	end
end

-- Prepares the input line replacing \0
-- PORT NOTE: accepted difference (Elvis, 2026-10-05; changing-core-behavior.md, *Deviations*).
-- U+FFFD is 3 UTF-8 bytes where '\0' is 1, so unlike Java the prepared line is longer than the
-- input line. On a line with k NULs the line's span is 2k bytes longer than the input, and spans
-- after the j-th NUL have columnIndex/inputIndex off by 2j. Rendered output and later lines are
-- unaffected.
local function prepareLine(line: string): string
	if find(line, "\0", 1, true) == nil then
		return line
	else
		return (gsub(line, "%z", "\u{FFFD}"))
	end
end

function DocumentParser.setLine(self: DocumentParser, ln: string, inputIndex: number)
	self._lineIndex += 1
	self._index = 0
	self._column = 0
	self._columnIsInTab = false

	local lineContent = prepareLine(ln)
	local sourceSpan = nil
	if self._includeSourceSpans ~= IncludeSourceSpans.NONE then
		sourceSpan = SourceSpan.of(self._lineIndex, 0, inputIndex, #lineContent)
	end
	self._line = SourceLine.of(lineContent, sourceSpan)
end

function DocumentParser.findNextNonSpace(self: DocumentParser)
	local i = self._index
	local cols = self._column

	self._blank = true
	local content = self._line:getContent()
	local length = #content
	while i < length do
		local c = byte(content, i + 1)
		if c == SPACE then
			i += 1
			cols += 1
			continue
		elseif c == TAB then
			i += 1
			cols += (4 - (cols % 4))
			continue
		end
		self._blank = false
		break
	end

	self._nextNonSpace = i
	self._nextNonSpaceColumn = cols
	self._indent = self._nextNonSpaceColumn - self._column
end

function DocumentParser.setNewIndex(self: DocumentParser, newIndex: number)
	if newIndex >= self._nextNonSpace then
		-- We can start from here, no need to calculate tab stops again
		self._index = self._nextNonSpace
		self._column = self._nextNonSpaceColumn
	end
	local length = #self._line:getContent()
	while self._index < newIndex and self._index ~= length do
		self:advance()
	end
	-- If we're going to an index as opposed to a column, we're never within a tab
	self._columnIsInTab = false
end

function DocumentParser.setNewColumn(self: DocumentParser, newColumn: number)
	if newColumn >= self._nextNonSpaceColumn then
		-- We can start from here, no need to calculate tab stops again
		self._index = self._nextNonSpace
		self._column = self._nextNonSpaceColumn
	end
	local length = #self._line:getContent()
	while self._column < newColumn and self._index ~= length do
		self:advance()
	end
	if self._column > newColumn then
		-- Last character was a tab and we overshot our target
		self._index -= 1
		self._column = newColumn
		self._columnIsInTab = true
	else
		self._columnIsInTab = false
	end
end

function DocumentParser.advance(self: DocumentParser)
	local c = byte(self._line:getContent(), self._index + 1)
	self._index += 1
	if c == TAB then
		self._column += Parsing.columnsToNextTabStop(self._column)
	else
		self._column += 1
	end
end

-- Add line content to the active block parser. We assume it can accept lines -- that check should
-- be done before calling this.
function DocumentParser.addLine(self: DocumentParser)
	local line = self._line
	local index = self._index
	local content
	if self._columnIsInTab then
		-- Our column is in a partially consumed tab. Expand the remaining columns (to the next tab
		-- stop) to spaces.
		local afterTab = index + 1
		local rest = sub(line:getContent(), afterTab + 1, #line:getContent())
		local spaces = Parsing.columnsToNextTabStop(self._column)
		content = rep(" ", spaces) .. rest
	elseif index == 0 then
		content = line:getContent()
	else
		content = sub(line:getContent(), index + 1, #line:getContent())
	end
	local sourceSpan = nil
	if self._includeSourceSpans == IncludeSourceSpans.BLOCKS_AND_INLINES then
		local lineSpan = line:getSourceSpan() :: SourceSpan
		if index < lineSpan:getLength() then
			-- Note that if we're in a partially-consumed tab the length of the source span and the
			-- content don't match.
			sourceSpan = lineSpan:subSpan(index)
		end
	end
	self:getActiveBlockParser():addLine(SourceLine.of(content, sourceSpan))
	self:addSourceSpans()
end

function DocumentParser.addSourceSpans(self: DocumentParser)
	if self._includeSourceSpans ~= IncludeSourceSpans.NONE then
		local openBlockParsers = self._openBlockParsers
		local line = self._line
		-- Don't add source spans for Document itself (it would get the whole source text), so
		-- start at 1, not 0
		for i = 1, #openBlockParsers - 1 do
			local openBlockParser = openBlockParsers[i + 1]
			-- In case of a lazy continuation line, the index is less than where the block parser
			-- would expect the contents to start, so let's use whichever is smaller.
			local blockIndex = math.min(openBlockParser._sourceIndex, self._index)
			local length = #line:getContent() - blockIndex
			if length ~= 0 then
				openBlockParser._blockParser:addSourceSpan((line:getSourceSpan() :: SourceSpan):subSpan(blockIndex))
			end
		end
	end
end

function DocumentParser.findBlockStart(self: DocumentParser, blockParser: BlockParser): BlockStart?
	if #self._openBlockParsers > self._maxOpenBlockParsers then
		return nil
	end
	local state: ParserState = self :: any
	local matchedBlockParser = MatchedBlockParserImpl.new(blockParser)
	for _, blockParserFactory in ipairs(self._blockParserFactories) do
		local result = blockParserFactory:tryStart(state, matchedBlockParser)
		if result ~= nil then
			return result
		end
	end
	return nil
end

-- Walk through a block & children recursively, parsing string content into inline content where
-- appropriate.
function DocumentParser.processInlines(self: DocumentParser)
	local context = InlineParserContextImpl.new(
		self._inlineContentParserFactories,
		self._delimiterProcessors,
		self._linkProcessors,
		self._linkMarkers,
		self._maxInlineNesting,
		self._definitions,
		self._enabledInlineTypes
	)
	local inlineParser = self._inlineParserFactory:create(context)

	for _, blockParser in ipairs(self._allBlockParsers) do
		blockParser:parseInlines(inlineParser)
	end
end

-- Add block of type tag as a child of the tip. If the tip can't accept children, close and
-- finalize it and try its parent, and so on until we find a block that can accept children.
function DocumentParser.addChild(self: DocumentParser, openBlockParser: OpenBlockParser)
	while not self:getActiveBlockParser():canContain(openBlockParser._blockParser:getBlock()) do
		self:closeBlockParsers(1)
	end

	self:getActiveBlockParser():getBlock():appendChild(openBlockParser._blockParser:getBlock())
	self:activateBlockParser(openBlockParser)
end

function DocumentParser.activateBlockParser(self: DocumentParser, openBlockParser: OpenBlockParser)
	table.insert(self._openBlockParsers, openBlockParser)
end

function DocumentParser.deactivateBlockParser(self: DocumentParser): OpenBlockParser
	return table.remove(self._openBlockParsers) :: OpenBlockParser
end

function DocumentParser.replaceParagraphLines(
	self: DocumentParser,
	lines: number,
	paragraphParser: ParagraphParser
): { SourceSpan }
	-- Remove lines from paragraph as the new block is using them.
	-- If all lines are used, this also unlinks the Paragraph block.
	local sourceSpans = paragraphParser:removeLines(lines)
	-- Close the paragraph block parser, which will finalize it.
	self:closeBlockParsers(1)
	return sourceSpans
end

function DocumentParser.prepareActiveBlockParserForReplacement(
	self: DocumentParser,
	blockParser: BlockParser
): { SourceSpan }
	-- Note that we don't want to parse inlines here, as it's getting replaced.
	self:deactivateBlockParser()

	-- Do this so that source positions are calculated, which we will carry over to the replacing
	-- block.
	blockParser:closeBlock()
	blockParser:getBlock():unlink()
	return blockParser:getBlock():getSourceSpans()
end

function DocumentParser.finalizeAndProcess(self: DocumentParser): Document
	self:closeBlockParsers(#self._openBlockParsers)
	self:processInlines()
	return self._documentBlockParser:getBlock()
end

function DocumentParser.closeBlockParsers(self: DocumentParser, count: number)
	for _ = 0, count - 1 do
		local blockParser = self:deactivateBlockParser()._blockParser
		self:finalize(blockParser)
		-- Remember for inline parsing. Note that a lot of blocks don't need inline parsing. We
		-- could have a separate interface (e.g. BlockParserWithInlines) so that we only have to
		-- remember those that actually have inlines to parse.
		table.insert(self._allBlockParsers, blockParser)
	end
end

-- Finalize a block. Close it and do any necessary postprocessing, e.g. setting the content of
-- blocks and collecting link reference definitions from paragraphs.
function DocumentParser.finalize(self: DocumentParser, blockParser: BlockParser)
	self:addDefinitionsFrom(blockParser)
	blockParser:closeBlock()
end

function DocumentParser.addDefinitionsFrom(self: DocumentParser, blockParser: BlockParser)
	for _, definitionMap in ipairs(blockParser:getDefinitions()) do
		self._definitions:addDefinitions(definitionMap)
	end
end

return DocumentParser
