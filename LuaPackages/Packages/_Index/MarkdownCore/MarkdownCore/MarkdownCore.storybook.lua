--[[
	The MarkdownCore storybook allows the Storybook plugin to discover the
	component stories in the library.

	- Stories of dependent libraries in Packages/_Index are excluded
]]
local MarkdownCore = script.Parent
local StoryMiddleware = require(MarkdownCore.StoryMiddleware)
local Roact = require(MarkdownCore.Parent.Dev.Roact)

return {
	name = "MarkdownCore",
	exclude = { "_Index" },
	storyRoots = { MarkdownCore },
	mapStory = StoryMiddleware,
	roact = Roact,
}
