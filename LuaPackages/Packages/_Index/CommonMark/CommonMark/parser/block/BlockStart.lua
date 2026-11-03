-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/BlockStart.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParser = require(Root.parser.block.BlockParser)

type BlockParser = BlockParser.BlockParser

-- Result object for starting parsing of a block, see static methods for constructors.
--
-- PORT NOTE: the abstract BlockStart and its only subclass, internal/BlockStartImpl.java, are one
-- class (ROACTCHAT-2833). `of` builds the Impl's state directly, and the Impl's getters are
-- methods here, so DocumentParser reads them without Java's instanceof check and cast.
local BlockStart = {}
BlockStart.__index = BlockStart

type BlockStartFields = {
	_blockParsers: { BlockParser },
	_newIndex: number,
	_newColumn: number,
	_replaceActiveBlockParser: boolean,
	_replaceParagraphLines: number,
	getBlockParsers: (self: BlockStart) -> { BlockParser },
	getNewIndex: (self: BlockStart) -> number,
	getNewColumn: (self: BlockStart) -> number,
	isReplaceActiveBlockParser: (self: BlockStart) -> boolean,
	getReplaceParagraphLines: (self: BlockStart) -> number,
	atIndex: (self: BlockStart, newIndex: number) -> BlockStart,
	atColumn: (self: BlockStart, newColumn: number) -> BlockStart,
	replaceActiveBlockParser: (self: BlockStart) -> BlockStart,
	replaceParagraphLines: (self: BlockStart, lines: number) -> BlockStart,
}

export type BlockStart = typeof(setmetatable({} :: BlockStartFields, BlockStart))

-- Result for when there is no block start.
function BlockStart.none(): BlockStart?
	return nil
end

-- Start block(s) with the specified parser(s).
function BlockStart.of(...: BlockParser): BlockStart
	return setmetatable({
		_blockParsers = { ... },
		_newIndex = -1,
		_newColumn = -1,
		_replaceActiveBlockParser = false,
		_replaceParagraphLines = 0,
	}, BlockStart) :: any
end

function BlockStart.getBlockParsers(self: BlockStart): { BlockParser }
	return self._blockParsers
end

function BlockStart.getNewIndex(self: BlockStart): number
	return self._newIndex
end

function BlockStart.getNewColumn(self: BlockStart): number
	return self._newColumn
end

function BlockStart.isReplaceActiveBlockParser(self: BlockStart): boolean
	return self._replaceActiveBlockParser
end

function BlockStart.getReplaceParagraphLines(self: BlockStart): number
	return self._replaceParagraphLines
end

-- Continue parsing at the specified index (see ParserState.getIndex).
function BlockStart.atIndex(self: BlockStart, newIndex: number): BlockStart
	self._newIndex = newIndex
	return self
end

-- Continue parsing at the specified column (for tab handling; see ParserState.getColumn).
function BlockStart.atColumn(self: BlockStart, newColumn: number): BlockStart
	self._newColumn = newColumn
	return self
end

-- Deprecated: use replaceParagraphLines instead.
function BlockStart.replaceActiveBlockParser(self: BlockStart): BlockStart
	self._replaceActiveBlockParser = true
	return self
end

-- Replace a number of lines from the current paragraph (as returned by
-- MatchedBlockParser.getParagraphLines) with the new block.
--
-- This is useful for parsing blocks that start with normal paragraphs and only have special
-- marker syntax in later lines, e.g. in this:
--
--     Foo
--     ===
--
-- The `Foo` line is initially parsed as a normal paragraph, then `===` is parsed as a heading
-- marker, replacing the 1 paragraph line before. The end result is a single Heading block.
--
-- Note that source spans from the replaced lines are automatically added to the new block.
--
-- lines: the number of lines to replace (at least 1); use Integer.MAX_VALUE (internal/port/Integer)
-- to replace the whole paragraph
function BlockStart.replaceParagraphLines(self: BlockStart, lines: number): BlockStart
	if not (lines >= 1) then
		error("Lines must be >= 1")
	end
	self._replaceParagraphLines = lines
	return self
end

return BlockStart
