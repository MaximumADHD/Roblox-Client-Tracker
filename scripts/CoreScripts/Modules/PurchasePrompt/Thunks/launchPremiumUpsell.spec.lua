return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PromptState = require(Root.Enums.PromptState)
	local WindowState = require(Root.Enums.WindowState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockPlatformInterface = require(Root.Test.MockPlatformInterface)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local Thunk = require(Root.Thunk)

	local launchPremiumUpsell = require(script.Parent.launchPremiumUpsell)

	it("should run without errors on Studio", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local mockAnalytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()
		expect(mockAnalytics.spies.signalPremiumUpsellConfirmed).never.toHaveBeenCalled()
		expect(platformInterface.spies.signalMockPurchasePremium).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.None)
		expect(state.windowState).toBe(WindowState.Hidden)
	end)

	it("should run without errors on Desktop", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local mockAnalytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()
		expect(mockAnalytics.spies.signalPremiumUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.startPremiumUpsell).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.signalMockPurchasePremium).never.toHaveBeenCalled()
		expect(state.promptState).toBe(PromptState.UpsellInProgress)
	end)

	it("should run without errors on Mobile", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local mockAnalytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.IOS)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()
		expect(mockAnalytics.spies.signalPremiumUpsellConfirmed).toHaveBeenCalledTimes(1)
		if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
			expect(platformInterface.spies.promptNativePurchaseWithLocalPlayer).toHaveBeenCalledTimes(1)
		else
			expect(platformInterface.spies.promptNativePurchase).toHaveBeenCalledTimes(1)
		end
		expect(platformInterface.spies.signalMockPurchasePremium).never.toHaveBeenCalled()
		expect(state.promptState).toBe(PromptState.UpsellInProgress)
	end)

	it("should run into error on unsupported platforms", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local mockAnalytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.XBoxOne)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()
		expect(mockAnalytics.spies.signalPremiumUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.startPremiumUpsell).toHaveBeenCalledTimes(0)
		expect(platformInterface.spies.signalMockPurchasePremium).never.toHaveBeenCalled()
		expect(state.purchaseError).toBe(PurchaseError.PremiumUnavailablePlatform)
	end)
end
