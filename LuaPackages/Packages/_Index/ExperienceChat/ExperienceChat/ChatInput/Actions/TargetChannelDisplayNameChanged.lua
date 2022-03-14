local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = { targetChannelDisplayName: string }

return Rodux.makeActionCreator(script.Name, function(targetChannelDisplayName: string): Action
	return {
		targetChannelDisplayName = targetChannelDisplayName,
	}
end)
