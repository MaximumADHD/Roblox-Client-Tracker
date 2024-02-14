local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "LegacyBubbleTextUpdated",
	messageId: string,
	newText: string,
}

return Rodux.makeActionCreator(script.Name, function(messageId: string, newText: string)
	return {
		messageId = messageId,
		newText = newText,
	}
end)
