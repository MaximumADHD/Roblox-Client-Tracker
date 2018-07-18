return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBoxDropDown = require(script.Parent.CheckBoxDropDown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBoxDropDown, {
			elementHeight = 0,
			numElements = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end