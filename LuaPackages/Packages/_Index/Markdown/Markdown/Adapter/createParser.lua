-- A parser built from extensions and CommonMark parse options: CommonMark's parse followed by the
-- adapter those extensions configure. Beta until the API is declared stable.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Adapter = require(script.Parent)
local CommonMark = require(Packages.CommonMark)
local Types = require(Root.Types)

type Document = CommonMark.Document
type EntryOptions = Adapter.EntryOptions
type Extension = Adapter.Extension
type Gap = Adapter.Gap
type ParseOptions = CommonMark.ParseOptions
type ParserNode = CommonMark.Node
type RendererNode = Types.Node

export type ParserConfig = {
	extensions: { Extension }?,
	-- Passed to CommonMark.parse, with `extensions` added after any it lists
	parserOptions: ParseOptions?,
}

export type Parser = {
	-- The options CommonMark.parse gets, frozen
	parseOptions: ParseOptions,
	-- The renderer AST of the source; `options` reaches the adapter as `ctx.options`
	parse: (source: string, options: EntryOptions?) -> RendererNode,
	-- `parse` under pcall, read from the parser table so a spy on it takes effect
	safeParse: (source: string, options: EntryOptions?) -> (boolean, any),
	parseDocument: (source: string) -> Document,
	toRendererAst: (document: ParserNode, options: EntryOptions?) -> (RendererNode, { Gap }),
}

local function createParser(config: ParserConfig?): Parser
	local extensions: { Extension } = if config ~= nil and config.extensions ~= nil then config.extensions else {}
	local parserOptions: ParseOptions = if config ~= nil and config.parserOptions ~= nil
		then table.clone(config.parserOptions)
		else {}
	local allExtensions: { Extension } = extensions
	if parserOptions.extensions ~= nil then
		allExtensions = table.clone(parserOptions.extensions :: any)
		table.move(extensions, 1, #extensions, #allExtensions + 1, allExtensions)
		table.freeze(allExtensions)
	end
	parserOptions.extensions = allExtensions :: any
	-- Frozen because CommonMark caches the built parser per options table and reads it only once
	table.freeze(parserOptions)
	local adapter = Adapter.build(allExtensions)

	local parser = {} :: Parser
	parser.parseOptions = parserOptions
	function parser.parseDocument(source: string): Document
		return CommonMark.parse(source, parserOptions)
	end
	function parser.toRendererAst(document: ParserNode, options: EntryOptions?): (RendererNode, { Gap })
		return adapter.toRendererAst(document, options)
	end
	function parser.parse(source: string, options: EntryOptions?): RendererNode
		local ast = parser.toRendererAst(parser.parseDocument(source), options)
		return ast
	end
	function parser.safeParse(source: string, options: EntryOptions?): (boolean, any)
		-- Without options, parse gets the source alone, as before options existed
		if options == nil then
			return pcall(parser.parse, source)
		end
		return pcall(parser.parse, source, options)
	end
	return parser
end

return createParser
