local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(false, {
	ChatPrivacySettingsFetchFailed = function(_, _)
		return false
	end,
})
