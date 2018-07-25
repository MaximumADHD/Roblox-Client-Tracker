return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DropDown = require(script.Parent.DropDown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DropDown, {
			elementHeight = 0,
			numElements = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end