return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)
	local Rodux = require(LuaPackages.Rodux)

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