local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(true, {
	ChatInputBarConfigurationEnabled = function(_, action: table): boolean
		return action.enabled
	end,
	ChatTopBarButtonActivated = function(_, action: table): boolean
		return action.isVisible
	end,
})
