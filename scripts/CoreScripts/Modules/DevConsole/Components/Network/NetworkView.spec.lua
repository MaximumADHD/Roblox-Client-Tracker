return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local NetworkView = require(script.Parent.NetworkView)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			NetworkView = Roact.createElement(NetworkView)
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end