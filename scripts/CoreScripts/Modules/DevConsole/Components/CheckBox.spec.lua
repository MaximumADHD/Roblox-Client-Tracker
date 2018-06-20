return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBox = require(script.Parent.CheckBox)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBox)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end