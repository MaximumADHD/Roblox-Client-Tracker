return function()
	local Loading = script.Parent
	local App = Loading.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local ShimmerPanel = require(Loading.ShimmerPanel)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			ShimmerPanel = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0, 100, 0, 100),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end