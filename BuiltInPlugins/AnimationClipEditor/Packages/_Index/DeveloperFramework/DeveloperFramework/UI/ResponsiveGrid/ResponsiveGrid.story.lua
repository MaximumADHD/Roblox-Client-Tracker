local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local UI = require(Framework.UI)
local ResponsiveGrid = UI.ResponsiveGrid
local TextLabel = UI.Decoration.TextLabel

if not FFlagDevFrameworkResponsiveGrid2 then
	return Roact.createElement(TextLabel, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "Please enable FFlagDevFrameworkResponsiveGrid2",
		TextWrapped = true,
	})
end

return {
	stories = {
		{
			name = "Default",
			summary = "A flexible grid. Change the storybook plugin width to see changing columns.",
			story = Roact.createElement(ResponsiveGrid, {
				AutomaticSize = Enum.AutomaticSize.Y,
				CutOffs = {
					{
						MinWidth = 0,
						ColumnCount = 1,
					},
					{
						MinWidth = 200,
						ColumnCount = 2,
					},
					{
						MinWidth = 400,
						ColumnCount = 3,
					},
					{
						MinWidth = 1000,
						ColumnCount = 5,
					},
				},
				ItemHeight = UDim.new(0, 100),
			}, {
				item1 = Roact.createElement("TextLabel", {
					Text = "item 1",
					LayoutOrder = 1,
				}),
				item2 = Roact.createElement("TextLabel", {
					Text = "item 2",
					LayoutOrder = 2,
				}),
				item3 = Roact.createElement("TextLabel", {
					Text = "item 3",
					LayoutOrder = 3,
				}),
				item4 = Roact.createElement("TextLabel", {
					Text = "item 4",
					LayoutOrder = 4,
				}),
				item5 = Roact.createElement("TextLabel", {
					Text = "item 5",
					LayoutOrder = 5,
				}),
			}),
		},
	}
}
