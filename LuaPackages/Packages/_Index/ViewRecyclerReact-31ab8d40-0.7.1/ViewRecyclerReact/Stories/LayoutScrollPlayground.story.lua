local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "LayoutScrollPlayground story must be mounted under view-recycler-react")

local Playground = require(script.Parent.LayoutScrollPlayground)
local React = require(Root.Parent.React)

local function story(storyProps)
	return React.createElement(Playground.Component, {
		controls = Playground.mergeControls(storyProps and storyProps.controls),
	})
end

return {
	name = "Layout & Scroll Playground",
	summary = "One control-driven surface for comparing fixed, exact-variable, measured, and imperative list behavior.",
	roact = React,
	story = story,
	controls = Playground.controls,
}
