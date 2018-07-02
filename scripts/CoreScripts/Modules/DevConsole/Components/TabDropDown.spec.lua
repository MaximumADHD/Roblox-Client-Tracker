return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local TabDropDown = require(script.Parent.TabDropDown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TabDropDown)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end