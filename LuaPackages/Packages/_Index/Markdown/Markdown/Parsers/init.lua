local lazyMembers = require(script.Parent.lazyMembers)

-- The profiles' drop-ins load on first access, so requiring Parsers doesn't load CommonMark
local loaders = {
	CommonMark = function()
		return require(script.CommonMark.RendererParser)
	end,
	RobloxMarkdown = function()
		return require(script.RobloxMarkdown.RendererParser)
	end,
}

type CommonMarkParser = typeof(require(script.CommonMark.RendererParser))
type RobloxMarkdownParser = typeof(require(script.RobloxMarkdown.RendererParser))

-- Casts through aliases: in this nonstrict file an inline typeof in a cast is any
local lazy: any = nil

local Parsers = {
	-- The plain CommonMark profile's renderer-AST drop-in; the viewer uses it only through ParserProfile
	CommonMark = lazy :: CommonMarkParser,
	CommonMarkComplianceParser = require(script.CommonMarkComplianceParser),
	-- The renderer-AST drop-in; the profile module itself (Document-level) is Parsers/RobloxMarkdown
	RobloxMarkdown = lazy :: RobloxMarkdownParser,
	WikiMarkdownParser = require(script.WikiMarkdownParser),
}
lazyMembers(Parsers, loaders)

return Parsers
