return function()
	local Grid = script.Parent
	local App = Grid.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local ScrollingGridView = require(script.Parent.ScrollingGridView)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			ScrollingGridView = Roact.createElement(ScrollingGridView, {
				items = {1, 2, 3},
				renderItem = function(i)
					return Roact.createElement("TextLabel", {
						Text = i,
						Size = UDim2.new(1, 0, 1, 0),
					})
				end,
				itemSize = Vector2.new(100, 100),
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with all props", function()
		local element = mockStyleComponent({
			ScrollingGridView = Roact.createElement(ScrollingGridView, {
				items = {1, 2, 3},
				renderItem = function(i)
					return Roact.createElement("TextLabel", {
						Text = i,
						Size = UDim2.new(1, 0, 1, 0),
					})
				end,
				itemSize = Vector2.new(100, 100),
				size = UDim2.new(1, 0, 1, 0),
				itemPadding = Vector2.new(12, 24),
				innerUIPadding = {
					PaddingTop = UDim.new(0, 10),
					PaddingBottom = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 10),
				},
				horizontalAlignment = Enum.HorizontalAlignment.Center,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
