return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local PromptState = require(Root.Enums.PromptState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local RequestType = require(Root.Enums.RequestType)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local Network = require(Root.Services.Network)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local MockNetwork = require(Root.Test.MockNetwork)
	local MockPlatformInterface = require(Root.Test.MockPlatformInterface)
	local Thunk = require(Root.Thunk)

	local launchRobuxUpsell = require(script.Parent.launchRobuxUpsell)

	local function getDefaultState()
		return {
			productInfo = {
				productId = 50,
			},
			requestType = RequestType.Asset,
			accountInfo = {
				AgeBracket = 0,
			},
		}
	end

	local function checkDesktopUpsell(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed.callCount).to.equal(1)
		expect(analytics.spies.reportRobuxUpsellStarted.callCount).to.equal(0)
		expect(platformInterface.spies.startRobuxUpsellWeb.callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end

	it("should run without errors on Windows", function()
		checkDesktopUpsell(Enum.Platform.Windows)
	end)

	it("should run without errors on OSX", function()
		checkDesktopUpsell(Enum.Platform.OSX)
	end)

	local function checkMobileUpsell(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed.callCount).to.equal(1)
		expect(analytics.spies.reportNativeUpsellStarted.callCount).to.equal(0)
		expect(platformInterface.spies.promptNativePurchase.callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end

	it("should run without errors on IOS", function()
		checkMobileUpsell(Enum.Platform.IOS)
	end)

	it("should run without errors on Android", function()
		checkMobileUpsell(Enum.Platform.Android)
	end)

	it("should run without errors on UWP", function()
		checkMobileUpsell(Enum.Platform.UWP)
	end)

	local function checkPlatformUpsells(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed.callCount).to.equal(1)
		expect(analytics.spies.reportNativeUpsellStarted.callCount).to.equal(0)
		-- Not working yet, TODO: get working :P
		--expect(platformInterface.spies.beginPlatformStorePurchase.callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end

	it("should run without errors on XBoxOne", function()
		checkPlatformUpsells(Enum.Platform.XBoxOne)
	end)

	it("should prevent upsells if FFlagDisableRobuxUpsell = true", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
				DisableRobuxUpsell = true
			})
		})

		local state = store:getState()
		expect(state.promptState).to.equal(PromptState.Error)
		expect(state.purchaseError).to.equal(PurchaseError.NotEnoughRobuxNoUpsell)
	end)
end
