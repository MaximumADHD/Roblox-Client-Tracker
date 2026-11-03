-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Heading.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Heading = Node & {
	level: number,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitHeading.
local function Heading(): Heading
	local heading: Heading = Node.new("Heading", true) :: any
	heading.level = 0
	return heading
end

return Heading
