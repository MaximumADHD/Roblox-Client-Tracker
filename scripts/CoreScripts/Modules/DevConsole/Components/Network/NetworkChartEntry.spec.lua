return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local NetworkChartEntry = require(script.Parent.NetworkChartEntry)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(NetworkChartEntry)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end