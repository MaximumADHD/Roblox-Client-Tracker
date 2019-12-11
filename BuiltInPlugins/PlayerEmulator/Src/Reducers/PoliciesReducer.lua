local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)
local deepJoin = require(Plugin.Src.Util.deepJoin)

return Rodux.createReducer({
	allPolicies = {},
	allPolicySortedKeys = {},
	policySettingStatus = {},
}, {
	LoadAllPolicyValues = function(state, action)
		local allPolicies = action.allPolicies
		local allPolicySortedKeys = action.allPolicySortedKeys

		return Cryo.Dictionary.join(state, {
			allPolicies = allPolicies,
			allPolicySortedKeys = allPolicySortedKeys,
		})
	end,

	UpdatePolicySettingStatus = function(state, action)
		local policySettingStatus = action.policySettingStatus

		return deepJoin(state, {
			policySettingStatus = policySettingStatus,
		})
	end,
})