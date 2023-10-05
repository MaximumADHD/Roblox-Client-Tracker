local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: string,
	textChannel: TextChannel,
}

return Rodux.makeActionCreator(script.Name, function(textChannel: TextChannel)
	return {
		textChannel = textChannel,
	}
end)
