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
	local Thunk = require(Root.Thunk)

	local launchRobuxUpsell = require(script.Parent.launchRobuxUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

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