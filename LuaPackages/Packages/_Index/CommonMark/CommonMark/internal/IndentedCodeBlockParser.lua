-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/IndentedCodeBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local Characters = require(Root.text.Characters)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local Parsing = require(Root.internal.util.Parsing)
local SourceLine = require(Root.parser.SourceLine)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type IndentedCodeBlock = Nodes.IndentedCodeBlock
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type Node = Node.Node
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine

local IndentedCodeBlockParser = setmetatable({}, { __index = AbstractBlockParser })
IndentedCodeBlockParser.__index = IndentedCodeBlockParser

type IndentedCodeBlockParserFields = {
	_block: IndentedCodeBlock,
	_lines: { string },
}

export type IndentedCodeBlockParser = AbstractBlockParser & IndentedCodeBlockParserFields

function IndentedCodeBlockParser.new(): IndentedCodeBlockParser
	return setmetatable({
		_block = Nodes.IndentedCodeBlock(),
		_lines = {},
	}, IndentedCodeBlockParser) :: any
end

function IndentedCodeBlockParser.getBlock(self: IndentedCodeBlockParser): Node
	return self._block
end

function IndentedCodeBlockParser.tryContinue(_self: IndentedCodeBlockParser, state: ParserState): BlockContinue?
	if state:getIndent() >= Parsing.CODE_BLOCK_INDENT then
		return BlockContinue.atColumn(state:getColumn() + Parsing.CODE_BLOCK_INDENT)
	elseif state:isBlank() then
		return BlockContinue.atIndex(state:getNextNonSpaceIndex())
	else
		return BlockContinue.none()
	end
end

function IndentedCodeBlockParser.addLine(self: IndentedCodeBlockParser, line: SourceLine)
	table.insert(self._lines, line:getContent())
end

function IndentedCodeBlockParser.closeBlock(self: IndentedCodeBlockParser)
	local lines = self._lines
	local lastNonBlank = #lines - 1
	while lastNonBlank >= 0 do
		if not Characters.isBlank(lines[lastNonBlank + 1]) then
			break
		end
		lastNonBlank -= 1
	end

	local parts = {}
	local n = 0
	for i = 0, lastNonBlank do
		n += 1
		parts[n] = lines[i + 1]
		n += 1
		parts[n] = "\n"
	end

	local literal = table.concat(parts)
	self._block.literal = literal
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
	-- An indented code block cannot interrupt a paragraph.
	if
		state:getIndent() >= Parsing.CODE_BLOCK_INDENT
		and not state:isBlank()
		and state:getActiveBlockParser():getBlock().kind ~= "Paragraph"
	then
		return BlockStart.of(IndentedCodeBlockParser.new()):atColumn(state:getColumn() + Parsing.CODE_BLOCK_INDENT)
	else
		return BlockStart.none()
	end
end

IndentedCodeBlockParser.Factory = Factory

return IndentedCodeBlockParser
