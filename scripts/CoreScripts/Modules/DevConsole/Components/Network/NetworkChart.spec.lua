return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local NetworkChart = require(script.Parent.NetworkChart)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(NetworkChart, {
			summaryHeight = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end