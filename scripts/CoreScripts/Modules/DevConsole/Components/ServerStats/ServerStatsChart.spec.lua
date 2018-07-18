return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerStatsChart = require(script.Parent.ServerStatsChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {},{
			ServerStatsChart = Roact.createElement(ServerStatsChart)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end