-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Link.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Link = Node & {
	destination: string?,
	title: string?,
}

-- PORT NOTE: the no-argument and (destination, title) constructors are one function. Omitted
-- arguments are nil, which is what the no-argument constructor leaves the fields as.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitLink.
local function Link(destination: string?, title: string?): Link
	local link: Link = Node.new("Link", false) :: any
	link.destination = destination
	link.title = title
	return link
end

-- PORT NOTE: the toStringAttributes override is registered by kind (see Node.lua). A nil
-- destination or title prints as "null", as Java's string concatenation does.
Node.toStringAttributesByKind.Link = function(link: Link): string
	return "destination="
		.. (if link.destination ~= nil then link.destination else "null")
		.. ", title="
		.. (if link.title ~= nil then link.title else "null")
end

return Link
