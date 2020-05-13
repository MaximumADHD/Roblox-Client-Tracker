return function()
	local SelectionGroup = script.Parent
	local Small = SelectionGroup.Parent
	local Cell = Small.Parent
	local App = Cell.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local SmallRadioButtonGroup = require(script.Parent.SmallRadioButtonGroup)

	local ITEMS = {
		{ text = "Selection 1", key = "1" },
		{ text = "Selection 3", key = "3" },
		{ text = "Selection 2", key = "2" },
		{ text = "Disabled Cell", key = "4", isDisabled = true }
	}

	it("should create and destroy SmallRadioButtonGroup without errors", function()
		local element = mockStyleComponent({
			smallRadioButtonGroup = Roact.createElement(SmallRadioButtonGroup, {
				onActivated = function() end,
				items = ITEMS,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy SmallRadioButtonGroup without errors with all optional props used", function()
		local element = mockStyleComponent({
			smallRadioButtonGroup = Roact.createElement(SmallRadioButtonGroup, {
				onActivated = function() end,
				items = ITEMS,
				selectedValue = "1",
				layoutOrder = 1,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end