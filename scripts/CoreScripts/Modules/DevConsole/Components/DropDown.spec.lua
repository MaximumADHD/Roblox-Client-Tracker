return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local DropDown = require(script.Parent.DropDown)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(DropDown, {
			dropDownList = {},
			dropDownTargetParent = Instance.new("ScreenGui"),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end