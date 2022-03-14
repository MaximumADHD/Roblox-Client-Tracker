local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)

local GridView = UIBlox.App.Grid.GridView

local items = {}

for i = 1, 100000 do
	table.insert(items, i)
end

return Roact.createElement(GridView, {
	renderItem = function(i)
		return Roact.createElement("TextLabel", {
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 1, 0),
			Text = i,
		})
	end,
	itemPadding = Vector2.new(12, 12),
	items = items,
	windowHeight = 500,
	itemSize = Vector2.new(100, 100),
})
