local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PlannedSubPart = require(Foundation.Utility.Stories.PlannedSubPart)

local function PlaygroundStory(): React.ReactNode
	return React.createElement(PlannedSubPart, { name = "HeaderBar.Trailing" })
end

return {
	summary = "HeaderBar.Trailing documentation is in progress.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
	},
}
