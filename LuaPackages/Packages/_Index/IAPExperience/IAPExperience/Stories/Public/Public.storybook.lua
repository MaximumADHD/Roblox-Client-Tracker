local PublicRoot = script.Parent
local StoryRoot = PublicRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local StoryMiddleware = require(IAPExperienceRoot.Utility.StoryMiddleware)

return {
	group = "/IAPExperience",
	roact = Roact,
	mapStory = StoryMiddleware,
}
