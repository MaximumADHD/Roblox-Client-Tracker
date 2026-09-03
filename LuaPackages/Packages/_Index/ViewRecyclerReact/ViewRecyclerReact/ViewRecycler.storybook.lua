local ViewRecyclerReact = script:FindFirstAncestor("ViewRecyclerReact")
assert(ViewRecyclerReact ~= nil, "ViewRecycler Storybook must be mounted under view-recycler-react")

local PackageScope = ViewRecyclerReact.Parent
local React = require(PackageScope.React)
local ReactRoblox = require(PackageScope.ReactRoblox)

local Stories = ViewRecyclerReact:FindFirstChild("Stories")
assert(Stories ~= nil, "ViewRecycler Storybook requires a local Stories folder")

local function mapStory(story)
	return function(storyProps)
		return React.createElement(story, storyProps)
	end
end

return {
	name = "ViewRecycler",
	roact = React,
	reactRoblox = ReactRoblox,
	mapStory = mapStory,
	storyRoot = Stories,
}
