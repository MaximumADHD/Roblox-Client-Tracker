return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local TabRowButton = require(script.Parent.TabRowButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TabRowButton)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end