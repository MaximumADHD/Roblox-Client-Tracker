local VCSM = require(script.Parent.VoiceChatServiceManager)

export type MethodOfAbuse = "voice" | "text" | "other"
local MethodsOfAbuse: {
	voice: "voice",
	text: "text",
	other: "other",
} = {
	voice = "voice",
	text = "text",
	other = "other",
}

function GetDefaultMethodOfAbuse(
	player: { UserId: number } | nil,
	VoiceChatServiceManager: VCSM.VoiceChatServiceManager
): MethodOfAbuse
	if player then
		-- Case if the user reports someone from the report menu
		local voiceData = VoiceChatServiceManager:getRecentUsersInteractionData()
		local userId = tostring(player.UserId)
		local playerUsedVoice = voiceData[userId]
		return if playerUsedVoice then MethodsOfAbuse.voice else MethodsOfAbuse.text
	else
		-- Default case if the user navigates to the report menu
		local userBlockedPlayers = VoiceChatServiceManager:GetMutedAnyone()
		return if userBlockedPlayers then MethodsOfAbuse.voice else MethodsOfAbuse.text
	end
end

return {
	MethodsOfAbuse = MethodsOfAbuse,
	GetDefaultMethodOfAbuse = GetDefaultMethodOfAbuse,
}
