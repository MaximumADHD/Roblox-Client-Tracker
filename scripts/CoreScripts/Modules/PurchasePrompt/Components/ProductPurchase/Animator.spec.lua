return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local Animator = require(script.Parent.Animator)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Animator, {
			shouldShow = false,
			onShown = function() end,
			onHidden = function() end,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
