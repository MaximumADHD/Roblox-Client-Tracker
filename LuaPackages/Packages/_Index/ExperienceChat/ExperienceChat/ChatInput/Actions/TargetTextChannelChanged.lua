local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = { targetTextChannel: TextChannel }

return Rodux.makeActionCreator(script.Name, function(targetTextChannel: TextChannel): Action
	return {
		targetTextChannel = targetTextChannel,
	}
end)
