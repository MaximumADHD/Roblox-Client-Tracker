local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local UpdatePolicySettingStatus = require(Plugin.Src.Actions.UpdatePolicySettingStatus)

return function(key, item, plugin)
	return function(store)
		local state = store:getState()
		local allPolicies = state.Policies.allPolicies
		local policySettingStatus = state.Policies.policySettingStatus

		if allPolicies[key] ~= nil and Cryo.List.find(allPolicies[key], item) ~= nil then
			if Cryo.List.find(policySettingStatus[key], item) then
				policySettingStatus[key] = Cryo.List.removeValue(policySettingStatus[key], item)
			else
				table.insert(policySettingStatus[key], item)
			end
			plugin:SetSetting(Constants.POLICY_SETTING_KEY, policySettingStatus)
			PlayerEmulatorService:SetEmulatedPolicyInfo(policySettingStatus)
			store:dispatch(UpdatePolicySettingStatus(policySettingStatus))
		end
	end
end