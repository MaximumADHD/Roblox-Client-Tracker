return function()
	local Navigation = script.Parent
	local App = Navigation.Parent
	local UIBloxRoot = App.Parent
	local Packages = UIBloxRoot.Parent
	local Roact = require(Packages.Roact)
	local Cryo = require(Packages.Cryo)

	local InteractableList = require(script.Parent.InteractableList)
	local SelectionMode = require(script.Parent.Enum.SelectionMode)

	it("should create and destroy with minimum props without errors", function()
		local element = Roact.createElement(InteractableList, {
			itemList = {},
			renderItem = function() end,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with all props without errors", function()
		local element = Roact.createElement(InteractableList, {
			itemList = {"one", "two"},
			renderItem = function(item)
				return Roact.createElement("TextLabel", {
					Text = item,
				})
			end,
			renderList = function(items, renderItem)
				return Roact.createElement("Frame", {}, Cryo.List.map(Cryo.Dictionary.keys(items), renderItem))
			end,
			selection = {},
			selectionMode = SelectionMode.None,
			onSelectionChanged = function() end,
			size = UDim2.new(),
			position = UDim2.new(),
			layoutOrder = 1,
			padding = UDim.new(),
			fillDirection = Enum.FillDirection.Horizontal,
			horizontalAlignment = Enum.HorizontalAlignment.Center,
			verticalAlignment = Enum.VerticalAlignment.Bottom,
			sortOrder = Enum.SortOrder.Custom,
			itemSize = UDim2.new(),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
