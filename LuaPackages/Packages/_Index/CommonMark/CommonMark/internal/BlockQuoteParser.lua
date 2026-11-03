-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/BlockQuoteParser.java @ commonmark-parent-0.30.0
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

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockQuote = Nodes.BlockQuote
type BlockStart = BlockStart.BlockStart
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type Node = Node.Node
type ParserState = ParserState.ParserState

local byte = string.byte

local GREATER_THAN = byte(">")

local BlockQuoteParser = setmetatable({}, { __index = AbstractBlockParser })
BlockQuoteParser.__index = BlockQuoteParser

type BlockQuoteParserFields = {
	_block: BlockQuote,
}

export type BlockQuoteParser = AbstractBlockParser & BlockQuoteParserFields

function BlockQuoteParser.new(): BlockQuoteParser
	return setmetatable({ _block = Nodes.BlockQuote() }, BlockQuoteParser) :: any
end

local function isMarker(state: ParserState, index: number): boolean
	local line = state:getLine():getContent()
	return state:getIndent() < Parsing.CODE_BLOCK_INDENT and index < #line and byte(line, index + 1) == GREATER_THAN
end

function BlockQuoteParser.isContainer(_self: BlockQuoteParser): boolean
	return true
end

function BlockQuoteParser.canContain(_self: BlockQuoteParser, _block: Node): boolean
	return true
end

function BlockQuoteParser.getBlock(self: BlockQuoteParser): BlockQuote
	return self._block
end

function BlockQuoteParser.tryContinue(_self: BlockQuoteParser, state: ParserState): BlockContinue?
	local nextNonSpace = state:getNextNonSpaceIndex()
	if isMarker(state, nextNonSpace) then
		local newColumn = state:getColumn() + state:getIndent() + 1
		-- optional following space or tab
		if Characters.isSpaceOrTab(state:getLine():getContent(), nextNonSpace + 1) then
			newColumn += 1
		end
		return BlockContinue.atColumn(newColumn)
	else
		return BlockContinue.none()
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
	local nextNonSpace = state:getNextNonSpaceIndex()
	if isMarker(state, nextNonSpace) then
		local newColumn = state:getColumn() + state:getIndent() + 1
		-- optional following space or tab
		if Characters.isSpaceOrTab(state:getLine():getContent(), nextNonSpace + 1) then
			newColumn += 1
		end
		return BlockStart.of(BlockQuoteParser.new()):atColumn(newColumn)
	else
		return BlockStart.none()
	end
end

BlockQuoteParser.Factory = Factory

return BlockQuoteParser
