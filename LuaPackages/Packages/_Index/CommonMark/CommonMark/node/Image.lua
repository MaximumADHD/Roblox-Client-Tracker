-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Image.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Node = require(Root.node.Node)

type Node = Node.Node

export type Image = Node & {
	destination: string?,
	title: string?,
}

-- PORT NOTE: the no-argument and (destination, title) constructors are one function. Omitted
-- arguments are nil, which is what the no-argument constructor leaves the fields as.
-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitImage.
local function Image(destination: string?, title: string?): Image
	local image: Image = Node.new("Image", false) :: any
	image.destination = destination
	image.title = title
	return image
end

-- PORT NOTE: the toStringAttributes override is registered by kind (see Node.lua). A nil
-- destination or title prints as "null", as Java's string concatenation does.
Node.toStringAttributesByKind.Image = function(image: Image): string
	return "destination="
		.. (if image.destination ~= nil then image.destination else "null")
		.. ", title="
		.. (if image.title ~= nil then image.title else "null")
end

return Image
