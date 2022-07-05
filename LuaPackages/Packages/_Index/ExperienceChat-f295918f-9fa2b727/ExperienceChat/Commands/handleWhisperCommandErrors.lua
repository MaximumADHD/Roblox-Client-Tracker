local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local displaySystemMessage = require(ExperienceChat.displaySystemMessage)
local getPlayersFromString = require(ExperienceChat.Commands.getPlayersFromString)

local function handleWhisperCommandErrors(
	unSanitizedName: string,
	players: any,
	localPlayerUserId: number,
	translator: Translator,
	defaultSystemTextChannel: TextChannel
)
	if not players or not unSanitizedName then
		return
	end

	-- Gets all characters before the space that separates name and message
	local name = string.match(unSanitizedName, "(%S+)%s*")

	local systemMessageResponse: {
		key: string | { string },
		args: any?,
		metadata: string,
	} | nil

	local matchingPlayers = getPlayersFromString(players, name)
	if #matchingPlayers == 0 then
		systemMessageResponse = {
			key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
			args = { RBX_NAME = if name then name else "" },
			metadata = "Roblox.Whisper.Error.TargetDoesNotExist",
		}
	elseif #matchingPlayers == 1 then
		local player = matchingPlayers[1]
		if localPlayerUserId and player.userId == tostring(localPlayerUserId) then
			systemMessageResponse = {
				key = "GameChat_PrivateMessaging_CannotWhisperToSelf",
				args = nil,
				metadata = "Roblox.Whisper.Error.CannotWhisperToSelf",
			}
		else
			systemMessageResponse = {
				key = "CoreScripts.TextChat.Whisper.Error.CannotChat",
				args = nil,
				metadata = "Roblox.Whisper.Error.CannotChat",
			}
		end
	end

	if systemMessageResponse and translator and defaultSystemTextChannel then
		displaySystemMessage(
			systemMessageResponse.key,
			systemMessageResponse.args,
			systemMessageResponse.metadata,
			translator,
			defaultSystemTextChannel
		)
	end

	return systemMessageResponse
end

return handleWhisperCommandErrors
