--!nonstrict
local Stories = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

-- local DocUtils = require(Packages.Dev.DocUtils)
-- local DocParser = require(DocUtils.DocParser)
local StoryMiddleware = require(Stories.StoryMiddleware)
local Roact = require(Packages.Roact)
local GetStories = require(Stories.GetStories)

return {
	name = "Public",
	group = "Foundation",
	roact = Roact,
	storyRoots = GetStories(true),
	mapStory = StoryMiddleware,
	-- mapDefinition = function(definition)
	-- 	local parser = DocParser.new(definition.name, definition.source)
	-- 	local ok, result = pcall(function()
	-- 		return parser:parse()
	-- 	end)
	-- 	if ok then
	-- 		definition.docs = result
	-- 	end
	-- 	return definition
	-- end,
}
