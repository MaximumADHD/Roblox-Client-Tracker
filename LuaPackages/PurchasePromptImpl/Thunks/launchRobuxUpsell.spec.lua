return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local MockAnalytics = require(script.Parent.Parent.Test.MockAnalytics)
	local MockPlatformInterface = require(script.Parent.Parent.Test.MockPlatformInterface)

	local Analytics = require(script.Parent.Parent.Services.Analytics)
	local PlatformInterface = require(script.Parent.Parent.Services.PlatformInterface)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local launchRobuxUpsell = require(script.Parent.launchRobuxUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = launchRobuxUpsell()
		local analytics = MockAnalytics.new()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(thunk, store, {
			[Analytics] = analytics,
			[PlatformInterface] = platformInterface,
		})

		local state = store:getState()

		expect(analytics.reportRobuxUpsellStarted_callCount).to.equal(1)
		expect(platformInterface.startRobuxUpsellWeb_callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end)
end