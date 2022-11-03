local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Set = require(Packages.llama).Set

local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local channelsWithWelcomeSentCache = {}

return function(textChatMessage: TextChatMessage, localPlayer: Player)
	if textChatMessage.TextChannel and string.find(textChatMessage.TextChannel.Name, "^RBXWhisper") then
		if not Set.has(channelsWithWelcomeSentCache, textChatMessage.TextChannel) then
			local displayNameOrUsername = getOtherDisplayNameInWhisperChannel(textChatMessage.TextChannel, localPlayer)
			channelsWithWelcomeSentCache = Set.add(channelsWithWelcomeSentCache, textChatMessage.TextChannel)
			return {
				key = "CoreScripts.TextChat.Notification.WhisperChat.Created",
				args = { RBX_NAME = displayNameOrUsername },
				metadata = "Roblox.Whisper.Welcome.Sent",
			}
		else
			return {
				metadata = "Roblox.Whisper.Welcome.AlreadySent",
			}
		end
	end
	return nil
end
