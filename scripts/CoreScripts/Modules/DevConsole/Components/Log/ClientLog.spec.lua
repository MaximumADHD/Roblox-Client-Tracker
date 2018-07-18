return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ClientLog = require(script.Parent.ClientLog)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ClientLog)

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end