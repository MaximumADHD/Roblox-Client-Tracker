-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/HtmlBlock.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type HtmlBlock = Node & {
	literal: string?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitHtmlBlock.
local function HtmlBlock(): HtmlBlock
	local htmlBlock: HtmlBlock = Node.new("HtmlBlock", true) :: any
	htmlBlock.literal = nil
	return htmlBlock
end

return HtmlBlock
