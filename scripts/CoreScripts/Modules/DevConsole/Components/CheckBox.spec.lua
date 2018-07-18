return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local CheckBox = require(script.Parent.CheckBox)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(CheckBox, {
			name = "",
			fontSize = 0,
			font = 0,
			frameHeight = 0,
			checkBoxHeight = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end