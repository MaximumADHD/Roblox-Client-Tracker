local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "LegacyBubbleChatSettingsChanged",
	chatSettings: any,
}

return Rodux.makeActionCreator(script.Name, function(chatSettings: any)
	return {
		chatSettings = chatSettings,
	}
end)
