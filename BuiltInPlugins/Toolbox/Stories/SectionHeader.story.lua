--!strict
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local SectionHeader = require(Plugin.Core.Components.Categorization.SectionHeader)

return {
	name = "SectionHeader",
	summary = "A header shown at the top of a swimlane.",
	story = Roact.createElement(ToolboxStoryWrapper, {}, {
		EmptyFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 400, 0, 100),
		}, {
			SectionHeader = Roact.createElement(SectionHeader, {
				OnClickSeeAll = function()
					print("'See All' button pressed")
				end,
				Position = UDim2.new(0, 0, 0, 0),
				Title = "This is a test",
			})
		})
	})
}
