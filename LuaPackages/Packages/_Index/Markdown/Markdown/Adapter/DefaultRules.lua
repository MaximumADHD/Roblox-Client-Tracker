-- The rules every profile starts from, for CommonMark's core nodes and Strikethrough (CommonMark
-- ships that extension, and its extension table can't carry Markdown's rules). Blocks:
--   Document → ROOT; Paragraph → PARAGRAPH; Heading → HEADING{depth}; ThematicBreak → DIVIDER;
--   FencedCodeBlock and IndentedCodeBlock → CODE_BLOCK{language, text}, an indented block without
--   a language; lists, list items and quotes as Rules.list and Rules.quote shape them;
--   LinkReferenceDefinition is dropped.
-- Fallbacks for nodes the Roblox profile doesn't produce (Elvis, 2026-10-07): HtmlBlock →
-- PARAGRAPH of one TEXT, and an unknown custom block → its children (the unknownBlock fallback).
-- Inlines, nested as the parser nests them (an InlineSpan may hold InlineSpans and InlineLeafs,
-- NodeTypeConfig):
--   Emphasis → STYLED_TEXT{style=ITALIC}; StrongEmphasis → STYLED_TEXT{style=BOLD_2};
--   Strikethrough → STYLED_TEXT{style=STRIKE}; Code, HardLineBreak, Link and Image as their Rules
--   factories say. Text gives its literal, SoftLineBreak "\n" (which the renderer's
--   processSoftBreaks shows as a space) and an HtmlInline its literal, as text that mergeText
--   joins into one TEXT. An unknown custom inline is replaced by its children.
-- No TEXT is empty, and the adapter never emits TAG.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(script.Parent.AdapterTypes)
local CommonMark = require(Packages.CommonMark)
local Rules = require(script.Parent.Rules)

type Builder = AdapterTypes.Builder
type ParserNode = CommonMark.Node

local function literalOf(node: ParserNode): string
	return (node :: CommonMark.Text).literal or ""
end

local function softLineBreak(_node: ParserNode): string
	return "\n"
end

local DefaultRules = {}

function DefaultRules.register(builder: Builder)
	builder:block("Paragraph", { as = "PARAGRAPH" })
	builder:block("Heading", {
		as = "HEADING",
		attributes = function(node: ParserNode)
			return { depth = (node :: CommonMark.Heading).level }
		end,
	})
	builder:block("ThematicBreak", Rules.divider())
	builder:block("FencedCodeBlock", Rules.codeBlock())
	builder:block("IndentedCodeBlock", Rules.codeBlock())
	builder:block("HtmlBlock", Rules.htmlBlock())
	local list = Rules.list()
	builder:block("BulletList", list)
	builder:block("OrderedList", list)
	builder:block("BlockQuote", Rules.quote())
	builder:block("LinkReferenceDefinition", "drop")

	builder:inline("Text", { text = literalOf })
	builder:inline("HtmlInline", { text = literalOf })
	builder:inline("SoftLineBreak", { text = softLineBreak })
	builder:inline("HardLineBreak", Rules.hardLineBreak())
	builder:inline("Code", Rules.code())
	builder:inline("Link", Rules.link())
	builder:inline("Image", Rules.image())
	builder:inline("Emphasis", { style = "ITALIC" })
	builder:inline("StrongEmphasis", { style = "BOLD_2" })
	builder:inline("Strikethrough", { style = "STRIKE" })
end

return DefaultRules
