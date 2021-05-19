local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local StoryMiddleware = require(script.Parent.Parent.StoryMiddleware)

return {
	group = "/UIBlox",
	roact = Roact,
	mapStory = StoryMiddleware,
}
