--!nonstrict
return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local PromptState = require(Root.Enums.PromptState)
	local PurchaseError = require(Root.Enums.PurchaseError)
	local RequestType = require(Root.Enums.RequestType)
	local Constants = require(Root.Misc.Constants)
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

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(analytics.spies.reportRobuxUpsellStarted).never.toHaveBeenCalled()
		expect(platformInterface.spies.startRobuxUpsellWeb).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.UpsellInProgress)
	end

	it("should run without errors on Windows", function()
		checkDesktopUpsell(Enum.Platform.Windows)
	end)

	it("should run without errors on OSX", function()
		checkDesktopUpsell(Enum.Platform.OSX)
	end)

	local function checkMobileUpsell(platform, fflags)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, fflags or {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed).toHaveBeenCalledTimes(1)
		if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
			expect(platformInterface.spies.promptNativePurchaseWithLocalPlayer).toHaveBeenCalledTimes(1)
		else
			expect(platformInterface.spies.promptNativePurchase).toHaveBeenCalledTimes(1)
		end
		expect(state.promptState).toBe(PromptState.UpsellInProgress)
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

	it("should run without errors on XBoxOne (FFlagPPXboxPromptNative: true)", function()
		checkMobileUpsell(Enum.Platform.XBoxOne, { PPXboxPromptNative = true })
	end)

	it("should run without errors on XBoxOne (FFlagPPXboxPromptNative: false)", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		local spy, spyFn = jest.fn(function()
			return Constants.PlatformPurchaseResult.PurchaseResult_Success
		end)
		platformInterface.mockService.beginPlatformStorePurchase = spyFn
		platformInterface.spies.beginPlatformStorePurchase = spy

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
				PurchasePromptUpsellXboxFix = true
			}, Enum.Platform.XBoxOne)
		}):andThen(function() end)

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.beginPlatformStorePurchase).toHaveBeenCalledTimes(1)
		--In progress because we still need to check the balance after
		expect(state.promptState).toBe(PromptState.UpsellInProgress)

		expect(analytics.spies.signalXboxInGamePurchaseSuccess).toHaveBeenCalledTimes(1)
	end)

	it("should run without errors on XBoxOne when the purchase is cancelled (FFlagPPXboxPromptNative: false)", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		local spy, spyFn = jest.fn(function()
			return Constants.PlatformPurchaseResult.PurchaseResult_UserCancelled
		end)
		platformInterface.mockService.beginPlatformStorePurchase = spyFn
		platformInterface.spies.beginPlatformStorePurchase = spy

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
				PurchasePromptUpsellXboxFix = true
			}, Enum.Platform.XBoxOne)
		}):andThen(function() end)

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.beginPlatformStorePurchase).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)

		expect(analytics.spies.signalXboxInGamePurchaseCanceled).toHaveBeenCalledTimes(1)
	end)

	it("should run without errors on XBoxOne when the purchase errored (FFlagPPXboxPromptNative: false)", function()
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		local spy, spyFn = jest.fn(function()
			return Constants.PlatformPurchaseResult.PurchaseResult_Error
		end)
		platformInterface.mockService.beginPlatformStorePurchase = spyFn
		platformInterface.spies.beginPlatformStorePurchase = spy

		Thunk.test(launchRobuxUpsell(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
				PurchasePromptUpsellXboxFix = true
			}, Enum.Platform.XBoxOne)
		}):andThen(function() end)

		local state = store:getState()

		expect(analytics.spies.signalProductPurchaseUpsellConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.beginPlatformStorePurchase).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)

		expect(analytics.spies.signalXboxInGamePurchaseFailure).toHaveBeenCalledTimes(1)
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
		expect(state.promptState).toBe(PromptState.Error)
		expect(state.purchaseError).toBe(PurchaseError.NotEnoughRobuxNoUpsell)
	end)

	describe("should signal signalScaryModalConfirmed when starting ScaryModal has been confirmed and native purchase starts", function()
		local function checkScaryModalConfirmed(promptState)
			local defaultState = getDefaultState()
			defaultState.promptState = promptState
			local store = Rodux.Store.new(Reducer, defaultState)

			local analytics = MockAnalytics.new()
			local platformInterface = MockPlatformInterface.new()

			Thunk.test(launchRobuxUpsell(), store, {
				[Analytics] = analytics.mockService,
				[Network] = MockNetwork.new(),
				[PlatformInterface] = platformInterface.mockService,
				[ExternalSettings] = MockExternalSettings.new(false, false, {}, Enum.Platform.Windows)
			})

			local state = store:getState()

			expect(analytics.spies.signalScaryModalConfirmed).toHaveBeenCalledTimes(1)
			expect(state.promptState).toBe(PromptState.UpsellInProgress)
		end


		it("should signal for U13PaymentModal", function()
			checkScaryModalConfirmed(PromptState.U13PaymentModal)
		end)

		it("should signal for U13MonthlyThreshold1Modal", function()
			checkScaryModalConfirmed(PromptState.U13MonthlyThreshold1Modal)
		end)

		it("should signal for U13MonthlyThreshold2Modal", function()
			checkScaryModalConfirmed(PromptState.U13MonthlyThreshold2Modal)
		end)

		it("should signal for ParentalConsentWarningPaymentModal13To17", function()
			checkScaryModalConfirmed(PromptState.ParentalConsentWarningPaymentModal13To17)
		end)
	end)
end
