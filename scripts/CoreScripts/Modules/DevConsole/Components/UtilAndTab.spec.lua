return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local UtilAndTab = require(script.Parent.UtilAndTab)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UtilAndTab)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end