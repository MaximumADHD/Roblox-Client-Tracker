return function()
	local Root = script.Parent.Parent

	local LuaPackages = Root.Parent
	local Rodux = require(LuaPackages.Rodux)

	local PromptState = require(Root.Enums.PromptState)
	local Reducer = require(Root.Reducers.Reducer)
	local PlatformInterface = require(Root.Services.PlatformInterface)
	local MockPlatformInterface = require(Root.Test.MockPlatformInterface)
	local Thunk = require(Root.Thunk)

	local launchPremiumUpsell = require(script.Parent.launchPremiumUpsell)

	it("should run without errors", function()
		local store = Rodux.Store.new(Reducer)

		local thunk = launchPremiumUpsell()
		local platformInterface = MockPlatformInterface.new()

		Thunk.test(thunk, store, {
			[PlatformInterface] = platformInterface.mockService,
		})

		local state = store:getState()

		if not settings():GetFFlag("ChinaLicensingApp") then
			expect(platformInterface.spies.startPremiumUpsell.callCount).to.equal(1)
			expect(state.promptState).to.equal(PromptState.UpsellInProgress)
		end
	end)
end