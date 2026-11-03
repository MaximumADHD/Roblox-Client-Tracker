-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/InlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)
local SourceLines = require(Root.parser.SourceLines)

type Node = Node.Node
type SourceLines = SourceLines.SourceLines

-- Parser for inline content (text, links, emphasized text, etc).
export type InlineParser = {
	-- lines: the source content to parse as inline
	-- node: the node to append resulting nodes to (as children)
	parse: (self: InlineParser, lines: SourceLines, node: Node) -> (),
}

return {}
