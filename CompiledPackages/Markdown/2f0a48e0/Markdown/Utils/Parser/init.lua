local Root = script:FindFirstAncestor("Utils").Parent
local Types = require(Root.Types)
local buildTree = require(script.BuildTree)
local postProcessTree = require(script.PostProcessTree)
local tokenize = require(script.Tokenize)
local unindentTags = require(script.UnindentTags)
local indexTree = require(script.IndexTree)

type Node = Types.Node
type ParserOptions = Types.ParserOptions

local DEFAULT_OPTIONS = {
	inlineTags = {
		font = true,
		img = true,
	},
}

local Parser = {}

function Parser.safeParse(input: string, options: ParserOptions?)
	local ok, result = xpcall(function()
		return Parser.parse(input, options)
	end, function(err)
		return `{err}\n{debug.traceback()}`
	end)
	return ok, result
end

function Parser.parse(input: string, options: ParserOptions?): Node
	local unindented = unindentTags(input)
	local tokens = tokenize(unindented)
	local root = buildTree(tokens)
	root.children = postProcessTree(root, options or DEFAULT_OPTIONS)
	return indexTree(root)
end

return Parser
