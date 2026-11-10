-- The inline formatting tags `<b>`, `<i>`, `<u>` and `<s>` (ROACTCHAT-2959; rules in roblox-profile.md,
-- *Inline formatting tags*): the pairing post-processor, rendering and adapter rules, plus the `<`
-- parser for a profile with inline HTML off. A pair adapts to the STYLED_TEXT its Markdown
-- equivalent does (`**`, `*`, `__`, `~~`), so the extension needs neither the Underline nor the
-- Strikethrough extension.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(Root.Adapter.AdapterTypes)
local CommonMark = require(Packages.CommonMark)
local FormattingTag = require(script.Parent.FormattingTag)
local FormattingTagInlineParser = require(script.Parent.FormattingTagInlineParser)
local FormattingTagPostProcessor = require(script.Parent.FormattingTagPostProcessor)

type Builder = AdapterTypes.Builder
type Context = AdapterTypes.Context
type Extension = AdapterTypes.Extension
type FormattingTag = FormattingTag.FormattingTag
type FormattingTagText = FormattingTag.FormattingTagText
type HtmlNodeRendererContext = CommonMark.HtmlNodeRendererContext
type HtmlNodeRendererFactory = CommonMark.HtmlNodeRendererFactory
type HtmlRendererBuilder = CommonMark.HtmlRendererBuilder
type NodeRenderer = CommonMark.NodeRenderer
type ParserBuilder = CommonMark.ParserBuilder
type ParserNode = CommonMark.Node
type Style = AdapterTypes.Style

export type Options = {
	-- Read the tags with the extension's own `<` parser, for a profile with inline HTML off. With
	-- it on, the core's HtmlInline nodes are paired instead, and unmatched ones stay HtmlInline.
	parseTags: boolean?,
	-- The profile's maxInlineNesting (the core's default is 100)
	maxNesting: number?,
}

local STYLES: { [string]: Style } = table.freeze({
	b = "BOLD_2" :: Style,
	i = "ITALIC" :: Style,
	u = "UNDERLINE" :: Style,
	s = "STRIKE" :: Style,
})

local FormattingTagsExtension = {}

local function adaptFormattingTag(node: ParserNode, ctx: Context)
	if node:getFirstChild() == nil then
		return
	end
	local styled = ctx:append(ctx.parent, "STYLED_TEXT", { style = STYLES[(node :: FormattingTag).tagName] })
	ctx:adaptInlinesOf(node, styled)
end

local function literalOf(node: ParserNode): string
	return (node :: FormattingTagText).literal
end

function FormattingTagsExtension.create(options: Options?): Extension
	local parseTags = options ~= nil and options.parseTags == true
	local maxNesting = if options ~= nil then options.maxNesting else nil
	return {
		extendParser = function(parserBuilder: ParserBuilder)
			if parseTags then
				parserBuilder:customInlineContentParserFactory(FormattingTagInlineParser.Factory.new())
			end
			parserBuilder:postProcessor(FormattingTagPostProcessor.new(maxNesting) :: any)
		end,
		extendHtmlRenderer = function(rendererBuilder: HtmlRendererBuilder)
			-- Required here so that parsing doesn't load the HTML renderer
			local FormattingTagHtmlNodeRenderer = require(script.Parent.FormattingTagHtmlNodeRenderer)
			rendererBuilder:nodeRendererFactory({
				create = function(_self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext): NodeRenderer
					return FormattingTagHtmlNodeRenderer.new(context) :: any
				end,
			})
		end,
		extendAdapter = function(builder: Builder)
			builder:inline("FormattingTag", adaptFormattingTag)
			builder:inline("FormattingTagText", { text = literalOf })
		end,
	}
end

return FormattingTagsExtension
