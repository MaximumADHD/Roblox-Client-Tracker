-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/Renderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

-- PORT NOTE: the Appendable is a parts array, as HtmlWriter takes it: the renderer appends its
-- output as parts after any already in the array, and the caller concatenates it once.
export type Renderer = {
	-- Render the tree of nodes to output.
	renderAppendable: (self: Renderer, node: Node, output: { string }) -> (),
	-- Render the tree of nodes to string.
	render: (self: Renderer, node: Node) -> string,
}

return {}
