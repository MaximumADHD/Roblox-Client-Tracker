-- The parser-side types init.lua re-exports. Never executed: init.lua reads it only inside
-- `typeof(require(...))` in type positions, which the analyzer resolves and the runtime never
-- evaluates, so these requires cost nothing at runtime. Each field is a typed nil whose type
-- init.lua takes with typeof.

local Root = script.Parent
local Packages = Root.Parent
local Adapter = require(Root.Adapter)
local CommonMark = require(Packages.CommonMark)
local Mention = require(Root.Parsers.RobloxMarkdown.Mention.Mention)
local Underline = require(Root.Parsers.RobloxMarkdown.Underline.Underline)
local createParser = require(Root.Adapter.createParser)

local typed: any = nil

return {
	ParserDocument = typed :: CommonMark.Document,
	ParserNode = typed :: CommonMark.Node,
	Mention = typed :: Mention.Mention,
	Underline = typed :: Underline.Underline,

	Parser = typed :: createParser.Parser,
	ParserConfig = typed :: createParser.ParserConfig,
	Extension = typed :: Adapter.Extension,
	AdapterAsName = typed :: Adapter.AsName,
	AdapterAttributes = typed :: Adapter.Attributes,
	AdapterBlockName = typed :: Adapter.BlockName,
	AdapterBlockRule = typed :: Adapter.BlockRule,
	AdapterBuilder = typed :: Adapter.Builder,
	AdapterContext = typed :: Adapter.Context,
	AdapterEntryOptions = typed :: Adapter.EntryOptions,
	AdapterExtension = typed :: Adapter.AdapterExtension,
	AdapterFallback = typed :: Adapter.Fallback,
	AdapterFlattenOptions = typed :: Adapter.FlattenOptions,
	AdapterGap = typed :: Adapter.Gap,
	AdapterGapKind = typed :: Adapter.GapKind,
	AdapterHandler = typed :: Adapter.Handler,
	AdapterInlineName = typed :: Adapter.InlineName,
	AdapterInlineRule = typed :: Adapter.InlineRule,
	AdapterListOptions = typed :: Adapter.ListOptions,
	AdapterPassName = typed :: Adapter.PassName,
	AdapterQuoteOptions = typed :: Adapter.QuoteOptions,
	AdapterRendererName = typed :: Adapter.RendererName,
	AdapterStyle = typed :: Adapter.Style,
}
