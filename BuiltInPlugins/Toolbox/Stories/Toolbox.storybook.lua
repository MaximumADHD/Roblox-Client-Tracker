local Plugin = script.Parent.Parent
local Packages = Plugin.Packages

local StoryMiddleware = require(Packages.Framework).Stories.getStoryMiddleware()
local Roact = require(Packages.Roact)

return {
	name = "Toolbox",
	mapStory = StoryMiddleware,
	storyRoots = { Plugin.Stories },
	roact = Roact,
}
