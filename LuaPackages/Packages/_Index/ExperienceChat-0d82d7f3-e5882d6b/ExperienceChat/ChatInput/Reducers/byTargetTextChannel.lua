local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(nil, {
	TargetTextChannelChanged = function(_, action: table): string
		return action.TargetTextChannel
	end,
})
