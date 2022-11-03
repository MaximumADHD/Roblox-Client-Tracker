local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ChatInputBarActivatedWhisperMode",
	channelName: string,
}

return Rodux.makeActionCreator(script.Name, function(channelName: string)
	return {
		channelName = channelName,
	}
end)
