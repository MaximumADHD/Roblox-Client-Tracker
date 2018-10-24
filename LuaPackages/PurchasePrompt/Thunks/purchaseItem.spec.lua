return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local MockNetwork = require(script.Parent.Parent.Test.MockNetwork)
	local MockAnalytics = require(script.Parent.Parent.Test.MockAnalytics)

	local Network = require(script.Parent.Parent.Services.Network)
	local Analytics = require(script.Parent.Parent.Services.Analytics)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local purchaseItem = require(script.Parent.purchaseItem)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = purchaseItem()
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()

		Thunk.test(thunk, store, {
			[Network] = network,
			[Analytics] = analytics,
		})

		local state = store:getState()

		expect(analytics.signalPurchaseSuccess_callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.PurchaseInProgress)
	end)

	it("should resolve to an error state if a network error occurs", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = purchaseItem()
		local network = MockNetwork.new(true)
		local analytics = MockAnalytics.new()

		Thunk.test(thunk, store, {
			[Network] = network,
			[Analytics] = analytics,
		})

		local state = store:getState()

		expect(analytics.signalPurchaseSuccess_callCount).to.equal(0)
		expect(state.promptState).to.equal(PromptState.Error)
	end)
end