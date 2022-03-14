local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(nil, {
	TargetChannelDisplayNameChanged = function(_, action: table): string
		return action.targetChannelDisplayName
	end,
})
