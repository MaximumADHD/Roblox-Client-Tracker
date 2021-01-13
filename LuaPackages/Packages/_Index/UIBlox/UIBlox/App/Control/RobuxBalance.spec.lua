return function()
	local Control = script.Parent
	local App = Control.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local RobuxBalance = require(Control.RobuxBalance)

	it("should create and destroy Robux Balance with no props without errors", function()
		local element = mockStyleComponent({
			RobuxBalance = Roact.createElement(RobuxBalance),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy Robux Balance with all props without errors", function()
		local element = mockStyleComponent({
			RobuxBalance = Roact.createElement(RobuxBalance, {
				displayText = "9.1K Robux",
				fullText = "9107 Robux",
				position = UDim2.new(1, 0, 0, 0),
				onActivated = function() end,
				onStateChanged = function() end,
				tooltipPosition = UDim2.new(1, 0, 0, 0),
				userInteractionEnabled = true,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

end