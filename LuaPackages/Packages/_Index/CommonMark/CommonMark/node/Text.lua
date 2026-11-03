-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Text.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Text = Node & {
	literal: string?,
}

-- PORT NOTE: the no-argument and (literal) constructors are one function. An omitted literal is
-- nil, which is what the no-argument constructor leaves the field as.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitText.
local function Text(literal: string?): Text
	local text: Text = Node.new("Text", false) :: any
	text.literal = literal
	return text
end

-- PORT NOTE: the toStringAttributes override is registered by kind (see Node.lua). A nil literal
-- prints as "null", as Java's string concatenation does.
Node.toStringAttributesByKind.Text = function(text: Text): string
	return "literal=" .. (if text.literal ~= nil then text.literal else "null")
end

return Text
