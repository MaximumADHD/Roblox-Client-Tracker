return function()
	local Root = script.Parent.Parent

	local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
	local Rodux = PurchasePromptDeps.Rodux

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

	it("should populate store with provided info", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePremiumPromptState(accountInfo, productInfo)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {
			}, true),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.premiumProductInfo.mobileProductId).to.be.ok()
		expect(state.accountInfo.membershipType).to.be.ok()
	end)

	it("should resolve state to Error if failed to get premium products", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = nil
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePremiumPromptState(accountInfo, productInfo)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}, true),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.Error)
	end)

	it("should show the upsell given correct data", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePremiumPromptState(accountInfo, productInfo, true)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.PremiumUpsell)
	end)

	it("should complete the request and show nothing when failing precheck", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePremiumPromptState(accountInfo, productInfo, false)

		Thunk.test(thunk, store, {
			[Analytics] = MockAnalytics.new().mockService,
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[Network] = MockNetwork.new(),
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.None)
	end)
end
