return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local LoadingSpinner = require(Loading.LoadingSpinner)

	it("should create and destroy without errors", function()
		local spinner = Roact.createElement(LoadingSpinner)
		local instance = Roact.mount(spinner, nil, "LoadingSpinnerTest")
		Roact.unmount(instance)
	end)

	it("should accept valid props", function()
		local spinner = Roact.createElement(LoadingSpinner, {
			rotationRate = 1,
			anchorPoint = Vector2.new(1, 2),
			position = UDim2.new(1, 2, 3, 4),
		})
		local instance = Roact.mount(spinner, nil, "LoadingSpinnerTest")
		Roact.unmount(instance)
	end)
end
