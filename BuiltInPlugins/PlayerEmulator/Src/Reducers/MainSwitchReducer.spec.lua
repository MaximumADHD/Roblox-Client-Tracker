local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)

local OnPlayerEmulationEnabledChanged = require(Plugin.Src.Actions.OnPlayerEmulationEnabledChanged)
local MainSwitchReducer = require(Plugin.Src.Reducers.MainSwitchReducer)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(MainSwitchReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().mainSwitchEnabled)).to.equal("boolean")
	end)

	describe("OnPlayerEmulationEnabledChanged", function()
		it("should change enabled status to true", function()
			local enabled = true
			local state = MainSwitchReducer(nil, OnPlayerEmulationEnabledChanged(enabled))
			expect(state.mainSwitchEnabled).to.be.ok()
			expect(type(state.mainSwitchEnabled)).to.equal("boolean")
			expect(state.mainSwitchEnabled).to.equal(enabled)
		end)

		it("should change enabled status to false", function()
			local enabled = false
			local state = MainSwitchReducer(nil, OnPlayerEmulationEnabledChanged(enabled))
			expect(state.mainSwitchEnabled).to.be.ok()
			expect(type(state.mainSwitchEnabled)).to.equal("boolean")
			expect(state.mainSwitchEnabled).to.equal(enabled)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(MainSwitchReducer, OnPlayerEmulationEnabledChanged(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end