local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local StoryMiddleware = require(IAPExperienceRoot.Utility.StoryMiddleware)

return {
	group = "/IAPExperience",
	roact = Roact,
	mapStory = StoryMiddleware,
}
