return function()
	local Pill = script.Parent
	local App = Pill.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local LargePill = require(Pill.LargePill)

	it("should create and destroy Large Pill with text without errors", function()
		local element = mockStyleComponent({
			pill = Roact.createElement(LargePill, {
				text = "Large Pill",
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
	it("should create and destroy Large Pill with all properties without errors", function()
		local element = mockStyleComponent({
			pill = Roact.createElement(LargePill, {
				text = "Large Pill",
				width = UDim.new(0.75, 0),
				isSelected = true,
				isLoading = true,
				isDisabled = true,
				onActivated = function()end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end