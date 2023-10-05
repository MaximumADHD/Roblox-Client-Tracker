local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ConfigurationObjectsLoaded",
	bubbleChatSettings: { [string]: any },
	chatWindowSettings: { [string]: any },
	chatInputBarSettings: { [string]: any },
}

return Rodux.makeActionCreator(script.Name, function(info)
	return {
		bubbleChatSettings = info.bubbleChatSettings or {},
		chatWindowSettings = info.chatWindowSettings or {},
		chatInputBarSettings = info.chatInputBarSettings or {},
	}
end)
