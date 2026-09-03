local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PlannedSubPart = require(script.Parent.PlannedSubPart)

local function createPlannedSubPartStory(name: string)
	return {
		summary = `{name} documentation is in progress.`,
		stories = {
			{
				name = "Playground",
				story = function()
					return React.createElement(PlannedSubPart, {
						name = name,
					})
				end :: unknown,
			},
		},
	}
end

return createPlannedSubPartStory
