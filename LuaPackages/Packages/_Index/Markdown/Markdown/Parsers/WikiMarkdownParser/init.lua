local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Dash = require(Packages.Dash)

local buildTree = require(script.BuildTree)
local postProcessTree = require(script.PostProcessTree)
local tokenize = require(script.Tokenize)
local Types = require(Root.Types)
local unindentTags = require(script.Parent.UnindentTags)
local indexTree = require(script.Parent.IndexTree)
local DefaultParserOptions: ParserOptions = require(script.Parent.DefaultParserOptions)

type Node = Types.Node
type ParserOptions = Types.ParserOptions

local Parser = {}

function Parser.safeParse(input: string, options: ParserOptions?)
	local ok, result = xpcall(function()
		return Parser.parse(input, options)
	end, function(err)
		return `{err}\n{debug.traceback()}`
	end)
	return ok, result
end

function Parser.parse(input: string, incomingOptions: ParserOptions?): Node
	local options = Dash.joinDeep(DefaultParserOptions, incomingOptions or {})
	local unindented = unindentTags(input)
	local tokens = tokenize(unindented)
	local root = buildTree(tokens, options)
	root.children = postProcessTree(root, options)
	return indexTree(root)
end

return Parser
