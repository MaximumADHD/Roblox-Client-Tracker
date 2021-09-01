local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)

local OnCustomPolicyEnabledChanged = require(Plugin.Src.Actions.OnCustomPolicyEnabledChanged)
local CustomPolicySwitchReducer = require(Plugin.Src.Reducers.CustomPolicySwitchReducer)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(CustomPolicySwitchReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().customPolicySwitchEnabled)).to.equal("boolean")
	end)

	describe("OnCustomPolicyEnabledChanged", function()
		it("should change enabled status to true", function()
			local enabled = true
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicyEnabledChanged(enabled))
			expect(state.customPolicySwitchEnabled).to.be.ok()
			expect(type(state.customPolicySwitchEnabled)).to.equal("boolean")
			expect(state.customPolicySwitchEnabled).to.equal(enabled)
		end)

		it("should change enabled status to false", function()
			local enabled = false
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicyEnabledChanged(enabled))
			expect(state.customPolicySwitchEnabled).to.be.ok()
			expect(type(state.customPolicySwitchEnabled)).to.equal("boolean")
			expect(state.customPolicySwitchEnabled).to.equal(enabled)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CustomPolicySwitchReducer, OnCustomPolicyEnabledChanged(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
