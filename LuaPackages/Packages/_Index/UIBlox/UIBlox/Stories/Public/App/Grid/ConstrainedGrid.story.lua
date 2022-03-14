local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local DefaultMetricsGridView = require(App.Grid.DefaultMetricsGridView)
local GridMetrics = require(App.Grid.GridMetrics)

return Roact.createElement(DefaultMetricsGridView, {
	renderItem = function(i)
		return Roact.createElement("TextLabel", {
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 1, 0),
			Text = i,
		})
	end,
	getItemHeight = function(width)
		return width
	end,
	getItemMetrics = GridMetrics.getSmallMetrics,
	itemPadding = Vector2.new(12, 12),
	items = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 },
	maxHeight = 1000,
})
