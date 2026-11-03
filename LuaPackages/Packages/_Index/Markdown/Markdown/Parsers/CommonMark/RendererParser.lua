-- A drop-in for CommonMarkComplianceParser, exposed as Markdown.Parsers.CommonMark: the plain
-- CommonMark profile's parse followed by its adapter. Both steps are read from the profile's
-- module table, so a spy on either takes effect.

local Root = script:FindFirstAncestor("Markdown")
local Adapter = require(Root.Adapter)
local CommonMarkProfile = require(script.Parent)
local Types = require(Root.Types)

type EntryOptions = Adapter.EntryOptions
type RendererNode = Types.Node

local RendererParser = {}

-- `options` (the old parser's second argument) reaches the adapter as `ctx.options`
function RendererParser.parse(source: string, options: EntryOptions?): RendererNode
	local ast = CommonMarkProfile.toRendererAst(CommonMarkProfile.parse(source), options)
	return ast
end

-- Read from the module table on each call, so a spy on RendererParser.parse is what runs
function RendererParser.safeParse(source: string, options: EntryOptions?): (boolean, any)
	-- Without options, parse gets the source alone, as before options existed
	if options == nil then
		return pcall(RendererParser.parse, source)
	end
	return pcall(RendererParser.parse, source, options)
end

return RendererParser
