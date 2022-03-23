--!strict
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local HorizontalList = require(Plugin.Core.Components.Categorization.HorizontalList)

return {
	name = "HorizontalList",
	summary = "A generic horizontal list that sizes itself to the size of its content",
	story = Roact.createElement(ToolboxStoryWrapper, {}, {
		Frame = Roact.createElement("Frame", {
			BackgroundTransparency = 1.0,
			Size = UDim2.new(0, 600, 0, 60),
		}, {
			List = Roact.createElement(HorizontalList, {
				DefaultHeight = 50,
				Data = {
					"This",
					"is",
					"a",
					"test",
				},
				OnRenderItem = function(index, item)
					return Roact.createElement("TextLabel", {
						Size = UDim2.new(0, 50, 0, 50),
						Text = item,
						LayoutOrder = index,
					})
				end,
			}),
		}),
	}),
}
