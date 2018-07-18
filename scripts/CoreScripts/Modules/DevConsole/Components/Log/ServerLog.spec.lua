return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ServerLog = require(script.Parent.ServerLog)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ServerLog)

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end