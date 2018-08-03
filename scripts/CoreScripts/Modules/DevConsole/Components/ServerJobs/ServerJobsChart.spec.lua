return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DataProvider = require(script.Parent.Parent.DataProvider)
	local ServerJobsChart = require(script.Parent.ServerJobsChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DataProvider, {}, {
			ServerJobsChart = Roact.createElement(ServerJobsChart)
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end