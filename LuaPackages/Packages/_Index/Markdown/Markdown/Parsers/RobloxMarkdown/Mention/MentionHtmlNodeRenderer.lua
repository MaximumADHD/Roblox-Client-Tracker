-- Renders Mention as `<mention id="123456"></mention>`, or with a `name` attribute when the
-- mention has one. This is the test oracle's form (extensions.md, *Parser side*), not a display format.
-- The HTML writer escapes the attribute values.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local Mention = require(script.Parent.Mention)

type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlWriter = CommonMark.HtmlWriter
type LinkedHashMap<K, V> = CommonMark.LinkedHashMap<K, V>
type Mention = Mention.Mention
type Node = CommonMark.Node

local LinkedHashMap = CommonMark.Renderer.Html.LinkedHashMap

local MentionHtmlNodeRenderer = {}
MentionHtmlNodeRenderer.__index = MentionHtmlNodeRenderer

type MentionHtmlNodeRendererFields = {
	_context: HtmlNodeRendererContext,
	_html: HtmlWriter,
	getNodeTypes: (self: MentionHtmlNodeRenderer) -> { string },
	render: (self: MentionHtmlNodeRenderer, node: Node) -> (),
}

export type MentionHtmlNodeRenderer = typeof(setmetatable({} :: MentionHtmlNodeRendererFields, MentionHtmlNodeRenderer))

function MentionHtmlNodeRenderer.new(context: HtmlNodeRendererContext): MentionHtmlNodeRenderer
	return setmetatable({ _context = context, _html = context:getWriter() }, MentionHtmlNodeRenderer) :: any
end

function MentionHtmlNodeRenderer.getNodeTypes(_self: MentionHtmlNodeRenderer): { string }
	return { "Mention" }
end

function MentionHtmlNodeRenderer.render(self: MentionHtmlNodeRenderer, node: Node)
	local mention = node :: Mention
	local attributes: LinkedHashMap<string, string?> = LinkedHashMap.new()
	attributes:put("id", mention.id)
	if mention.name ~= nil then
		attributes:put("name", mention.name)
	end
	self._html:tag("mention", self._context:extendAttributes(node, "mention", attributes))
	self._html:tag("/mention")
end

return MentionHtmlNodeRenderer
