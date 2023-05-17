local TextChatService = game:GetService("TextChatService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary
local Logger = require(ExperienceChat.Logger):new("ExpChat/Command/Whisper")

local Actions = ExperienceChat.Actions
local ChatInputBarActivatedWhisperMode = require(Actions.ChatInputBarActivatedWhisperMode)

local Commands = script:FindFirstAncestor("Commands")
local getAutocompletePlayersFromString = require(Commands.getAutocompletePlayersFromString)
local getNameFromWhisper = require(Commands.Whisper.getNameFromWhisper)
local CommandTypes = require(Commands.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/whisper", "/w" },
	clientRun = function(store, userId: number, rawText: string)
		local localUserId = userId

		local aliasList = store:getState().AutoCastCommands[script.Name]
		local displayNameOrUsername = getNameFromWhisper(rawText, aliasList)

		if displayNameOrUsername then
			local players = store:getState().Players
			local filteredPlayers = Dictionary.join(players, {
				byUserId = Dictionary.removeKey(players.byUserId, tostring(localUserId)),
			})

			local matchingPlayers = getAutocompletePlayersFromString(filteredPlayers, displayNameOrUsername)
			if #matchingPlayers == 0 then
				Logger:debug("Autocomplete: No matches!")

				local localPlayerInfo = players.byUserId[tostring(localUserId)]
				if
					localPlayerInfo
					and (
						displayNameOrUsername == localPlayerInfo.displayName
						or displayNameOrUsername == "@" .. localPlayerInfo.username
					)
				then
					return {
						key = "GameChat_PrivateMessaging_CannotWhisperToSelf",
						args = nil,
						metadata = "Roblox.Whisper.Error.CannotWhisperToSelf",
					}
				end

				return {
					key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
					args = { RBX_NAME = if displayNameOrUsername then displayNameOrUsername else "" },
					metadata = "Roblox.Whisper.Error.TargetDoesNotExist",
				}
			elseif #matchingPlayers == 1 then
				local otherPlayer = matchingPlayers[1]

				local toWhisperUserIdNumber = tonumber(otherPlayer.userId)
				if toWhisperUserIdNumber then
					-- Whisper channel names are ascendening by string
					local whisperChannelName = string.format(
						"RBXWhisper:%d_%d",
						localUserId < toWhisperUserIdNumber and localUserId or toWhisperUserIdNumber,
						localUserId > toWhisperUserIdNumber and localUserId or toWhisperUserIdNumber
					)

					local whisperChannel = TextChatService:FindFirstChild(whisperChannelName, true)
					if not whisperChannel then
						local ExperienceChatStorage = RobloxReplicatedStorage:FindFirstChild("ExperienceChat")
						if ExperienceChatStorage then
							local WhisperChat = ExperienceChatStorage:FindFirstChild("WhisperChat")
							if WhisperChat and WhisperChat:IsA("RemoteFunction") then
								whisperChannel = WhisperChat:InvokeServer(otherPlayer.userId)

								if not whisperChannel then
									Logger:error("Could not create whisper channel for some reason.")
									return {
										key = "CoreScripts.TextChat.Whisper.Error.CannotChat",
										args = nil,
										metadata = "Roblox.Whisper.Error.Unknown",
									}
								end
							else
								Logger:error(
									"Could not create whisper channel because WhisperChat RemoteFunction is missing."
								)
								return {
									key = "",
									metadata = "Roblox.Whisper.Error.Unknown",
								}
							end
						else
							Logger:error(
								"Could not create whisper channel because RobloxReplicatedStorage.ExperienceChat is missing."
							)
							return {
								key = "",
								metadata = "Roblox.Whisper.Error.Unknown",
							}
						end
					end

					store:dispatch(ChatInputBarActivatedWhisperMode(whisperChannelName))

					return {
						key = "CoreScripts.TextChat.Notification.WhisperChat.Created",
						args = { RBX_NAME = displayNameOrUsername },
						metadata = "Roblox.Whisper.Info.Success",
					}
				end
			else
				Logger:debug("Autocomplete: Too many matches!")
				return {
					key = "CoreScripts.TextChat.Whisper.Error.CannotChat",
					metadata = "Roblox.Whisper.Error.TooManyMatches",
				}
			end
		end

		return {
			key = "",
			metadata = "Roblox.Whisper.Error.Unknown",
		}
	end,
}

return command
