return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PromptState = require(Root.Enums.PromptState)
	local WindowState = require(Root.Enums.WindowState)
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

	local openSecuritySettings = require(script.Parent.openSecuritySettings)

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

	local function checkDesktop(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(openSecuritySettings(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalTwoSVSettingsErrorConfirmed).toHaveBeenCalledTimes(1)
		expect(platformInterface.spies.openSecuritySettings).toHaveBeenCalledTimes(1)
		expect(state.windowState).toBe(WindowState.Hidden)
	end

	it("should run without errors on Windows", function()
		checkDesktop(Enum.Platform.Windows)
	end)

	it("should run without errors on OSX", function()
		checkDesktop(Enum.Platform.OSX)
	end)

	local function checkMobile(platform)
		local store = Rodux.Store.new(Reducer, getDefaultState())

		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(openSecuritySettings(), store, {
			[Analytics] = analytics.mockService,
			[Network] = MockNetwork.new(),
			[PlatformInterface] = platformInterface.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, platform)
		})

		local state = store:getState()

		expect(analytics.spies.signalTwoSVSettingsErrorConfirmed).never.toHaveBeenCalled()
		expect(platformInterface.spies.openSecuritySettings).never.toHaveBeenCalled()
		expect(state.windowState).toBe(WindowState.Hidden)
	end

	it("should run without errors on IOS", function()
		checkMobile(Enum.Platform.IOS)
	end)

	it("should run without errors on Android", function()
		checkMobile(Enum.Platform.Android)
	end)

	it("should run without errors on UWP", function()
		checkMobile(Enum.Platform.UWP)
	end)

	it("should run without errors on XBoxOne", function()
		checkMobile(Enum.Platform.XBoxOne)
	end)
end
