return function()
	local Slider = script.Parent
	local App = Slider.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local TwoKnobContextualSlider = require(script.Parent.TwoKnobContextualSlider)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			systemSlider = Roact.createElement(TwoKnobContextualSlider, {
				lowerValue = 10,
				upperValue = 90,
				min = 0,
				max = 100,
				onValueChanged = function() end,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with all props", function()
		local element = mockStyleComponent({
			systemSlider = Roact.createElement(TwoKnobContextualSlider, {
				lowerValue = 10,
				upperValue = 90,
				min = 0,
				max = 100,
				stepInterval = 1,
				onValueChanged = function() end,
				isDisabled = false,

				width = UDim.new(1, 1),
				position = UDim2.new(1, 1, 1, 1),
				anchorPoint = Vector2.new(0.5, 0.5),
				layoutOrder = 1,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end