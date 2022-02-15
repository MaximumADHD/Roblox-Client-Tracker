local Plugin = script.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")

local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end

local StoryMiddleware = require(Libs.Framework).Stories.getStoryMiddleware()
local Roact = require(Libs.Roact)

return {
	name = "Toolbox",
	mapStory = StoryMiddleware,
	storyRoots = { Plugin.Stories },
	roact = Roact,
}
