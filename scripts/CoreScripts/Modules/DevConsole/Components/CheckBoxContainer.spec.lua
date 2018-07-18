return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBoxContainer = require(script.Parent.CheckBoxContainer)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBoxContainer,{
			boxNames = {},
			frameWidth = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end