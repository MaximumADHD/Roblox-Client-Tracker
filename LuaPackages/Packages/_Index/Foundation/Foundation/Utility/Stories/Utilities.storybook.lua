local Stories = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Roact = require(Packages.Roact)

local GetStories = require(Stories.GetStories)
local StoryMiddleware = require(Stories.StoryMiddleware)

return {
	name = "Utilities",
	group = "Foundation",
	roact = Roact,
	storyRoots = GetStories.getStorybookRoots("utilities"),
	mapStory = StoryMiddleware,
	packages = {
		React = React,
		ReactRoblox = ReactRoblox,
	},
}
