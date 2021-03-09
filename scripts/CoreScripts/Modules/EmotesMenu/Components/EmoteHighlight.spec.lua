return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local EmoteHighlight = require(script.Parent.EmoteHighlight)

	it("should create and destroy without errors", function()
		local instance = Roact.mount(Roact.createElement(EmoteHighlight))
		Roact.unmount(instance)
	end)
end