-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/CustomBlock.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type CustomBlock = Node

-- PORT NOTE: Java's abstract CustomBlock can't be a subclass in the one-Node-class model
-- (ROACTCHAT-2833), so it is a shared type plus the base constructor extensions build their
-- blocks on, each picking its own kind. It has no kind of its own, so Nodes re-exports only its
-- type.
-- PORT NOTE: its accept is Node's kind dispatch, which calls visit<Kind> when the visitor has it
-- and otherwise visitCustomBlock, where Java's override always lands.
local CustomBlock = {}

function CustomBlock.new(kind: string): CustomBlock
	return Node.new(kind, true)
end

return CustomBlock
