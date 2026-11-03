-- Ported from commonmark-java commonmark-ext-gfm-strikethrough/src/main/java/org/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local NodeRenderer = require(Root.renderer.NodeRenderer)

type NodeRenderer = NodeRenderer.NodeRenderer

-- PORT NOTE: the abstract base has no fields of its own, so it takes its interface's type
-- (porting-from-java.md, Inheritance), and subclasses chain their `__index` to this table.
export type StrikethroughNodeRenderer = NodeRenderer

local StrikethroughNodeRenderer = {}
StrikethroughNodeRenderer.__index = StrikethroughNodeRenderer

-- PORT NOTE: Set.of(Strikethrough.class) is an array of its kind (see renderer/NodeRenderer.lua).
function StrikethroughNodeRenderer.getNodeTypes(_self: StrikethroughNodeRenderer): { string }
	return { "Strikethrough" }
end

return StrikethroughNodeRenderer
