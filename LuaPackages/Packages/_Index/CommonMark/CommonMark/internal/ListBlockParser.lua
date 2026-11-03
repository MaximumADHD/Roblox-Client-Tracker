-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/ListBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local ListItemParser = require(Root.internal.ListItemParser)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local Parsing = require(Root.internal.util.Parsing)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type BulletList = Nodes.BulletList
type ListBlock = Nodes.ListBlock
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type Node = Node.Node
type OrderedList = Nodes.OrderedList
type ParserState = ParserState.ParserState

local byte, char, sub = string.byte, string.char, string.sub

local TAB = byte("\t")
local SPACE = byte(" ")
local MINUS = byte("-")
local PLUS = byte("+")
local STAR = byte("*")
local ZERO = byte("0")
local NINE = byte("9")
local PERIOD = byte(".")
local RIGHT_PAREN = byte(")")

local ListBlockParser = setmetatable({}, { __index = AbstractBlockParser })
ListBlockParser.__index = ListBlockParser

type ListBlockParserFields = {
	_block: ListBlock,
	_hadBlankLine: boolean,
	_linesAfterBlank: number,
}

export type ListBlockParser = AbstractBlockParser & ListBlockParserFields

function ListBlockParser.new(block: ListBlock): ListBlockParser
	return setmetatable({
		_block = block,
		_hadBlankLine = false,
		_linesAfterBlank = 0,
	}, ListBlockParser) :: any
end

function ListBlockParser.isContainer(_self: ListBlockParser): boolean
	return true
end

function ListBlockParser.canContain(self: ListBlockParser, childBlock: Node): boolean
	if childBlock.kind == "ListItem" then
		-- Another list item is added to this list block. If the previous line was blank, that
		-- means this list block is "loose" (not tight).
		--
		-- spec: A list is loose if any of its constituent list items are separated by blank
		-- lines
		if self._hadBlankLine and self._linesAfterBlank == 1 then
			self._block.tight = false
			self._hadBlankLine = false
		end
		return true
	else
		return false
	end
end

function ListBlockParser.getBlock(self: ListBlockParser): ListBlock
	return self._block
end

function ListBlockParser.tryContinue(self: ListBlockParser, state: ParserState): BlockContinue?
	if state:isBlank() then
		self._hadBlankLine = true
		self._linesAfterBlank = 0
	elseif self._hadBlankLine then
		self._linesAfterBlank += 1
	end
	-- List blocks themselves don't have any markers, only list items. So try to stay in the
	-- list. If there is a block start other than list item, canContain makes sure that this
	-- list is closed.
	return BlockContinue.atIndex(state:getIndex())
end

-- PORT NOTE: ListData and ListMarkerData, private nested classes at the end of the Java class,
-- are defined here, above their first uses in parseListMarker and parseList.
local ListData = {}
ListData.__index = ListData

type ListDataFields = {
	listBlock: ListBlock,
	contentColumn: number,
}

type ListData = typeof(setmetatable({} :: ListDataFields, ListData))

function ListData.new(listBlock: ListBlock, contentColumn: number): ListData
	return setmetatable({
		listBlock = listBlock,
		contentColumn = contentColumn,
	}, ListData) :: any
end

local ListMarkerData = {}
ListMarkerData.__index = ListMarkerData

type ListMarkerDataFields = {
	listBlock: ListBlock,
	indexAfterMarker: number,
}

type ListMarkerData = typeof(setmetatable({} :: ListMarkerDataFields, ListMarkerData))

function ListMarkerData.new(listBlock: ListBlock, indexAfterMarker: number): ListMarkerData
	return setmetatable({
		listBlock = listBlock,
		indexAfterMarker = indexAfterMarker,
	}, ListMarkerData) :: any
end

local function isSpaceTabOrEnd(line: string, index: number): boolean
	if index < #line then
		local c = byte(line, index + 1)
		if c == SPACE or c == TAB then
			return true
		else
			return false
		end
	else
		return true
	end
end

-- spec: An ordered list marker is a sequence of 1-9 arabic digits (0-9), followed by either a
-- `.` character or a `)` character.
local function parseOrderedList(line: string, index: number): ListMarkerData?
	local digits = 0
	local length = #line
	for i = index, length - 1 do
		local c = byte(line, i + 1)
		-- PORT NOTE: the ten '0'..'9' cases are one byte-range check.
		if c >= ZERO and c <= NINE then
			digits += 1
			if digits > 9 then
				return nil
			end
		elseif c == PERIOD or c == RIGHT_PAREN then
			if digits >= 1 and isSpaceTabOrEnd(line, i + 1) then
				local number = sub(line, index + 1, i)
				local orderedList = Nodes.OrderedList()
				-- PORT NOTE: Integer.parseInt is tonumber, cast to non-nil: number is 1 to 9 ASCII
				-- digits, so it always parses, and exactly, as Java's int does.
				orderedList.markerStartNumber = tonumber(number) :: number
				orderedList.markerDelimiter = char(c)
				return ListMarkerData.new(orderedList, i + 1)
			else
				return nil
			end
		else
			return nil
		end
	end
	return nil
end

local function parseListMarker(line: string, index: number): ListMarkerData?
	local c = byte(line, index + 1)
	-- spec: A bullet list marker is a -, +, or * character.
	if c == MINUS or c == PLUS or c == STAR then
		if isSpaceTabOrEnd(line, index + 1) then
			local bulletList = Nodes.BulletList()
			bulletList.marker = char(c)
			return ListMarkerData.new(bulletList, index + 1)
		else
			return nil
		end
	else
		return parseOrderedList(line, index)
	end
end

-- Parse a list marker and return data on the marker or null.
local function parseList(line: string, markerIndex: number, markerColumn: number, inParagraph: boolean): ListData?
	local listMarker = parseListMarker(line, markerIndex)
	if listMarker == nil then
		return nil
	end
	local listBlock = listMarker.listBlock

	local indexAfterMarker = listMarker.indexAfterMarker
	local markerLength = indexAfterMarker - markerIndex
	-- marker doesn't include tabs, so counting them as columns directly is ok
	local columnAfterMarker = markerColumn + markerLength
	-- the column within the line where the content starts
	local contentColumn = columnAfterMarker

	-- See at which column the content starts if there is content
	local hasContent = false
	local length = #line
	for i = indexAfterMarker, length - 1 do
		local c = byte(line, i + 1)
		if c == TAB then
			contentColumn += Parsing.columnsToNextTabStop(contentColumn)
		elseif c == SPACE then
			contentColumn += 1
		else
			hasContent = true
			break
		end
	end

	if inParagraph then
		-- If the list item is ordered, the start number must be 1 to interrupt a paragraph.
		if listBlock.kind == "OrderedList" and (listBlock :: OrderedList).markerStartNumber ~= 1 then
			return nil
		end
		-- Empty list item can not interrupt a paragraph.
		if not hasContent then
			return nil
		end
	end

	if not hasContent or (contentColumn - columnAfterMarker) > Parsing.CODE_BLOCK_INDENT then
		-- If this line is blank or has a code block, default to 1 space after marker
		contentColumn = columnAfterMarker + 1
	end

	return ListData.new(listBlock, contentColumn)
end

-- Returns true if the two list items are of the same type, with the same delimiter and bullet
-- character. This is used in agglomerating list items into lists.
local function listsMatch(a: ListBlock, b: ListBlock): boolean
	if a.kind == "BulletList" and b.kind == "BulletList" then
		return (a :: BulletList).marker == (b :: BulletList).marker
	elseif a.kind == "OrderedList" and b.kind == "OrderedList" then
		return (a :: OrderedList).markerDelimiter == (b :: OrderedList).markerDelimiter
	end
	return false
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
	local matched = matchedBlockParser:getMatchedBlockParser()

	if state:getIndent() >= Parsing.CODE_BLOCK_INDENT then
		return BlockStart.none()
	end
	local markerIndex = state:getNextNonSpaceIndex()
	local markerColumn = state:getColumn() + state:getIndent()
	local inParagraph = not matchedBlockParser:getParagraphLines():isEmpty()
	local listData = parseList(state:getLine():getContent(), markerIndex, markerColumn, inParagraph)
	if listData == nil then
		return BlockStart.none()
	end

	local newColumn = listData.contentColumn
	local listItemParser = ListItemParser.new(state:getIndent(), newColumn - state:getColumn())

	-- prepend the list block if needed
	-- PORT NOTE: `instanceof ListBlockParser` is a metatable check; ListBlockParser has no
	-- subclasses.
	if
		getmetatable(matched :: any) ~= ListBlockParser
		or not listsMatch(matched:getBlock() :: ListBlock, listData.listBlock)
	then
		local listBlockParser = ListBlockParser.new(listData.listBlock)
		-- We start out with assuming a list is tight. If we find a blank line, we set it to
		-- loose later.
		listData.listBlock.tight = true

		return BlockStart.of(listBlockParser, listItemParser):atColumn(newColumn)
	else
		return BlockStart.of(listItemParser):atColumn(newColumn)
	end
end

ListBlockParser.Factory = Factory

return ListBlockParser
