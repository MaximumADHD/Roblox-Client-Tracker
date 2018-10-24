return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local PurchasePromptApp = require(script.Parent.PurchasePromptApp)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(PurchasePromptApp)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end