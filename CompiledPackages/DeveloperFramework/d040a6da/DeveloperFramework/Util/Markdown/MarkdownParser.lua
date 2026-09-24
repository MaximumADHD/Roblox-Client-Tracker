local buildTree = require(script.Parent.BuildTree)
local postProcessTree = require(script.Parent.PostProcessTree)
local tokenize = require(script.Parent.Tokenize)
local unindentTags = require(script.Parent.unindentTags)
local indexTree = require(script.Parent.indexTree)

local Types = require(script.Parent.Types)
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
