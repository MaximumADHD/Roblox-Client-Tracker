-- Adapted from commonmark-java's StrikethroughHtmlNodeRenderer (BSD-2-Clause, Copyright (c) 2015, Robin Stocker); see modules/markdown/LICENSE-commonmark-java.
-- Renders a FormattingTag as the element its Markdown equivalent renders as (`<b>` as `**`'s
-- `<strong>`, `<i>` as `<em>`, `<u>` as `__`'s `<u>`, `<s>` as `~~`'s `<del>`), and a
-- FormattingTagText as escaped text.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local FormattingTag = require(script.Parent.FormattingTag)

type FormattingTag = FormattingTag.FormattingTag
type FormattingTagText = FormattingTag.FormattingTagText
type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlWriter = CommonMark.HtmlWriter
type LinkedHashMap<K, V> = CommonMark.LinkedHashMap<K, V>
type Node = CommonMark.Node

local LinkedHashMap = CommonMark.Renderer.Html.LinkedHashMap

local ELEMENTS = table.freeze({ b = "strong", i = "em", u = "u", s = "del" })

local FormattingTagHtmlNodeRenderer = {}
FormattingTagHtmlNodeRenderer.__index = FormattingTagHtmlNodeRenderer

type FormattingTagHtmlNodeRendererFields = {
	_context: HtmlNodeRendererContext,
	_html: HtmlWriter,
	getNodeTypes: (self: FormattingTagHtmlNodeRenderer) -> { string },
	render: (self: FormattingTagHtmlNodeRenderer, node: Node) -> (),
	renderChildren: (self: FormattingTagHtmlNodeRenderer, parent: Node) -> (),
}

export type FormattingTagHtmlNodeRenderer = typeof(setmetatable(
	{} :: FormattingTagHtmlNodeRendererFields,
	FormattingTagHtmlNodeRenderer
))

function FormattingTagHtmlNodeRenderer.new(context: HtmlNodeRendererContext): FormattingTagHtmlNodeRenderer
	return setmetatable({ _context = context, _html = context:getWriter() }, FormattingTagHtmlNodeRenderer) :: any
end

function FormattingTagHtmlNodeRenderer.getNodeTypes(_self: FormattingTagHtmlNodeRenderer): { string }
	return { "FormattingTag", "FormattingTagText" }
end

function FormattingTagHtmlNodeRenderer.render(self: FormattingTagHtmlNodeRenderer, node: Node)
	if node.kind == "FormattingTagText" then
		self._html:text((node :: FormattingTagText).literal)
		return
	end
	local element = ELEMENTS[(node :: FormattingTag).tagName]
	local attributes: LinkedHashMap<string, string?> = self._context:extendAttributes(node, element, LinkedHashMap.of())
	self._html:tag(element, attributes)
	self:renderChildren(node)
	self._html:tag("/" .. element)
end

function FormattingTagHtmlNodeRenderer.renderChildren(self: FormattingTagHtmlNodeRenderer, parent: Node)
	local node = parent:getFirstChild()
	while node ~= nil do
		local next = node:getNext()
		self._context:render(node)
		node = next
	end
end

return FormattingTagHtmlNodeRenderer
