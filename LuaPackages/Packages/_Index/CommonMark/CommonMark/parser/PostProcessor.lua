-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/PostProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type PostProcessor = {
	-- Returns the result of post-processing, may be a modified `node` argument.
	process: (self: PostProcessor, node: Node) -> Node,
}

return {}
