local FFlagPlayerEmulatorSerializeIntoDM2 = game:GetFastFlag("PlayerEmulatorSerializeIntoDM2")

local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local UpdatePolicySettingStatus = require(Plugin.Src.Actions.UpdatePolicySettingStatus)
local LoadAllPolicyValues = require(Plugin.Src.Actions.LoadAllPolicyValues)

local function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

return function(allPoliciesResponse, playerPolicyResponse, plugin)
	return function(store)
		local allPolicies = {}
		local policySettingStatus = {}

		local status = plugin:GetSetting(Constants.POLICY_SETTING_KEY) or {}

		for k, v in pairs(allPoliciesResponse) do
			if type(v) == "table" then
				table.sort(v)
			end
			allPolicies[firstToUpper(k)] = v

			if status[firstToUpper(k)] ~= nil then
				policySettingStatus[firstToUpper(k)] = status[firstToUpper(k)]
			elseif playerPolicyResponse[k] ~= nil then
				policySettingStatus[firstToUpper(k)] = playerPolicyResponse[k]
			else
				policySettingStatus[firstToUpper(k)] = v
			end
		end

		local sortedKeys = Cryo.Dictionary.keys(allPolicies)
		table.sort(sortedKeys)

		store:dispatch(LoadAllPolicyValues(allPolicies, sortedKeys))
		PlayerEmulatorService:SetEmulatedPolicyInfo(policySettingStatus)
		if not FFlagPlayerEmulatorSerializeIntoDM2 then
			plugin:SetSetting(Constants.POLICY_SETTING_KEY, policySettingStatus)
		end
		store:dispatch(UpdatePolicySettingStatus(policySettingStatus))
	end
end
