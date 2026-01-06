--[[
	The InlineLayout storybook allows the Storybook plugin to discover the
	component stories in the library.

	- Stories of dependent libraries in Packages/_Index are excluded
]]
local InlineLayout = script.Parent

local Packages = InlineLayout.Parent
local StoryMiddleware = require(Packages.MarkdownCore).StoryMiddleware
local Roact = require(Packages.Dev.Roact)

return {
	name = "InlineLayout",
	exclude = { "_Index" },
	storyRoots = { InlineLayout },
	mapStory = StoryMiddleware,
	roact = Roact,
}
