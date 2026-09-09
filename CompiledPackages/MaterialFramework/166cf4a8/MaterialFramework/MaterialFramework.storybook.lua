local MaterialFramework = script:FindFirstAncestor("MaterialFramework")
local Packages = MaterialFramework.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local StoryMiddleware = require(script.Parent.StoryMiddleware)

return {
	name = "Material Framework",
	roact = React,
	reactRoblox = ReactRoblox,
	storyRoots = { MaterialFramework },
	mapStory = StoryMiddleware,
	exclude = { "_Index" },
}
