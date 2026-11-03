-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Code.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Code = Node & {
	literal: string?,
}

-- PORT NOTE: the no-argument and (literal) constructors are one function. An omitted literal is
-- nil, which is what the no-argument constructor leaves the field as.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitCode.
local function Code(literal: string?): Code
	local code: Code = Node.new("Code", false) :: any
	code.literal = literal
	return code
end

return Code
