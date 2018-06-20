return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local NetworkChart = require(script.Parent.NetworkChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(NetworkChart)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end