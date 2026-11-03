-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/ThematicBreak.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type ThematicBreak = Node & {
	literal: string?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitThematicBreak.
local function ThematicBreak(): ThematicBreak
	local thematicBreak: ThematicBreak = Node.new("ThematicBreak", true) :: any
	thematicBreak.literal = nil
	return thematicBreak
end

return ThematicBreak
