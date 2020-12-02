return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local AnimatedDot = require(script.Parent.AnimatedDot)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AnimatedDot, {
			time = 1,
			layoutOrder = 1,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
