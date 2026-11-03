-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Paragraph.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Paragraph = Node

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitParagraph.
local function Paragraph(): Paragraph
	return Node.new("Paragraph", true)
end

return Paragraph
