-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Document.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Document = Node

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitDocument.
local function Document(): Document
	return Node.new("Document", true)
end

return Document
