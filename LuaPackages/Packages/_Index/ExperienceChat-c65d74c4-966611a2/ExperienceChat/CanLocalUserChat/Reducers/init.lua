local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	byFetchPrivacySettingsSuccess = require(script.byFetchPrivacySettingsSuccess),
	byFetchPrivacySettingsFailed = require(script.byFetchPrivacySettingsFailed),
})
