return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local AdditionalDetailLabel = require(script.Parent.AdditionalDetailLabel)

	AdditionalDetailLabel = AdditionalDetailLabel.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(AdditionalDetailLabel, {
				layoutOrder = 1,
				messageKey = "test",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when showing no text", function()
		local emptyMessageElement = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(AdditionalDetailLabel, {
				layoutOrder = 1,
			})
		})

		local instance = Roact.mount(emptyMessageElement)
		Roact.unmount(instance)
	end)
end
