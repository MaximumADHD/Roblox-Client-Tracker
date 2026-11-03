-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/HtmlNodeRendererFactory.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local HtmlNodeRendererContext = require(Root.renderer.html.HtmlNodeRendererContext)
local NodeRenderer = require(Root.renderer.NodeRenderer)

type HtmlNodeRendererContext = HtmlNodeRendererContext.HtmlNodeRendererContext
type NodeRenderer = NodeRenderer.NodeRenderer

-- Factory for instantiating new node renderers when rendering is done.
export type HtmlNodeRendererFactory = {
	-- Create a new node renderer for the specified rendering context (normally passed on to the
	-- node renderer).
	create: (self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext) -> NodeRenderer,
}

return {}
