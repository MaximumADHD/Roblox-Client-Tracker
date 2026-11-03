-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/HeadingParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local Characters = require(Root.text.Characters)
local InlineParser = require(Root.parser.InlineParser)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local Parsing = require(Root.internal.util.Parsing)
local Scanner = require(Root.parser.beta.Scanner)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type Heading = Nodes.Heading
type InlineParser = InlineParser.InlineParser
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type Node = Node.Node
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine
type SourceLines = SourceLines.SourceLines

local byte = string.byte

local HASH = byte("#")
local SPACE = byte(" ")
local TAB = byte("\t")
local EQUALS = byte("=")
local MINUS = byte("-")

local HeadingParser = setmetatable({}, { __index = AbstractBlockParser })
HeadingParser.__index = HeadingParser

type HeadingParserFields = {
	_block: Heading,
	_content: SourceLines,
}

export type HeadingParser = AbstractBlockParser & HeadingParserFields

function HeadingParser.new(level: number, content: SourceLines): HeadingParser
	local block = Nodes.Heading()
	block.level = level
	return setmetatable({
		_block = block,
		_content = content,
	}, HeadingParser) :: any
end

function HeadingParser.getBlock(self: HeadingParser): Node
	return self._block
end

function HeadingParser.tryContinue(_self: HeadingParser, _parserState: ParserState): BlockContinue?
	-- In both ATX and Setext headings, once we have the heading markup, there's nothing more to
	-- parse.
	return BlockContinue.none()
end

function HeadingParser.parseInlines(self: HeadingParser, inlineParser: InlineParser)
	inlineParser:parse(self._content, self._block)
end

-- spec: An ATX heading consists of a string of characters, parsed as inline content, between an
-- opening sequence of 1-6 unescaped # characters and an optional closing sequence of any number
-- of unescaped # characters. The opening sequence of # characters must be followed by a space
-- or by the end of line. The optional closing sequence of #s must be preceded by a space and
-- may be followed by spaces only.
local function getAtxHeading(line: SourceLine): HeadingParser?
	local scanner = Scanner.of(SourceLines.of(line))
	local level = scanner:matchMultiple(HASH)

	if level == 0 or level > 6 then
		return nil
	end

	if not scanner:hasNext() then
		-- End of line after markers is an empty heading
		return HeadingParser.new(level, SourceLines.empty())
	end

	local next = scanner:peek()
	if not (next == SPACE or next == TAB) then
		return nil
	end

	scanner:whitespace()
	local start = scanner:position()
	local finish = start
	local hashCanEnd = true

	while scanner:hasNext() do
		local c = scanner:peek()
		if c == HASH then
			if hashCanEnd then
				scanner:matchMultiple(HASH)
				local whitespace = scanner:whitespace()
				-- If there's other characters, the hashes and spaces were part of the
				-- heading
				if scanner:hasNext() then
					finish = scanner:position()
				end
				hashCanEnd = whitespace > 0
			else
				scanner:next()
				finish = scanner:position()
			end
		elseif c == SPACE or c == TAB then
			hashCanEnd = true
			scanner:next()
		else
			hashCanEnd = false
			scanner:next()
			finish = scanner:position()
		end
	end

	local source = scanner:getSource(start, finish)
	local content = source:getContent()
	if content == "" then
		return HeadingParser.new(level, SourceLines.empty())
	end
	return HeadingParser.new(level, source)
end

local function isSetextHeadingRest(line: string, index: number, marker: number): boolean
	local afterMarker = Characters.skip(marker, line, index, #line)
	local afterSpace = Characters.skipSpaceTab(line, afterMarker, #line)
	return afterSpace >= #line
end

-- spec: A setext heading underline is a sequence of = characters or a sequence of - characters,
-- with no more than 3 spaces indentation and any number of trailing spaces.
local function getSetextHeadingLevel(line: string, index: number): number
	local c = byte(line, index + 1)
	if c == EQUALS then
		if isSetextHeadingRest(line, index + 1, EQUALS) then
			return 1
		end
	elseif c == MINUS then
		if isSetextHeadingRest(line, index + 1, MINUS) then
			return 2
		end
	end
	return 0
end

-- PORT NOTE: Factory implements BlockParserFactory directly, because
-- AbstractBlockParserFactory is dropped (ROACTCHAT-2833).
local Factory = {}
Factory.__index = Factory

function Factory.new(): BlockParserFactory
	return setmetatable({}, Factory) :: any
end

function Factory.tryStart(
	_self: BlockParserFactory,
	state: ParserState,
	matchedBlockParser: MatchedBlockParser
): BlockStart?
	if state:getIndent() >= Parsing.CODE_BLOCK_INDENT then
		return BlockStart.none()
	end

	local line = state:getLine()
	local nextNonSpace = state:getNextNonSpaceIndex()
	-- byte() past the end returns nil where Java's charAt throws; unreachable, because
	-- DocumentParser checks isBlank() before findBlockStart.
	if byte(line:getContent(), nextNonSpace + 1) == HASH then
		local atxHeading = getAtxHeading(line:substring(nextNonSpace, #line:getContent()))
		if atxHeading ~= nil then
			return BlockStart.of(atxHeading):atIndex(#line:getContent())
		end
	end

	local setextHeadingLevel = getSetextHeadingLevel(line:getContent(), nextNonSpace)
	if setextHeadingLevel > 0 then
		local paragraph = matchedBlockParser:getParagraphLines()
		if not paragraph:isEmpty() then
			return BlockStart.of(HeadingParser.new(setextHeadingLevel, paragraph))
				:atIndex(#line:getContent())
				:replaceParagraphLines(#paragraph:getLines())
		end
	end

	return BlockStart.none()
end

HeadingParser.Factory = Factory

return HeadingParser
