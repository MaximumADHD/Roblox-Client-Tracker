-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Emphasis.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Delimited = require(Root.node.Delimited)
local Node = require(Root.node.Node)

type Delimited = Delimited.Delimited
type Node = Node.Node

export type Emphasis = Node & Delimited

-- PORT NOTE: the no-argument and (delimiter) constructors are one function. An omitted delimiter
-- is nil, which is what the no-argument constructor leaves the field as.
-- PORT NOTE: Java's private delimiter field, which both Delimited getters return, is stored as
-- the openingDelimiter and closingDelimiter fields (see Delimited.lua). setDelimiter(d) is
-- writing d to both; nothing in commonmark-java calls it.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitEmphasis.
local function Emphasis(delimiter: string?): Emphasis
	local emphasis: Emphasis = Node.new("Emphasis", false) :: any
	emphasis.openingDelimiter = delimiter
	emphasis.closingDelimiter = delimiter
	return emphasis
end

return Emphasis
