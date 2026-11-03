-- The profile's mentions (ROACTCHAT-2831 #10): the `<` parser, rendering and adapter rule. A custom
-- inline parser runs before the core ones for the same trigger, so a mention is tried first.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(Root.Adapter.AdapterTypes)
local CommonMark = require(Packages.CommonMark)
local Mention = require(script.Parent.Mention)
local MentionInlineParser = require(script.Parent.MentionInlineParser)

type Builder = AdapterTypes.Builder
type Extension = AdapterTypes.Extension
type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlNodeRendererFactory = CommonMark.HtmlNodeRendererFactory
type HtmlRendererBuilder = CommonMark.HtmlRendererBuilder
type NodeRenderer = CommonMark.NodeRenderer
type ParserBuilder = CommonMark.ParserBuilder
type ParserNode = CommonMark.Node

local MentionExtension = {}

-- `@name`, or `@id` without a name (Elvis, 2026-10-07), in the surrounding text
local function mentionText(node: ParserNode): string
	local mention = node :: Mention.Mention
	return `@{mention.name or mention.id}`
end

function MentionExtension.create(): Extension
	return {
		extendParser = function(parserBuilder: ParserBuilder)
			parserBuilder:customInlineContentParserFactory(MentionInlineParser.Factory.new())
		end,
		extendHtmlRenderer = function(rendererBuilder: HtmlRendererBuilder)
			-- Required here so that parsing doesn't load the HTML renderer
			local MentionHtmlNodeRenderer = require(script.Parent.MentionHtmlNodeRenderer)
			rendererBuilder:nodeRendererFactory({
				create = function(_self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext): NodeRenderer
					return MentionHtmlNodeRenderer.new(context) :: any
				end,
			})
		end,
		extendAdapter = function(builder: Builder)
			builder:inline("Mention", { text = mentionText })
		end,
	}
end

return MentionExtension
