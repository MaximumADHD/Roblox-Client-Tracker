-- Converts a CommonMark Document to the renderer AST that MarkdownViewer renders (Types.Node),
-- without renderer changes. A generic engine (Engine) runs the rules a profile configures: the
-- default rules (DefaultRules) for the core nodes, then each extension's `extendAdapter(builder)`,
-- in extension order, where a later rule for a kind wins. A node with no rule follows the
-- fallbacks.
--
-- BETA: public as Markdown.Adapter and Markdown.createParser, but the rule forms, the context and
-- the pass names may change until the API is declared stable (extensions.md).
--
-- Rule forms, for `builder:inline(kind, rule)` and `builder:block(kind, rule)`:
-- * `{ style = <Style> }`, inline: a STYLED_TEXT wrapping the adapted children.
-- * `{ text = fn(node) -> string }`, inline: plain text, joined with the text around it by
--   mergeText.
-- * `{ as = <AsName>, attributes = fn(node)? }`, block: PARAGRAPH, HEADING or QUOTE, its
--   children adapted by the normal rules and its blocks following blockInText. Leaves and list
--   structure take a handler (Rules.divider, Rules.codeBlock, Rules.list).
-- * `"children"`: the node is replaced by its children. `"drop"`: the node and its children are
--   removed.
-- * `function(node, ctx)`: full control, through the Context (AdapterTypes).
-- Inside a flattening (a quote's or list item's content, or blockInText = "flatten"), blocks are
-- drawn as lines by kind, so their `as` and function rules aren't used; "drop" and "children"
-- still apply, and inlines follow their rules as anywhere.
-- `builder:fallback({ unknownInline, unknownBlock, blockInText })` defaults to "children",
-- "children" and "flatten", and `builder:pass(name, enabled)` turns mergeText or dropEmpty off.
-- It never raises on a well-formed Document with the default rules.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(script.AdapterTypes)
local CommonMark = require(Packages.CommonMark)
local DefaultRules = require(script.DefaultRules)
local Engine = require(script.Engine)
local Registry = require(script.Registry)
local Rules = require(script.Rules)
local Types = require(Root.Types)

type ParserNode = CommonMark.Node
type RendererNode = Types.Node

export type AdapterExtension = AdapterTypes.AdapterExtension
export type AsName = AdapterTypes.AsName
export type Attributes = AdapterTypes.Attributes
export type BlockName = AdapterTypes.BlockName
export type BlockRule = AdapterTypes.BlockRule
export type Builder = AdapterTypes.Builder
export type Context = AdapterTypes.Context
export type EntryOptions = AdapterTypes.EntryOptions
export type Extension = AdapterTypes.Extension
export type Fallback = AdapterTypes.Fallback
export type FlattenOptions = AdapterTypes.FlattenOptions
export type Gap = AdapterTypes.Gap
export type GapKind = AdapterTypes.GapKind
export type Handler = AdapterTypes.Handler
export type InlineName = AdapterTypes.InlineName
export type InlineRule = AdapterTypes.InlineRule
export type ListOptions = Rules.ListOptions
export type PassName = AdapterTypes.PassName
export type QuoteOptions = Rules.QuoteOptions
export type RendererName = AdapterTypes.RendererName
export type Style = AdapterTypes.Style

export type Adapter = {
	-- The renderer AST, and the places it flattened in no particular order
	toRendererAst: (document: ParserNode, options: EntryOptions?) -> (RendererNode, { Gap }),
}

local Adapter = {}

Adapter.Rules = Rules

function Adapter.build(extensions: { Extension }?): Adapter
	local registry = Registry.build(DefaultRules.register, extensions or {})
	return table.freeze({
		toRendererAst = function(document: ParserNode, options: EntryOptions?): (RendererNode, { Gap })
			return Engine.adapt(registry, document, options)
		end,
	})
end

return Adapter
