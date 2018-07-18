return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local LogOutput = require(script.Parent.LogOutput)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LogOutput)

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end