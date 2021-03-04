return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local PromptContents = require(script.Parent.PromptContents)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, {
			promptState = PromptState.PromptPurchase,
			overrideStore = Rodux.Store.new(Reducer, {
				promptState = PromptState.PromptPurchase,
				accountInfo = {
					balance = 100,
				},
				productInfo = {
					assetTypeId = 2, -- T-shirt
					price = 10,
					itemType = 2,
				},
			})
		}, {
			Roact.createElement(PromptContents, {
				layoutOrder = 1,
				onClose = function()
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end