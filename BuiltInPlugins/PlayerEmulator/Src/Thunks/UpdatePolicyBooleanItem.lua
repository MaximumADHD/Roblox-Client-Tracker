local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local UpdatePolicySettingStatus = require(Plugin.Src.Actions.UpdatePolicySettingStatus)

return function(key, value, plugin)
	return function(store)
		local state = store:getState()
		local allPolicies = state.Policies.allPolicies
		local policySettingStatus = state.Policies.policySettingStatus

		if allPolicies[key] ~= nil then
			policySettingStatus[key] = value
			plugin:SetSetting(Constants.POLICY_SETTING_KEY, policySettingStatus)
			PlayerEmulatorService:SetEmulatedPolicyInfo(policySettingStatus)
			store:dispatch(UpdatePolicySettingStatus(policySettingStatus))
		end
	end
end