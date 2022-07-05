local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(false, {
	ChatPrivacySettingsReceived = function(_, action)
		return action.canUserChat
	end,
})
