-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/LinkResult.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)
local Position = require(Root.parser.beta.Position)

type Node = Node.Node
type Position = Position.Position

-- What to do with a link/image processed by LinkProcessor.
--
-- PORT NOTE: the LinkResult interface and its only implementation,
-- internal/inline/LinkResultImpl.java, are one class, as BlockStart and BlockContinue are
-- (ROACTCHAT-2833). The Impl's constructor is the local `new`, its Type enum is LinkResult.Type,
-- and its getters are methods here, so InlineParserImpl reads them without Java's instanceof check
-- and cast.
local LinkResult = {}
LinkResult.__index = LinkResult

export type Type = "WRAP" | "REPLACE"

LinkResult.Type = table.freeze({
	WRAP = "WRAP" :: "WRAP",
	REPLACE = "REPLACE" :: "REPLACE",
})

type LinkResultFields = {
	_type: Type,
	_node: Node,
	_position: Position,
	_includeMarker: boolean,
	includeMarker: (self: LinkResult) -> LinkResult,
	getType: (self: LinkResult) -> Type,
	getNode: (self: LinkResult) -> Node,
	getPosition: (self: LinkResult) -> Position,
	isIncludeMarker: (self: LinkResult) -> boolean,
}

export type LinkResult = typeof(setmetatable({} :: LinkResultFields, LinkResult))

local function new(type: Type, node: Node, position: Position): LinkResult
	return setmetatable({
		_type = type,
		_node = node,
		_position = position,
		_includeMarker = false,
	}, LinkResult) :: any
end

-- Link not handled by processor.
function LinkResult.none(): LinkResult?
	return nil
end

-- Wrap the link text in a node. This is the normal behavior for links, e.g. for this:
--
--     [my *text*](destination)
--
-- The text is `my *text*`, a text node and emphasis. The text is wrapped in a Link node, which
-- means the text is added as child nodes to it.
--
-- node: the node to which the link text nodes will be added as child nodes
-- position: the position to continue parsing from
function LinkResult.wrapTextIn(node: Node, position: Position): LinkResult
	return new(LinkResult.Type.WRAP, node, position)
end

-- Replace the link with a node. E.g. for this:
--
--     [^foo]
--
-- The processor could decide to create a FootnoteReference node instead which replaces the link.
--
-- node: the node to replace the link with
-- position: the position to continue parsing from
function LinkResult.replaceWith(node: Node, position: Position): LinkResult
	return new(LinkResult.Type.REPLACE, node, position)
end

-- If a LinkInfo.marker is present, include it in processing (i.e. treat it the same way as the
-- brackets).
function LinkResult.includeMarker(self: LinkResult): LinkResult
	self._includeMarker = true
	return self
end

function LinkResult.getType(self: LinkResult): Type
	return self._type
end

function LinkResult.getNode(self: LinkResult): Node
	return self._node
end

function LinkResult.getPosition(self: LinkResult): Position
	return self._position
end

function LinkResult.isIncludeMarker(self: LinkResult): boolean
	return self._includeMarker
end

return LinkResult
