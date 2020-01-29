return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local Network = require(Root.Services.Network)
	local Analytics = require(Root.Services.Analytics)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local Thunk = require(Root.Thunk)

	local purchaseItem = require(script.Parent.purchaseItem)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = purchaseItem()
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()

		Thunk.test(thunk, store, {
			[Network] = network,
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()

		expect(analytics.spies.signalPurchaseSuccess.callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.PurchaseInProgress)
	end)

	it("should resolve to an error state if a network error occurs", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = purchaseItem()
		local network = MockNetwork.new(true)
		local analytics = MockAnalytics.new()

		Thunk.test(thunk, store, {
			[Network] = network,
			[Analytics] = analytics.mockService,
		})

		local state = store:getState()

		expect(analytics.spies.signalPurchaseSuccess.callCount).to.equal(0)
		expect(state.promptState).to.equal(PromptState.Error)
	end)
end