-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/LinkReferenceDefinition.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type LinkReferenceDefinition = Node & {
	label: string?,
	destination: string?,
	title: string?,
}

-- PORT NOTE: the no-argument and (label, destination, title) constructors are one function.
-- Omitted arguments are nil, which is what the no-argument constructor leaves the fields as.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls
-- visitLinkReferenceDefinition.
local function LinkReferenceDefinition(label: string?, destination: string?, title: string?): LinkReferenceDefinition
	local linkReferenceDefinition: LinkReferenceDefinition = Node.new("LinkReferenceDefinition", true) :: any
	linkReferenceDefinition.label = label
	linkReferenceDefinition.destination = destination
	linkReferenceDefinition.title = title
	return linkReferenceDefinition
end

return LinkReferenceDefinition
