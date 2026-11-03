-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/AttributeProvider.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local Node = require(Root.node.Node)

type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
type Node = Node.Node

-- Extension point for adding/changing attributes on HTML tags for a node.
--
-- PORT NOTE: Map<String, String> is LinkedHashMap<string, string?> (internal/port/LinkedHashMap),
-- as in HtmlNodeRendererContext.extendAttributes, whose copy is the map passed here.
export type AttributeProvider = {
	-- Set the attributes for a HTML tag of the specified node by modifying the provided map.
	--
	-- This allows to change or even remove default attributes. With great power comes great
	-- responsibility.
	--
	-- The attribute key and values will be escaped (preserving character entities), so don't
	-- escape them here, otherwise they will be double-escaped.
	--
	-- This method may be called multiple times for the same node, if the node is rendered using
	-- multiple nested tags (e.g. code blocks).
	--
	-- node: the node to set attributes for
	-- tagName: the HTML tag name that these attributes are for (e.g. h1, pre, code).
	-- attributes: the attributes, with any default attributes already set in the map
	setAttributes: (
		self: AttributeProvider,
		node: Node,
		tagName: string,
		attributes: LinkedHashMap<string, string?>
	) -> (),
}

return {}
