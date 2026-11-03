-- Ported from commonmark-java commonmark-ext-gfm-strikethrough/src/main/java/org/commonmark/ext/gfm/strikethrough/Strikethrough.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local CustomNode = require(Root.node.CustomNode)
local Delimited = require(Root.node.Delimited)

type CustomNode = CustomNode.CustomNode
type Delimited = Delimited.Delimited

-- A strikethrough node containing text and other inline nodes as children.
export type Strikethrough = CustomNode & Delimited

-- PORT NOTE: `extends CustomNode` is CustomNode.new with the class name as the kind (see
-- node/CustomNode.lua), and the module returns the constructor, as the core kinds' modules do.
-- Java's private delimiter field, which both Delimited getters return, is stored as the
-- openingDelimiter and closingDelimiter fields (see node/Delimited.lua), as Emphasis does.
local function Strikethrough(delimiter: string): Strikethrough
	local strikethrough: Strikethrough = CustomNode.new("Strikethrough") :: any
	strikethrough.openingDelimiter = delimiter
	strikethrough.closingDelimiter = delimiter
	return strikethrough
end

return Strikethrough
