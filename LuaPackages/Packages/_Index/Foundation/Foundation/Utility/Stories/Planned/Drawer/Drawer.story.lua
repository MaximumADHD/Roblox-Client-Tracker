local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PlannedComponent = require(Foundation.Utility.Stories.Shared.PlannedComponent)

local function PlaygroundStory(): React.ReactNode
	return React.createElement(PlannedComponent, { name = "Drawer" })
end

return {
	summary = "Drawer is designed in Figma but is not implemented in Foundation yet.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
	},
}
