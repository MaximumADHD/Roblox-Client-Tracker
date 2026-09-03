local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

return {
	name = "Graphing Examples",
	storyRoots = {
		Graphing.Stories,
	},
	roact = React,
	reactRoblox = ReactRoblox,
}
