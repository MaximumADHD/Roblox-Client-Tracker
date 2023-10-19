local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type VoiceState = "Inactive" | "Talking" | "Connecting" | "Muted" | "LOCAL_MUTED" | "Error" | "Hidden"

export type Action = {
	type: "VoiceStateChanged",
	userId: string,
	newState: VoiceState,
}

return Rodux.makeActionCreator(script.Name, function(userId: string | number, voiceState: VoiceState)
	return {
		userId = tostring(userId),
		newState = voiceState,
	}
end)
