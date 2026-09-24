--[[
	The DeveloperFramework storybook allows the Storybook plugin to discover the
	component stories in the library.

	- Stories of dependent libraries in Packages/_Index are excluded
	- The StoryMiddleware is used
	- Each story is decorated with the DocParser documentation, if available
]]
local Framework = script.Parent
local StoryMiddleware = require(Framework.UI.Stories.StoryMiddleware)
local DocParser = require(Framework.Util.Typecheck.DocParser)

return {
	name = "Developer Framework",
	exclude = { "_Index" },
	storyRoots = { Framework },
	mapStory = StoryMiddleware,
	mapDefinition = function(definition)
		local parser = DocParser.new(definition.name, definition.source.Parent)
		local ok, result = pcall(function()
			return parser:parse()
		end)

		if not ok then
			return definition
		end

		definition.docs = result

		-- A story may provide a summary, which we shouldn't override
		if definition.summary == nil or definition.summary == "" then
			definition.summary = result.Summary
		end

		-- If no props are pulled from a header comment, we can infer from exported types
		if next(definition.docs.Props) == nil then
			definition.docs.Props = parser:parseProps()
			definition.docs.Style = parser:parseStyle()
			definition.docs.Dependencies = parser:parseDependencies()
		end
		return definition
	end,
}
