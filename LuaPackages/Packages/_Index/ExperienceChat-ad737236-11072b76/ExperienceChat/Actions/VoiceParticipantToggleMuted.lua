local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "VoiceParticipantToggleMuted",
	userId: string,
	isMuted: boolean,
}

return Rodux.makeActionCreator(script.Name, function(userId: string | number, isMuted: boolean)
	return {
		userId = tostring(userId),
		isMuted = isMuted,
	}
end)
