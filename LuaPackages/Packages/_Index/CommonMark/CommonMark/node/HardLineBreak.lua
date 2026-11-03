-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/HardLineBreak.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type HardLineBreak = Node

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitHardLineBreak.
local function HardLineBreak(): HardLineBreak
	return Node.new("HardLineBreak", false)
end

return HardLineBreak
