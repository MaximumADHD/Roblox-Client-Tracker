--[[
	The Markdown storybook allows the Storybook plugin to discover the
	component stories in the library.

	- Stories of dependent libraries in Packages/_Index are excluded
]]
local Markdown = script.Parent

local StoryMiddleware = require(Markdown.Middleware.StoryMiddleware)

return {
	name = "Markdown",
	exclude = { "_Index" },
	storyRoots = { Markdown },
	mapStory = StoryMiddleware,
}
