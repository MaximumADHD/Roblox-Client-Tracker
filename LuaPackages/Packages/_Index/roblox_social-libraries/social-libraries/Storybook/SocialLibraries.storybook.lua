local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local StoryMiddleware = require(script.Parent.Parent.StoryMiddleware)

return {
	storyRoots = { script.Parent },
	roact = Roact,
	mapStory = StoryMiddleware,
}
