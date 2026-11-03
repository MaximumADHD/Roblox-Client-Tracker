-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/ThematicBreakParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type ParserState = ParserState.ParserState
type ThematicBreak = Nodes.ThematicBreak

local byte, sub = string.byte, string.sub

local DASH = byte("-")
local UNDERSCORE = byte("_")
local ASTERISK = byte("*")
local SPACE = byte(" ")
local TAB = byte("\t")

local ThematicBreakParser = setmetatable({}, { __index = AbstractBlockParser })
ThematicBreakParser.__index = ThematicBreakParser

type ThematicBreakParserFields = {
	_block: ThematicBreak,
}

export type ThematicBreakParser = AbstractBlockParser & ThematicBreakParserFields

function ThematicBreakParser.new(literal: string): ThematicBreakParser
	local block = Nodes.ThematicBreak()
	block.literal = literal
	return setmetatable({ _block = block }, ThematicBreakParser) :: any
end

function ThematicBreakParser.getBlock(self: ThematicBreakParser): ThematicBreak
	return self._block
end

function ThematicBreakParser.tryContinue(_self: ThematicBreakParser, _state: ParserState): BlockContinue?
	-- a horizontal rule can never container > 1 line, so fail to match
	return BlockContinue.none()
end

-- spec: A line consisting of 0-3 spaces of indentation, followed by a sequence of three or more
-- matching -, _, or * characters, each followed optionally by any number of spaces, forms a
-- thematic break.
local function isThematicBreak(line: string, index: number): boolean
	local dashes = 0
	local underscores = 0
	local asterisks = 0
	local length = #line
	for i = index, length - 1 do
		local c = byte(line, i + 1)
		if c == DASH then
			dashes += 1
		elseif c == UNDERSCORE then
			underscores += 1
		elseif c == ASTERISK then
			asterisks += 1
		-- PORT NOTE: the empty ' '/'\t' case is folded into the default's condition, because
		-- selene rejects an empty elseif.
		elseif c ~= SPACE and c ~= TAB then
			-- ' ' and '\t' are allowed, even between markers
			return false
		end
	end

	return (dashes >= 3 and underscores == 0 and asterisks == 0)
		or (underscores >= 3 and dashes == 0 and asterisks == 0)
		or (asterisks >= 3 and dashes == 0 and underscores == 0)
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
	if state:getIndent() >= 4 then
		return BlockStart.none()
	end
	local nextNonSpace = state:getNextNonSpaceIndex()
	local line = state:getLine():getContent()
	if isThematicBreak(line, nextNonSpace) then
		local literal = sub(line, state:getIndex() + 1, #line)
		return BlockStart.of(ThematicBreakParser.new(literal)):atIndex(#line)
	else
		return BlockStart.none()
	end
end

ThematicBreakParser.Factory = Factory

return ThematicBreakParser
