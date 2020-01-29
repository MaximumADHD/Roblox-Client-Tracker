return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local ExternalSettings = require(Root.Services.ExternalSettings)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local MockExternalSettings = require(Root.Test.MockExternalSettings)
	local MockPlatformInterface = require(Root.Test.MockPlatformInterface)
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
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[PlatformInterface] = MockPlatformInterface.new().mockService,
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
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[PlatformInterface] = MockPlatformInterface.new().mockService,
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.Error)
	end)

	it("should resolve state to PremiumUpsell if account meets requirements and premium product is valid", function()
		local store = Rodux.Store.new(Reducer, {})

		local productInfo = getTestProductInfo()
		local accountInfo = {
			RobuxBalance = 10,
			MembershipType = 0,
		}
		local thunk = resolvePremiumPromptState(accountInfo, productInfo)

		Thunk.test(thunk, store, {
			[ExternalSettings] = MockExternalSettings.new(false, false, {}),
			[PlatformInterface] = MockPlatformInterface.new().mockService,
		})

		local state = store:getState()

		expect(state.promptState).to.equal(PromptState.PremiumUpsell)
	end)
end