local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "TargetTextChannelPropertyChanged",
	textChannel: TextChannel?,
}

return Rodux.makeActionCreator(script.Name, function(textChannel: TextChannel?)
	return {
		textChannel = textChannel,
	}
end)
