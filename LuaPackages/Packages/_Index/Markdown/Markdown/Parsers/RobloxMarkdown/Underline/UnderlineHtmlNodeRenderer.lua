-- Adapted from commonmark-java's StrikethroughHtmlNodeRenderer (BSD-2-Clause, Copyright (c) 2015, Robin Stocker); see modules/markdown/LICENSE-commonmark-java.
-- Renders Underline as `<u>`, the way CommonMark's StrikethroughHtmlNodeRenderer renders
-- Strikethrough as `<del>`.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlWriter = CommonMark.HtmlWriter
type LinkedHashMap<K, V> = CommonMark.LinkedHashMap<K, V>
type Node = CommonMark.Node

local LinkedHashMap = CommonMark.Renderer.Html.LinkedHashMap

local UnderlineHtmlNodeRenderer = {}
UnderlineHtmlNodeRenderer.__index = UnderlineHtmlNodeRenderer

type UnderlineHtmlNodeRendererFields = {
	_context: HtmlNodeRendererContext,
	_html: HtmlWriter,
	getNodeTypes: (self: UnderlineHtmlNodeRenderer) -> { string },
	render: (self: UnderlineHtmlNodeRenderer, node: Node) -> (),
	renderChildren: (self: UnderlineHtmlNodeRenderer, parent: Node) -> (),
}

export type UnderlineHtmlNodeRenderer = typeof(setmetatable(
	{} :: UnderlineHtmlNodeRendererFields,
	UnderlineHtmlNodeRenderer
))

function UnderlineHtmlNodeRenderer.new(context: HtmlNodeRendererContext): UnderlineHtmlNodeRenderer
	return setmetatable({ _context = context, _html = context:getWriter() }, UnderlineHtmlNodeRenderer) :: any
end

function UnderlineHtmlNodeRenderer.getNodeTypes(_self: UnderlineHtmlNodeRenderer): { string }
	return { "Underline" }
end

function UnderlineHtmlNodeRenderer.render(self: UnderlineHtmlNodeRenderer, node: Node)
	local attributes: LinkedHashMap<string, string?> = self._context:extendAttributes(node, "u", LinkedHashMap.of())
	self._html:tag("u", attributes)
	self:renderChildren(node)
	self._html:tag("/u")
end

function UnderlineHtmlNodeRenderer.renderChildren(self: UnderlineHtmlNodeRenderer, parent: Node)
	local node = parent:getFirstChild()
	while node ~= nil do
		local next = node:getNext()
		self._context:render(node)
		node = next
	end
end

return UnderlineHtmlNodeRenderer
