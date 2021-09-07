local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)

local OnCustomPolicyEnabledChanged = require(Plugin.Src.Actions.OnCustomPolicyEnabledChanged)
local OnCustomPolicySwitchEnabledChanged = require(Plugin.Src.Actions.OnCustomPolicySwitchEnabledChanged)
local OnEmulatedCountryRegionChanged = require(Plugin.Src.Actions.OnEmulatedCountryRegionChanged)

local CustomPolicySwitchReducer = require(Plugin.Src.Reducers.CustomPolicySwitchReducer)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(CustomPolicySwitchReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().customPolicySwitchEnabled)).to.equal("boolean")
		expect(type(r:getState().customPoliciesEnabled)).to.equal("boolean")
		expect(type(r:getState().customPolicySwitchActive)).to.equal("boolean")
	end)

	describe("OnCustomPolicySwitchEnabledChanged", function()
		it("should change enabled status to true", function()
			local enabled = true
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicySwitchEnabledChanged(enabled))
			expect(state.customPolicySwitchEnabled).to.be.ok()
			expect(type(state.customPolicySwitchEnabled)).to.equal("boolean")
			expect(state.customPolicySwitchEnabled).to.equal(enabled)
		end)

		it("should change enabled status to false", function()
			local enabled = false
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicySwitchEnabledChanged(enabled))
			expect(state.customPolicySwitchEnabled).to.be.ok()
			expect(type(state.customPolicySwitchEnabled)).to.equal("boolean")
			expect(state.customPolicySwitchEnabled).to.equal(enabled)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CustomPolicySwitchReducer, OnCustomPolicySwitchEnabledChanged(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("OnCustomPolicyEnabledChanged", function()
		it("should change enabled status to true", function()
			local enabled = true
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicyEnabledChanged(enabled))
			expect(state.customPoliciesEnabled).to.be.ok()
			expect(type(state.customPoliciesEnabled)).to.equal("boolean")
			expect(state.customPoliciesEnabled).to.equal(enabled)
		end)

		it("should change enabled status to false", function()
			local enabled = false
			local state = CustomPolicySwitchReducer(nil, OnCustomPolicyEnabledChanged(enabled))
			expect(state.customPoliciesEnabled).to.be.ok()
			expect(type(state.customPoliciesEnabled)).to.equal("boolean")
			expect(state.customPoliciesEnabled).to.equal(enabled)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CustomPolicySwitchReducer, OnCustomPolicyEnabledChanged(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
	
	describe("OnEmulatedCountryRegionChanged", function()
		it("should set switch to active when region is CN", function()
			local state = CustomPolicySwitchReducer(nil, OnEmulatedCountryRegionChanged("CN"))
			expect(state.customPolicySwitchActive).to.be.ok()
			expect(type(state.customPolicySwitchActive)).to.equal("boolean")
			expect(state.customPolicySwitchActive).to.equal(true)
		end)
		it("should set switch to not active when region is not CN", function()
			local state = CustomPolicySwitchReducer(nil, OnEmulatedCountryRegionChanged("XYZ"))
			expect(state.customPolicySwitchActive).to.be.ok()
			expect(type(state.customPolicySwitchActive)).to.equal("boolean")
			expect(state.customPolicySwitchActive).to.equal(false)
		end)
		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CustomPolicySwitchReducer, OnEmulatedCountryRegionChanged("CN"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
