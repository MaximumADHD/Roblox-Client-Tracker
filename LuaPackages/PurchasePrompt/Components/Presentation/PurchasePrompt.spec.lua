return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Parent.Reducers.Reducer)

	local PromptState = require(script.Parent.Parent.Parent.PromptState)

	local UnitTestContainer = require(script.Parent.Parent.Parent.Test.UnitTestContainer)

	local PurchasePrompt = require(script.Parent.PurchasePrompt)
	PurchasePrompt = PurchasePrompt.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, {
			overrideStore = Rodux.Store.new(Reducer, {
				promptState = PromptState.PromptPurchase,
				accountInfo = {
					balance = 100,
				},
				productInfo = {
					assetTypeId = 2, -- T-shirt
					price = 10,
				},
			})
		}, {
			Roact.createElement(PurchasePrompt, {
				promptState = PromptState.PromptPurchase,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end