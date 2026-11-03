local Flags = require(script.Flags)
local MarkdownViewer = require(script.Components.MarkdownViewer)
local NodeType = require(script.Enums.NodeType)
local Types = require(script.Types)
local lazyMembers = require(script.lazyMembers)

-- Renderer types
export type RenderersType = Types.RenderersType
export type Node = Types.Node
export type Context = Types.Context
export type PartialContext = Types.PartialContext
export type NodeType = NodeType.NodeType
export type MarkdownViewerProps = MarkdownViewer.Props
export type MarkdownRendererPropsType = Types.MarkdownRendererPropsType
export type TextStyles = Types.TextStyles
export type CodeStyles = Types.CodeStyles

-- InlineLayout element-specific types
export type LinkCallbackType = Types.LinkCallbackType

-- Parser (Roblox Markdown profile) types. `Node` above is the renderer's, so CommonMark's
-- Document and Node are exported under a Parser prefix. They come through ParserTypes, which never
-- runs (see its header), so CommonMark, the profiles and the adapter load only when first used.
export type ParserDocument = typeof(require(script.ParserTypes).ParserDocument)
export type ParserNode = typeof(require(script.ParserTypes).ParserNode)
export type Mention = typeof(require(script.ParserTypes).Mention)
export type Underline = typeof(require(script.ParserTypes).Underline)

-- createParser and the adapter (beta until the API is declared stable). `Context` above is the
-- renderer's, so the adapter's types carry an Adapter prefix.
export type Parser = typeof(require(script.ParserTypes).Parser)
export type ParserConfig = typeof(require(script.ParserTypes).ParserConfig)
export type Extension = typeof(require(script.ParserTypes).Extension)
export type AdapterAsName = typeof(require(script.ParserTypes).AdapterAsName)
export type AdapterAttributes = typeof(require(script.ParserTypes).AdapterAttributes)
export type AdapterBlockName = typeof(require(script.ParserTypes).AdapterBlockName)
export type AdapterBlockRule = typeof(require(script.ParserTypes).AdapterBlockRule)
export type AdapterBuilder = typeof(require(script.ParserTypes).AdapterBuilder)
export type AdapterContext = typeof(require(script.ParserTypes).AdapterContext)
export type AdapterEntryOptions = typeof(require(script.ParserTypes).AdapterEntryOptions)
export type AdapterExtension = typeof(require(script.ParserTypes).AdapterExtension)
export type AdapterFallback = typeof(require(script.ParserTypes).AdapterFallback)
export type AdapterFlattenOptions = typeof(require(script.ParserTypes).AdapterFlattenOptions)
export type AdapterGap = typeof(require(script.ParserTypes).AdapterGap)
export type AdapterGapKind = typeof(require(script.ParserTypes).AdapterGapKind)
export type AdapterHandler = typeof(require(script.ParserTypes).AdapterHandler)
export type AdapterInlineName = typeof(require(script.ParserTypes).AdapterInlineName)
export type AdapterInlineRule = typeof(require(script.ParserTypes).AdapterInlineRule)
export type AdapterListOptions = typeof(require(script.ParserTypes).AdapterListOptions)
export type AdapterPassName = typeof(require(script.ParserTypes).AdapterPassName)
export type AdapterQuoteOptions = typeof(require(script.ParserTypes).AdapterQuoteOptions)
export type AdapterRendererName = typeof(require(script.ParserTypes).AdapterRendererName)
export type AdapterStyle = typeof(require(script.ParserTypes).AdapterStyle)

local function profile()
	return require(script.Parsers.RobloxMarkdown)
end

-- The adapter also returns the places it flattened (gaps); the public function returns the
-- renderer AST only.
local function toRendererAst(document: ParserDocument): Node
	local ast = profile().toRendererAst(document)
	return ast
end

local loaders = {
	parse = function()
		return profile().parse
	end,
	safeParse = function()
		return profile().safeParse
	end,
	parseOptions = function()
		return profile().parseOptions
	end,
	createParser = function()
		return require(script.Adapter.createParser)
	end,
	Adapter = function()
		return table.freeze({
			Rules = require(script.Adapter).Rules,
		})
	end,
}

type Parse = typeof(require(script.Parsers.RobloxMarkdown).parse)
type SafeParse = typeof(require(script.Parsers.RobloxMarkdown).safeParse)
type ParseOptions = typeof(require(script.Parsers.RobloxMarkdown).parseOptions)
type CreateParser = typeof(require(script.Adapter.createParser))
type Rules = typeof(require(script.Adapter).Rules)

-- Absent until first accessed, then loaded by lazyMembers. The casts go through aliases: in this
-- nonstrict file an inline typeof in a cast is any.
local lazy: any = nil

local Markdown = {
	Components = require(script.Components),
	Enums = require(script.Enums),
	Parsers = require(script.Parsers),
	Utils = require(script.Utils),

	parse = lazy :: Parse,
	safeParse = lazy :: SafeParse,
	toRendererAst = toRendererAst,
	parseOptions = lazy :: ParseOptions,
	-- Beta until the API is declared stable
	createParser = lazy :: CreateParser,
	Adapter = lazy :: { Rules: Rules },
	-- Read once at require time, through SafeFlags
	Flags = Flags,
}
lazyMembers(Markdown, loaders)

return Markdown
