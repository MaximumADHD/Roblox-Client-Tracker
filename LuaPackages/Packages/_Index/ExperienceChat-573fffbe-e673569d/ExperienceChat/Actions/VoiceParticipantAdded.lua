local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "VoiceParticipantAdded",
	userId: string,
}

return Rodux.makeActionCreator(script.Name, function(userId: string | number)
	return {
		userId = tostring(userId),
	}
end)
