-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/NodeRenderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

-- A renderer for a set of node types.
--
-- PORT NOTE: getNodeTypes' Set<Class<? extends Node>> is an array of kind strings (ROACTCHAT-2833:
-- renderers are keyed by kind), as DocumentParser's enabled block types are.
-- PORT NOTE: the default no-op beforeRoot and afterRoot are optional fields, so a renderer that
-- doesn't override them leaves them nil and callers skip a nil one, which is the same no-op.
export type NodeRenderer = {
	-- The types of nodes that this renderer handles
	getNodeTypes: (self: NodeRenderer) -> { string },
	-- Render the specified node. node will be an instance of one of getNodeTypes().
	render: (self: NodeRenderer, node: Node) -> (),
	-- Called before the root node is rendered, to do any initial processing at the start.
	beforeRoot: ((self: NodeRenderer, rootNode: Node) -> ())?,
	-- Called after the root node is rendered, to do any final processing at the end.
	afterRoot: ((self: NodeRenderer, rootNode: Node) -> ())?,
}

return {}
