-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/IndentedCodeBlock.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type IndentedCodeBlock = Node & {
	literal: string?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitIndentedCodeBlock.
local function IndentedCodeBlock(): IndentedCodeBlock
	local indentedCodeBlock: IndentedCodeBlock = Node.new("IndentedCodeBlock", true) :: any
	indentedCodeBlock.literal = nil
	return indentedCodeBlock
end

return IndentedCodeBlock
