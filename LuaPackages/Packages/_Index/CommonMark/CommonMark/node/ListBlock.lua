-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/ListBlock.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type ListBlock = Node & {
	tight: boolean,
}

-- PORT NOTE: Java's abstract ListBlock can't be a subclass in the one-Node-class model
-- (ROACTCHAT-2833), so it is a shared type plus the base constructor BulletList and OrderedList
-- build on, which sets tight to Java's default. It has no kind of its own, so Nodes re-exports
-- only its type, and `instanceof ListBlock` is `kind == "BulletList" or kind == "OrderedList"`.
local ListBlock = {}

function ListBlock.new(kind: string): ListBlock
	local listBlock: ListBlock = Node.new(kind, true) :: any
	listBlock.tight = false
	return listBlock
end

return ListBlock
