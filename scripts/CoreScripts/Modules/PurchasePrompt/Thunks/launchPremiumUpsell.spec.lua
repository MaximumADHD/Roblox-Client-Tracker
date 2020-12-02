return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
	local WindowState = require(Root.Enums.WindowState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local Reducer = require(Root.Reducers.Reducer)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local ExternalSettings = require(Root.Services.ExternalSettings)
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
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(true, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()

		expect(platformInterface.spies.signalMockPurchasePremium.callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.None)
		expect(state.windowState).to.equal(WindowState.Hidden)
	end)

	it("should run without errors on Desktop", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.Windows)

		Thunk.test(thunk, store, {
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()

		-- https://jira.rbx.com/browse/EC-46
		-- expect(platformInterface.spies.startPremiumUpsell.callCount).to.equal(1)
		-- expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end)

	it("should run without errors on Mobile", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.IOS)

		Thunk.test(thunk, store, {
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()

		-- https://jira.rbx.com/browse/EC-46
		-- expect(platformInterface.spies.promptNativePurchase.callCount).to.equal(1)
		-- expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end)

	it("should run into error on unsupported platforms", function()
		local store = Rodux.Store.new(Reducer, {
			premiumProductInfo = {
				id = 350,
			}
		})

		local thunk = launchPremiumUpsell()
		local platformInterface = MockPlatformInterface.new()
		local externalSettings = MockExternalSettings.new(false, false, {}, Enum.Platform.XBoxOne)

		Thunk.test(thunk, store, {
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = externalSettings
		})

		local state = store:getState()

		-- https://jira.rbx.com/browse/EC-46
		-- expect(platformInterface.spies.startPremiumUpsell.callCount).to.equal(0)
		-- expect(state.purchaseError).to.equal(PurchaseError.PremiumUnavailablePlatform)
	end)
end
