return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ActionBindingsChart = require(script.Parent.ActionBindingsChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, nil, {
			ActionBindingsChart = Roact.createElement(ActionBindingsChart)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end