return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local Reducer = require(script.Parent.Parent.Reducers.Reducer)

	local MockPlatformInterface = require(script.Parent.Parent.Test.MockPlatformInterface)
	local MockExternalSettings = require(script.Parent.Parent.Test.MockExternalSettings)

	local PlatformInterface = require(script.Parent.Parent.Services.PlatformInterface)
	local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

	local PromptState = require(script.Parent.Parent.PromptState)
	local Thunk = require(script.Parent.Parent.Thunk)

	local launchBuildersClubUpsell = require(script.Parent.launchBuildersClubUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = launchBuildersClubUpsell()
		local externalSettings = MockExternalSettings.new(false, false, false, false)
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(thunk, store, {
			[ExternalSettings] = externalSettings,
			[PlatformInterface] = platformInterface,
		})

		local state = store:getState()

		expect(platformInterface.startBuildersClubUpsellWeb_callCount).to.equal(1)
		expect(state.promptState).to.equal(PromptState.UpsellInProgress)
	end)
end