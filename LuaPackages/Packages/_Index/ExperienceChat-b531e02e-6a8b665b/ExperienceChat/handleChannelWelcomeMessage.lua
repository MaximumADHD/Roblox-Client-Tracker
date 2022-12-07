local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Set = require(Packages.llama).Set

local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local channelsWithWelcomeSentCache = {}

type WelcomeMessageResponse = {
	key: string,
	args: { RBX_NAME: string },
	metadata: string,
}
return function(textChatMessage: TextChatMessage, localPlayer: Player): WelcomeMessageResponse?
	if textChatMessage.TextChannel and string.find(textChatMessage.TextChannel.Name, "^RBXWhisper") then
		if not Set.has(channelsWithWelcomeSentCache, textChatMessage.TextChannel) then
			local displayNameOrUsername = getOtherDisplayNameInWhisperChannel(textChatMessage.TextChannel, localPlayer)
			if displayNameOrUsername then
				channelsWithWelcomeSentCache = Set.add(channelsWithWelcomeSentCache, textChatMessage.TextChannel)
				return {
					key = "CoreScripts.TextChat.Notification.WhisperChat.Created",
					args = { RBX_NAME = displayNameOrUsername },
					metadata = "Roblox.Whisper.Welcome.Sent",
				}
			end
		end
	end

	return nil
end
