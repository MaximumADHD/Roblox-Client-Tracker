return function()
	local Root = script.Parent.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Roact = PurchasePromptDeps.Roact
	local Rodux = PurchasePromptDeps.Rodux

	local Reducer = require(Root.Reducers.Reducer)
	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local ProductDescription = require(script.Parent.ProductDescription)

	ProductDescription = ProductDescription.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, {
			overrideStore = Rodux.Store.new(Reducer, {
				productInfo = {
					price = 10,
				},
			})
		}, {
			Roact.createElement(ProductDescription, {
				descriptionKey = "CoreScripts.PurchasePrompt.PurchaseMessage.Purchase",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
