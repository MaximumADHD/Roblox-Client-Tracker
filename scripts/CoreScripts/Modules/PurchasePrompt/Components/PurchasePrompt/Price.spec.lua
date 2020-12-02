return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local Price = require(script.Parent.Price)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(Price, {
				layoutOrder = 1,
				imageUrl = "",
				price = 50,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
