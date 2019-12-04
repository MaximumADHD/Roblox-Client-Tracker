local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)
local deepJoin = require(Plugin.Src.Util.deepJoin)

local POLICY_SETTING_KEY = "PlayerEmulatorPlugin"

local function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

return Rodux.createReducer({
	allPolicies = {},
	allPolicySortedKeys = {},
	policySettingStatus = {},
}, {
	LoadPolicySettings = function(state, action)
		local allPoliciesResponse = action.allPoliciesResponse
		local playerPolicyResponse = action.playerPolicyResponse
		local plugin = action.plugin

		local localSettings = plugin:GetSetting(POLICY_SETTING_KEY) or {}

		local allPolicies = {}
		local policySettingStatus = {}

		for k, v in pairs(allPoliciesResponse) do
			if type(v) == "table" then
				table.sort(v)
			end
			allPolicies[firstToUpper(k)] = v

			if localSettings[firstToUpper(k)] ~= nil then
				policySettingStatus[firstToUpper(k)] = localSettings[firstToUpper(k)]
			elseif playerPolicyResponse[k] ~= nil then
				policySettingStatus[firstToUpper(k)] = playerPolicyResponse[k]
			else
				policySettingStatus[firstToUpper(k)] = v
			end
		end

		local sortedKeys = Cryo.Dictionary.keys(allPolicies)
		table.sort(sortedKeys)

		return Cryo.Dictionary.join(state, {
			allPolicies = allPolicies,
			allPolicySortedKeys = sortedKeys,
			policySettingStatus = policySettingStatus,
		})
	end,

	UpdatePolicyBooleanItem = function(state, action)
		local key = action.key
		local value = action.value
		local plugin = action.plugin

		local allPolicies = state.allPolicies
		local policySettingStatus = state.policySettingStatus
		if allPolicies[key] ~=  nil then
			policySettingStatus[key] = value
			plugin:SetSetting(POLICY_SETTING_KEY, policySettingStatus)

			return deepJoin(state, {
				policySettingStatus = policySettingStatus,
			})
		end

		return state
	end,

	UpdatePolicyListItem = function(state, action)
		local key = action.key
		local item = action.item
		local plugin = action.plugin

		local allPolicies = state.allPolicies
		local policySettingStatus = state.policySettingStatus

		if allPolicies[key] ~= nil and Cryo.List.find(allPolicies[key], item) ~= nil then
			if Cryo.List.find(policySettingStatus[key], item) then
				policySettingStatus[key] = Cryo.List.removeValue(policySettingStatus[key], item)
			else
				table.insert(policySettingStatus[key], item)
			end
			plugin:SetSetting(POLICY_SETTING_KEY, policySettingStatus)

			return deepJoin(state, {
				policySettingStatus = policySettingStatus,
			})
		end

		return state
	end,
})