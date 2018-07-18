return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local TabRowButton = require(script.Parent.TabRowButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TabRowButton, {
			textWidth = 0,
			padding = 0,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end