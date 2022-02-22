local Plugin = script.Parent.Parent
local Packages = Plugin.Packages

local RefactorFlags = require(Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

local StoryMiddleware = require(Packages.Framework).Stories.getStoryMiddleware()
local Roact = require(Packages.Roact)

return {
	name = "Toolbox",
	mapStory = StoryMiddleware,
	storyRoots = { Plugin.Stories },
	roact = Roact,
}
