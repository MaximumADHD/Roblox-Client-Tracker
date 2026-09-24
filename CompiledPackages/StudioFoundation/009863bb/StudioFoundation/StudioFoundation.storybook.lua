local StudioFoundation = script:FindFirstAncestor("StudioFoundation")
local Packages = StudioFoundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local StoryMiddleware = require(script.Parent.StoryMiddleware)

return {
	name = "StudioFoundation",
	roact = React,
	reactRoblox = ReactRoblox,
	storyRoots = { StudioFoundation },
	mapStory = StoryMiddleware,
}
