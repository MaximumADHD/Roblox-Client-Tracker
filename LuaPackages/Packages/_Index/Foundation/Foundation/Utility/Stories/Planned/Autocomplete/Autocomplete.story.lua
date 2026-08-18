local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PlannedComponent = require(Foundation.Utility.Stories.Shared.PlannedComponent)

return {
	summary = "Autocomplete is designed in Figma but is not implemented in Foundation yet.",
	stories = {
		{
			name = "Playground",
			story = function()
				return React.createElement(PlannedComponent, { name = "Autocomplete" })
			end :: unknown,
		},
	},
}
