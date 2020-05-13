return function()
	local SelectionGroup = script.Parent
	local Small = SelectionGroup.Parent
	local Cell = Small.Parent
	local App = Cell.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local SmallRadioButtonCell = require(script.Parent.SmallRadioButtonCell)

	it("should create and destroy SmallRadioButtonCell without errors", function()
		local element = mockStyleComponent({
			smallRadioButtonCell = Roact.createElement(SmallRadioButtonCell, {
				key = "1",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end