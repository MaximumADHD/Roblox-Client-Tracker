return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBoxDropDown = require(script.Parent.CheckBoxDropDown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBoxDropDown)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end