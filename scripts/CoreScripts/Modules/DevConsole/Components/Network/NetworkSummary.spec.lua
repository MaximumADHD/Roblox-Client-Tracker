return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local NetworkSummary = require(script.Parent.NetworkSummary)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(NetworkSummary)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end