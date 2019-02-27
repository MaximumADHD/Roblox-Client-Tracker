return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local MockNetwork = require(script.Parent.Parent.Test.MockNetwork)
	local MockExternalSettings = require(script.Parent.Parent.Test.MockExternalSettings)

	local Network = require(script.Parent.Parent.Services.Network)
	local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local initiatePurchase = require(script.Parent.initiatePurchase)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiatePurchase(15, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false),
		})

		local state = store:getState()

		expect(state.product.id).to.equal(15)
	end)

	it("should abort when a purchase is already in progress", function()
		local store = Rodux.Store.new(Reducer, {
			promptState = PromptState.PromptPurchase,
			product = {
				id = 12,
				infoType = Enum.InfoType.Product,
			}
		})

		-- Initiate a purchase for a different product id
		local thunk = initiatePurchase(999, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false),
		})

		local state = store:getState()
		expect(state.product.id).to.equal(12)
		expect(state.promptState).to.equal(PromptState.PromptPurchase)
	end)

	it("should resolve to an error state if a network failure occurs", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = initiatePurchase(15, Enum.InfoType.Product, false)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
			[ExternalSettings] = MockExternalSettings.new(false, false, false, false),
		})

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
	end)
end