return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
	local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local Network = require(Root.Services.Network)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local MockNetwork = require(Root.Test.MockNetwork)
	local Thunk = require(Root.Thunk)

	local resolvePremiumPromptState = require(script.Parent.resolvePremiumPromptState)

	local function getTestProductInfo()
		return {
			premiumFeatureTypeName = "Subscription",
			mobileProductId = "com.roblox.robloxmobile.RobloxPremium450",
			description = "Roblox Premium 450",
			price = 4.99,
			currencySymbol = "$",
			isSubscriptionOnly = false,
			robuxAmount = 450
		}
	end

	local function getTestAccountInfoDetails()
		return {
			isPremium = false,
		}
	end

	local function getTestBalanceDetails()
		return {
			robux = 10
		}
	end

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk = resolvePremiumPromptState(accountInfo, balanceInfo, productInfo)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
			}, true),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()
		expect(state.premiumProductInfo.mobileProductId).never.toBeNil()
		expect(state.accountInfo.membershipType).never.toBeNil()
	end)

	it("should resolve state to Error if failed to get premium products", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()

		local productInfo = nil
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk = resolvePremiumPromptState(accountInfo, balanceInfo, productInfo)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(mockAnalytics.spies.signalPremiumUpsellInvalidProducts).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)
	end)

	it("should resolve state to Error if invalid platform (XBOX)", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()

		local productInfo = nil
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk = resolvePremiumPromptState(accountInfo, balanceInfo, productInfo)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, Enum.Platform.XBoxOne),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(mockAnalytics.spies.signalPremiumUpsellInvalidPlatform).toHaveBeenCalledTimes(1)
		expect(state.promptState).toBe(PromptState.Error)
	end)

	it("should show the upsell given correct data", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk = resolvePremiumPromptState(accountInfo, balanceInfo, productInfo, true)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(mockAnalytics.spies.signalPremiumUpsellShownNonPremium).toHaveBeenCalledTimes(1)
		expect(mockAnalytics.spies.signalPremiumUpsellInvalidProducts).never.toHaveBeenCalled()
		expect(state.promptState).toBe(PromptState.PremiumUpsell)
	end)

	it("should complete the request and show nothing when failing precheck", function()
		local store = Rodux.Store.new(Reducer, {})

		local mockAnalytics = MockAnalytics.new()

		local productInfo = getTestProductInfo()
		local accountInfo = getTestAccountInfoDetails()
		local balanceInfo = getTestBalanceDetails()
		local thunk = resolvePremiumPromptState(accountInfo, balanceInfo, productInfo, false)

		Thunk.test(thunk, store, {
			[Analytics] = mockAnalytics.mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(mockAnalytics.spies.signalPremiumUpsellPrecheckFail).toHaveBeenCalledTimes(1)
		expect(mockAnalytics.spies.signalPremiumUpsellShownNonPremium).never.toHaveBeenCalled()
		expect(state.promptState).toBe(PromptState.None)
	end)
end
