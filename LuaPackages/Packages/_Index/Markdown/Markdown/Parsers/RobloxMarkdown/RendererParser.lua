-- A drop-in for CommonMarkComplianceParser, exposed as Markdown.Parsers.RobloxMarkdown: the
-- profile's parse followed by its adapter, so it returns the renderer AST MarkdownViewer renders.
-- The profile module next to it (Parsers/RobloxMarkdown) returns the parser's Document instead.
-- Both steps are read from the profile's module table, so a spy on either takes effect.

local Root = script:FindFirstAncestor("Markdown")
local Adapter = require(Root.Adapter)
local RobloxMarkdown = require(script.Parent)
local Types = require(Root.Types)

type EntryOptions = Adapter.EntryOptions
type RendererNode = Types.Node

local RendererParser = {}

-- `options` (the old parser's second argument) reaches the adapter as `ctx.options`
function RendererParser.parse(source: string, options: EntryOptions?): RendererNode
	local ast = RobloxMarkdown.toRendererAst(RobloxMarkdown.parse(source), options)
	return ast
end

-- Guards the parse and the adapter together. `parse` is read from the module table on each call,
-- so a spy on RendererParser.parse is what runs. Like the profile's safeParse, the raised value
-- comes back unchanged, without the traceback CommonMarkComplianceParser appends.
function RendererParser.safeParse(source: string, options: EntryOptions?): (boolean, any)
	-- Without options, parse gets the source alone, as before options existed
	if options == nil then
		return pcall(RendererParser.parse, source)
	end
	return pcall(RendererParser.parse, source, options)
end

return RendererParser
