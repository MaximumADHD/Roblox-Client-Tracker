return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBoxContainer = require(script.Parent.CheckBoxContainer)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBoxContainer,{
			boxNames = {}
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end