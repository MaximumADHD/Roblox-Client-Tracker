return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact

	local FillCircle = require(script.Parent.FillCircle)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(FillCircle, {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			fillFraction = 0.25,
			largerCircleFraction = 0.9,
			popCircleFraction = 1,
			shakeCircleFraction = 1.1,
			BackgroundColor = Color3.new(0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when larger fraction", function()
		local element = Roact.createElement(FillCircle, {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			fillFraction = 0.95,
			largerCircleFraction = 0.9,
			popCircleFraction = 1,
			shakeCircleFraction = 1.1,
			BackgroundColor = Color3.new(0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when playing pop animation", function()
		local element = Roact.createElement(FillCircle, {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			fillFraction = 0.7,
			largerCircleFraction = 2,
			popCircleFraction = 0.5,
			shakeCircleFraction = 1.1,
			BackgroundColor = Color3.new(0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when playing shake animation", function()
		local element = Roact.createElement(FillCircle, {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			fillFraction = 0.7,
			largerCircleFraction = 2,
			popCircleFraction = 1.1,
			shakeCircleFraction = 0.5,
			BackgroundColor = Color3.new(0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end