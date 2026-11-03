-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/StrongEmphasis.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Delimited = require(Root.node.Delimited)
local Node = require(Root.node.Node)

type Delimited = Delimited.Delimited
type Node = Node.Node

export type StrongEmphasis = Node & Delimited

-- PORT NOTE: the no-argument and (delimiter) constructors are one function. An omitted delimiter
-- is nil, which is what the no-argument constructor leaves the field as.
-- PORT NOTE: Java's private delimiter field, which both Delimited getters return, is stored as
-- the openingDelimiter and closingDelimiter fields (see Delimited.lua). setDelimiter(d) is
-- writing d to both; nothing in commonmark-java calls it.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitStrongEmphasis.
local function StrongEmphasis(delimiter: string?): StrongEmphasis
	local strongEmphasis: StrongEmphasis = Node.new("StrongEmphasis", false) :: any
	strongEmphasis.openingDelimiter = delimiter
	strongEmphasis.closingDelimiter = delimiter
	return strongEmphasis
end

return StrongEmphasis
