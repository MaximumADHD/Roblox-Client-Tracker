-- The profile's underline extension (ROACTCHAT-2831 #9): `__x__` is Underline, rendered as
-- `<u>x</u>` and adapted to STYLED_TEXT{style=UNDERLINE}, instead of StrongEmphasis. `_x_` stays
-- Emphasis and `**x**` stays StrongEmphasis.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(Root.Adapter.AdapterTypes)
local CommonMark = require(Packages.CommonMark)
local UnderlineDelimiterProcessor = require(script.Parent.UnderlineDelimiterProcessor)

type Builder = AdapterTypes.Builder
type Extension = AdapterTypes.Extension
type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlNodeRendererFactory = CommonMark.HtmlNodeRendererFactory
type HtmlRendererBuilder = CommonMark.HtmlRendererBuilder
type NodeRenderer = CommonMark.NodeRenderer
type ParserBuilder = CommonMark.ParserBuilder

local UnderlineExtension = {}

function UnderlineExtension.create(): Extension
	return {
		extendParser = function(parserBuilder: ParserBuilder)
			parserBuilder:customDelimiterProcessor(UnderlineDelimiterProcessor.new())
		end,
		extendHtmlRenderer = function(rendererBuilder: HtmlRendererBuilder)
			-- Required here so that parsing doesn't load the HTML renderer
			local UnderlineHtmlNodeRenderer = require(script.Parent.UnderlineHtmlNodeRenderer)
			rendererBuilder:nodeRendererFactory({
				create = function(_self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext): NodeRenderer
					return UnderlineHtmlNodeRenderer.new(context) :: any
				end,
			})
		end,
		extendAdapter = function(builder: Builder)
			builder:inline("Underline", { style = "UNDERLINE" })
		end,
	}
end

return UnderlineExtension
