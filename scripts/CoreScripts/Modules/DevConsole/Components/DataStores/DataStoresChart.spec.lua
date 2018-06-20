return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local DataStoresChart = require(script.Parent.DataStoresChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			DataStoresChart = Roact.createElement(DataStoresChart)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end