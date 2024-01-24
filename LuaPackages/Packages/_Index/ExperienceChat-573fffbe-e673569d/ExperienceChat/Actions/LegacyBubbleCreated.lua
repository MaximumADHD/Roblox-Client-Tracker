local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "LegacyBubbleCreated",
	messageData: any,
}

return Rodux.makeActionCreator(script.Name, function(messageData: any)
	return {
		messageData = messageData,
	}
end)
