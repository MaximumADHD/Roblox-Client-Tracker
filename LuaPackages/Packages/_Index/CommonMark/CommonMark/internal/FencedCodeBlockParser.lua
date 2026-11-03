-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/FencedCodeBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local Characters = require(Root.text.Characters)
local Escaping = require(Root.internal.util.Escaping)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local Parsing = require(Root.internal.util.Parsing)
local SourceLine = require(Root.parser.SourceLine)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type FencedCodeBlock = Nodes.FencedCodeBlock
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine

local byte, char, sub = string.byte, string.char, string.sub

local unescapeString = Escaping.unescapeString

local BACKTICK = byte("`")
local TILDE = byte("~")
local SPACE = byte(" ")

local FencedCodeBlockParser = setmetatable({}, { __index = AbstractBlockParser })
FencedCodeBlockParser.__index = FencedCodeBlockParser

-- PORT NOTE: the otherLines StringBuilder is a parts array kept on the instance, so it is appended
-- with table.insert rather than a local `n`.
type FencedCodeBlockParserFields = {
	_block: FencedCodeBlock,
	_fenceChar: number,
	_openingFenceLength: number,
	_firstLine: string?,
	_otherLines: { string },
	tryClosing: (self: FencedCodeBlockParser, line: string, index: number) -> boolean,
}

export type FencedCodeBlockParser = AbstractBlockParser & FencedCodeBlockParserFields

function FencedCodeBlockParser.new(fenceChar: number, fenceLength: number, fenceIndent: number): FencedCodeBlockParser
	local block = Nodes.FencedCodeBlock()
	block.fenceCharacter = char(fenceChar)
	block:setOpeningFenceLength(fenceLength)
	block.fenceIndent = fenceIndent
	return setmetatable({
		_block = block,
		_fenceChar = fenceChar,
		_openingFenceLength = fenceLength,
		_firstLine = nil,
		_otherLines = {},
	}, FencedCodeBlockParser) :: any
end

function FencedCodeBlockParser.getBlock(self: FencedCodeBlockParser): FencedCodeBlock
	return self._block
end

function FencedCodeBlockParser.tryContinue(self: FencedCodeBlockParser, state: ParserState): BlockContinue?
	local nextNonSpace = state:getNextNonSpaceIndex()
	local newIndex = state:getIndex()
	local line = state:getLine():getContent()
	if
		state:getIndent() < Parsing.CODE_BLOCK_INDENT
		and nextNonSpace < #line
		and self:tryClosing(line, nextNonSpace)
	then
		-- closing fence - we're at end of line, so we can finalize now
		return BlockContinue.finished()
	else
		-- skip optional spaces of fence indent
		local i = self._block.fenceIndent
		local length = #line
		while i > 0 and newIndex < length and byte(line, newIndex + 1) == SPACE do
			newIndex += 1
			i -= 1
		end
	end
	return BlockContinue.atIndex(newIndex)
end

function FencedCodeBlockParser.addLine(self: FencedCodeBlockParser, line: SourceLine)
	if self._firstLine == nil then
		self._firstLine = line:getContent()
	else
		table.insert(self._otherLines, line:getContent())
		table.insert(self._otherLines, "\n")
	end
end

-- PORT NOTE: String.trim, which strips every character up to U+0020 from both ends. Those are all
-- single bytes. Escaping has the same helper, but it's private there.
local function trim(s: string): string
	local start = 0
	local finish = #s
	while start < finish and byte(s, start + 1) <= SPACE do
		start += 1
	end
	while finish > start and byte(s, finish - 1 + 1) <= SPACE do
		finish -= 1
	end
	return sub(s, start + 1, finish)
end

function FencedCodeBlockParser.closeBlock(self: FencedCodeBlockParser)
	-- first line becomes info string
	-- PORT NOTE: firstLine is cast to non-nil, as Java dereferences it unchecked: DocumentParser
	-- always adds the opening fence line before closing the block.
	self._block.info = unescapeString(trim(self._firstLine :: string))
	self._block.literal = table.concat(self._otherLines)
end

-- spec: A code fence is a sequence of at least three consecutive backtick characters (`) or
-- tildes (~). (Tildes and backticks cannot be mixed.)
local function checkOpener(line: string, index: number, indent: number): FencedCodeBlockParser?
	local backticks = 0
	local tildes = 0
	local length = #line
	for i = index, length - 1 do
		local c = byte(line, i + 1)
		if c == BACKTICK then
			backticks += 1
		elseif c == TILDE then
			tildes += 1
		else
			break
		end
	end
	if backticks >= 3 and tildes == 0 then
		-- spec: If the info string comes after a backtick fence, it may not contain any
		-- backtick characters.
		if Characters.find(BACKTICK, line, index + backticks) ~= -1 then
			return nil
		end
		return FencedCodeBlockParser.new(BACKTICK, backticks, indent)
	elseif tildes >= 3 and backticks == 0 then
		-- spec: Info strings for tilde code blocks can contain backticks and tildes
		return FencedCodeBlockParser.new(TILDE, tildes, indent)
	else
		return nil
	end
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
	_matchedBlockParser: MatchedBlockParser
): BlockStart?
	local indent = state:getIndent()
	if indent >= Parsing.CODE_BLOCK_INDENT then
		return BlockStart.none()
	end

	local nextNonSpace = state:getNextNonSpaceIndex()
	local blockParser = checkOpener(state:getLine():getContent(), nextNonSpace, indent)
	if blockParser ~= nil then
		-- PORT NOTE: the opening fence length is cast to non-nil, where Java unboxes the Integer:
		-- the constructor always sets it.
		return BlockStart.of(blockParser):atIndex(nextNonSpace + (blockParser._block:getOpeningFenceLength() :: number))
	else
		return BlockStart.none()
	end
end

FencedCodeBlockParser.Factory = Factory

-- spec: The content of the code block consists of all subsequent lines, until a closing code
-- fence of the same type as the code block began with (backticks or tildes), and with at least
-- as many backticks or tildes as the opening
-- code fence.
function FencedCodeBlockParser.tryClosing(self: FencedCodeBlockParser, line: string, index: number): boolean
	local fences = Characters.skip(self._fenceChar, line, index, #line) - index
	if fences < self._openingFenceLength then
		return false
	end
	-- spec: The closing code fence [...] may be followed only by spaces, which are ignored.
	local after = Characters.skipSpaceTab(line, index + fences, #line)
	if after == #line then
		self._block:setClosingFenceLength(fences)
		return true
	end
	return false
end

return FencedCodeBlockParser
