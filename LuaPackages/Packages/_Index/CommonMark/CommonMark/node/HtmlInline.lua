-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/HtmlInline.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type HtmlInline = Node & {
	literal: string?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitHtmlInline.
local function HtmlInline(): HtmlInline
	local htmlInline: HtmlInline = Node.new("HtmlInline", false) :: any
	htmlInline.literal = nil
	return htmlInline
end

return HtmlInline
