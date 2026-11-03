-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/ListItemParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type ListBlock = Nodes.ListBlock
type ListItem = Nodes.ListItem
type Node = Node.Node
type ParserState = ParserState.ParserState

local ListItemParser = setmetatable({}, { __index = AbstractBlockParser })
ListItemParser.__index = ListItemParser

type ListItemParserFields = {
	_block: ListItem,
	-- Minimum number of columns that the content has to be indented (relative to the containing
	-- block) to be part of this list item.
	_contentIndent: number,
	_hadBlankLine: boolean,
}

export type ListItemParser = AbstractBlockParser & ListItemParserFields

function ListItemParser.new(markerIndent: number, contentIndent: number): ListItemParser
	local block = Nodes.ListItem()
	block.markerIndent = markerIndent
	block.contentIndent = contentIndent
	return setmetatable({
		_block = block,
		_contentIndent = contentIndent,
		_hadBlankLine = false,
	}, ListItemParser) :: any
end

function ListItemParser.isContainer(_self: ListItemParser): boolean
	return true
end

function ListItemParser.canContain(self: ListItemParser, _childBlock: Node): boolean
	if self._hadBlankLine then
		-- We saw a blank line in this list item, that means the list block is loose.
		--
		-- spec: if any of its constituent list items directly contain two block-level elements
		-- with a blank line between them
		local parent = self._block:getParent()
		-- PORT NOTE: `instanceof ListBlock` matches ListBlock's two kinds (node/ListBlock.lua).
		if parent ~= nil and (parent.kind == "BulletList" or parent.kind == "OrderedList") then
			(parent :: ListBlock).tight = false
		end
	end
	return true
end

function ListItemParser.getBlock(self: ListItemParser): ListItem
	return self._block
end

function ListItemParser.tryContinue(self: ListItemParser, state: ParserState): BlockContinue?
	if state:isBlank() then
		if self._block:getFirstChild() == nil then
			-- Blank line after empty list item
			return BlockContinue.none()
		else
			local activeBlock = state:getActiveBlockParser():getBlock()
			-- If the active block is a code block, blank lines in it should not affect if the
			-- list is tight.
			self._hadBlankLine = activeBlock.kind == "Paragraph" or activeBlock.kind == "ListItem"
			return BlockContinue.atIndex(state:getNextNonSpaceIndex())
		end
	end

	if state:getIndent() >= self._contentIndent then
		return BlockContinue.atColumn(state:getColumn() + self._contentIndent)
	else
		-- Note: We'll hit this case for lazy continuation lines, they will get added later.
		return BlockContinue.none()
	end
end

return ListItemParser
