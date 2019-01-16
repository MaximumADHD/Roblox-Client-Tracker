return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local ScrollingTextBox = require(script.Parent.ScrollingTextBox)

	it("should create and destroy without errors", function()

		local element = Roact.createElement(ScrollingTextBox, {
			TextSize = 10,
			Font = Enum.Font.Legacy,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end