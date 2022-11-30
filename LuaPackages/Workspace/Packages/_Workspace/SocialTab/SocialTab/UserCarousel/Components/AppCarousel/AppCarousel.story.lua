local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local AppCarousel = require(script.Parent)

return function(props)
	return Roact.createElement(AppCarousel, {
		items = {
			Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 10),
			}) :: any,
			Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 50),
				LayoutOrder = 1,
				BackgroundColor3 = Color3.new(1, 0, 1),
			}),
			Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 50),
				LayoutOrder = 2,
				BackgroundColor3 = Color3.new(0, 1, 0.784313),
			}),
			Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 50),
				LayoutOrder = 3,
				BackgroundColor3 = Color3.new(0, 0, 1),
			}),
		},
	})
end
