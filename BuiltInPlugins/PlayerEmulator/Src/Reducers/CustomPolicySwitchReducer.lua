local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

return Rodux.createReducer({
	customPolicySwitchEnabled = false,
	customPolicySwitchActive = false,
	customPoliciesEnabled = false
}, {
	OnCustomPolicySwitchEnabledChanged = function(state, action)
		local enabled = action.enabled
		
		return Cryo.Dictionary.join(state, {
			customPolicySwitchEnabled = enabled,
		})
	end,
	
	OnCustomPolicyEnabledChanged = function(state, action)
		local enabled = action.enabled

		return Cryo.Dictionary.join(state, {
			customPoliciesEnabled = enabled
		})
	end,
	
	OnEmulatedCountryRegionChanged = function(state, action)
		local code = action.countryRegionCode
		local customPolicySwitchActive = PlayerEmulatorService:regionCodeWillHaveAutomaticNonCustomPolicies(code)
		return Cryo.Dictionary.join(state, {
			customPolicySwitchActive = customPolicySwitchActive,
		})
	end,

})
