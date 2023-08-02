local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ChatPrivacySettingsReceived",
	canUserChat: string,
}

return Rodux.makeActionCreator(script.Name, function(canUserChat: boolean)
	return {
		canUserChat = canUserChat,
	}
end)
