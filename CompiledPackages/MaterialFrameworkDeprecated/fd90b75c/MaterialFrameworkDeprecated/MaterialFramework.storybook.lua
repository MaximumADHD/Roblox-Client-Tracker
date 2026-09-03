--[[
	The MaterialFramework storybook allows the Storybook plugin to discover the
	component stories in the library.

	- Stories of dependent libraries in Packages/_Index are excluded
	- The StoryMiddleware is used
	- Each story is decorated with the DocParser documentation, if available
]]
local main = script.Parent
local Packages = main.Parent

local Framework = require(Packages.Framework)

local DocParser = Framework.Util.Typecheck.DocParser

local StoryMiddleware = require(main.Middleware.StoryMiddleware)

return {
	name = "Material Framework (Deprecated)",
	exclude = { "_Index" },
	storyRoots = { main },
	mapStory = StoryMiddleware,
	mapDefinition = function(definition)
		local parser = DocParser.new(definition.name, definition.source.Parent)
		local ok, result = pcall(function()
			return parser:parse()
		end)
		if ok then
			definition.docs = result
			definition.summary = result.Summary
		end
		return definition
	end,
}
