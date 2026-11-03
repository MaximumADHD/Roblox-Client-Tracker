-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/ListItem.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type ListItem = Node & {
	markerIndent: number?,
	contentIndent: number?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitListItem.
-- PORT NOTE: the appendChild overrides are dropped. Both only call super (one is deprecated to
-- steer callers to Block children), and kinds are data, so Node.appendChild serves both.
local function ListItem(): ListItem
	local listItem: ListItem = Node.new("ListItem", true) :: any
	listItem.markerIndent = nil
	listItem.contentIndent = nil
	return listItem
end

return ListItem
