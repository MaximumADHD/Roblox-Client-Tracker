-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/ParsedInline.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)
local Position = require(Root.parser.beta.Position)

type Node = Node.Node
type Position = Position.Position

-- The result of a single inline parser. Use the static methods to create instances.
--
-- This interface is not intended to be implemented by clients.
--
-- PORT NOTE: the ParsedInline interface and its only implementation,
-- internal/inline/ParsedInlineImpl.java, are one class, as BlockStart and BlockContinue are
-- (ROACTCHAT-2833). `of` builds the Impl's state directly, and the Impl's getters are methods
-- here, so InlineParserImpl reads them without Java's instanceof check and cast.
local ParsedInline = {}
ParsedInline.__index = ParsedInline

type ParsedInlineFields = {
	_node: Node,
	_position: Position,
	getNode: (self: ParsedInline) -> Node,
	getPosition: (self: ParsedInline) -> Position,
}

export type ParsedInline = typeof(setmetatable({} :: ParsedInlineFields, ParsedInline))

function ParsedInline.none(): ParsedInline?
	return nil
end

function ParsedInline.of(node: Node, position: Position): ParsedInline
	return setmetatable({
		_node = node,
		_position = position,
	}, ParsedInline) :: any
end

function ParsedInline.getNode(self: ParsedInline): Node
	return self._node
end

function ParsedInline.getPosition(self: ParsedInline): Position
	return self._position
end

return ParsedInline
