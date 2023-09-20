return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Counter = require(Root.Enums.Counter)
	local RequestType = require(Root.Enums.RequestType)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local Network = require(Root.Services.Network)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockStore = require(Root.Test.MockStore)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)


	local sendCounter = require(script.Parent.sendCounter)

	it("Should send correct counters with all relevant data", function()
		local store = Rodux.Store.new(Reducer, {
			purchaseFlow = MockStore.getMockPurchaseFlow(),
			nativeUpsell = MockStore.getMockNativeUpsell(),
		})

		local thunk = sendCounter(Counter.Success)
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(analytics.spies.sendCounter).toHaveBeenCalledTimes(2)
	end)

	it("Should send correct counters when missing purchaseFlow", function()
		local store = Rodux.Store.new(Reducer, {
			nativeUpsell = MockStore.getMockNativeUpsell(),
		})

		local thunk = sendCounter(Counter.Success)
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(analytics.spies.sendCounter).toHaveBeenCalledTimes(2)
	end)

	it("Should send correct counters when missing nativeUpsell", function()
		local store = Rodux.Store.new(Reducer, {
			purchaseFlow = MockStore.getMockPurchaseFlow(),
		})

		local thunk = sendCounter(Counter.Success)
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(analytics.spies.sendCounter).toHaveBeenCalledTimes(1)
	end)

	it("Should send correct counters when missing purchaseFlow and nativeUpsell", function()
		local store = Rodux.Store.new(Reducer, {
		})

		local thunk = sendCounter(Counter.Success)
		local network = MockNetwork.new()
		local analytics = MockAnalytics.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[Network] = network,
			[ExternalSettings] = externalSettings,
		})

		local state = store:getState()
		expect(analytics.spies.sendCounter).toHaveBeenCalledTimes(1)
	end)
end
