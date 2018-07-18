return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(FullScreenDropDownButton, {
			dropDownList = {}
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end