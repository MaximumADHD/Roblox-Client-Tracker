return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local Analytics = require(Root.Services.Analytics)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local MockAnalytics = require(Root.Test.MockAnalytics)
	local MockPlatformInterface = require(Root.Test.MockPlatformInterface)
	local Constants = require(Root.Misc.Constants)
	local Thunk = require(Root.Thunk)

	local GetFFlagAdultConfirmationEnabled = require(Root.Flags.GetFFlagAdultConfirmationEnabled)
	local GetFFlagAdultConfirmationEnabledNew = require(Root.Flags.GetFFlagAdultConfirmationEnabledNew)

	local launchRobuxUpsell = require(script.Parent.launchRobuxUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer, {
			accountInfo = {
				AgeBracket = 0,
			},
			promptState = PromptState.PromptPurchase,
		})

		local thunk = launchRobuxUpsell()
		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(thunk, store, {
			[Analytics] = analytics.mockService,
			[PlatformInterface] = platformInterface.mockService,
		})

		local state = store:getState()

		if not settings():GetFFlag("ChinaLicensingApp") then
			expect(analytics.spies.reportRobuxUpsellStarted.callCount).to.equal(1)
			expect(platformInterface.spies.startRobuxUpsellWeb.callCount).to.equal(1)
			expect(state.promptState).to.equal(PromptState.UpsellInProgress)
		end
	end)

	if GetFFlagAdultConfirmationEnabledNew() then
		it("should show adult legal text if under 13", function()
			local store = Rodux.Store.new(Reducer, {
				accountInfo = {
					AgeBracket = 1,
				},
				promptState = PromptState.PromptPurchase,
			})

			local thunk = launchRobuxUpsell()
			local analytics = MockAnalytics.new()
			local platformInterface = MockPlatformInterface.new()

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
				[PlatformInterface] = platformInterface.mockService,
			})

			local state = store:getState()

			expect(analytics.spies.signalAdultLegalTextShown.callCount).to.equal(1)
			expect(state.promptState).to.equal(PromptState.AdultConfirmation)
		end)
	end

	if GetFFlagAdultConfirmationEnabled() then
		it("should show adult legal text if under 13 and part of ab test", function()
			local store = Rodux.Store.new(Reducer, {
				accountInfo = {
					AgeBracket = 1,
				},
				promptState = PromptState.PromptPurchase,
				abVariations = {
					[Constants.ABTests.ADULT_CONFIRMATION] = "Variation1",
				}
			})

			local thunk = launchRobuxUpsell()
			local analytics = MockAnalytics.new()
			local platformInterface = MockPlatformInterface.new()

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
				[PlatformInterface] = platformInterface.mockService,
			})

			local state = store:getState()

			expect(analytics.spies.signalAdultLegalTextShown.callCount).to.equal(1)
			expect(state.promptState).to.equal(PromptState.AdultConfirmation)
		end)

		it("should continue as normal if under 13 and not apart of ab test", function()
			local store = Rodux.Store.new(Reducer, {
				accountInfo = {
					AgeBracket = 1,
				},
				promptState = PromptState.PromptPurchase,
				abVariations = {
					[Constants.ABTests.ADULT_CONFIRMATION] = "Control",
				}
			})

			local thunk = launchRobuxUpsell()
			local analytics = MockAnalytics.new()
			local platformInterface = MockPlatformInterface.new()

			Thunk.test(thunk, store, {
				[Analytics] = analytics.mockService,
				[PlatformInterface] = platformInterface.mockService,
			})

			local state = store:getState()

			if not settings():GetFFlag("ChinaLicensingApp") then
				expect(analytics.spies.reportRobuxUpsellStarted.callCount).to.equal(1)
				expect(platformInterface.spies.startRobuxUpsellWeb.callCount).to.equal(1)
				expect(state.promptState).to.equal(PromptState.UpsellInProgress)
			end
		end)
	end
end
