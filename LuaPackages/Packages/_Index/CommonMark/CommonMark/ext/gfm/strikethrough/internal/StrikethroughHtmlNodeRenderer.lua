-- Ported from commonmark-java commonmark-ext-gfm-strikethrough/src/main/java/org/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local HtmlNodeRendererContext = require(Root.renderer.html.HtmlNodeRendererContext)
local HtmlWriter = require(Root.renderer.html.HtmlWriter)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)
local Node = require(Root.node.Node)
local StrikethroughNodeRenderer = require(Root.ext.gfm.strikethrough.internal.StrikethroughNodeRenderer)

type HtmlNodeRendererContext = HtmlNodeRendererContext.HtmlNodeRendererContext
type HtmlWriter = HtmlWriter.HtmlWriter
type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>
type Node = Node.Node
type StrikethroughNodeRenderer = StrikethroughNodeRenderer.StrikethroughNodeRenderer

local StrikethroughHtmlNodeRenderer = setmetatable({}, { __index = StrikethroughNodeRenderer })
StrikethroughHtmlNodeRenderer.__index = StrikethroughHtmlNodeRenderer

type StrikethroughHtmlNodeRendererFields = {
	_context: HtmlNodeRendererContext,
	_html: HtmlWriter,
	render: (self: StrikethroughHtmlNodeRenderer, node: Node) -> (),
	renderChildren: (self: StrikethroughHtmlNodeRenderer, parent: Node) -> (),
}

export type StrikethroughHtmlNodeRenderer = StrikethroughNodeRenderer & StrikethroughHtmlNodeRendererFields

function StrikethroughHtmlNodeRenderer.new(context: HtmlNodeRendererContext): StrikethroughHtmlNodeRenderer
	return setmetatable({ _context = context, _html = context:getWriter() }, StrikethroughHtmlNodeRenderer) :: any
end

-- PORT NOTE: Map.of() is LinkedHashMap.of().
function StrikethroughHtmlNodeRenderer.render(self: StrikethroughHtmlNodeRenderer, node: Node)
	local attributes: LinkedHashMap<string, string?> = self._context:extendAttributes(node, "del", LinkedHashMap.of())
	self._html:tag("del", attributes)
	self:renderChildren(node)
	self._html:tag("/del")
end

function StrikethroughHtmlNodeRenderer.renderChildren(self: StrikethroughHtmlNodeRenderer, parent: Node)
	local node = parent:getFirstChild()
	while node ~= nil do
		local next = node:getNext()
		self._context:render(node)
		node = next
	end
end

return StrikethroughHtmlNodeRenderer
