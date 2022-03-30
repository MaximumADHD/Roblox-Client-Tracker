--!strict
local getPlayersFromString = require(script.Parent.getPlayersFromString)
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local UserMuted = require(Actions.UserMuted)

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/mute", "/m" },
	clientRun = function(store, textSource, rawString)
		local words = string.split(rawString, " ")
		local name = words[2]
		if not name then
			return {
				key = "GameChat_MuteSpeaker_SpeakerDoesNotExist",
				args = {
					RBX_NAME = "",
				},
				metadata = "Roblox.Mute.Error.PlayerNotFound",
			}
		end

		local targetPlayers = getPlayersFromString(store:getState().Players, name)
		if #targetPlayers == 0 then
			return {
				key = "GameChat_MuteSpeaker_SpeakerDoesNotExist",
				args = {
					RBX_NAME = name,
				},
				metadata = "Roblox.Mute.Error.PlayerNotFound",
			}
		elseif #targetPlayers > 1 then
			return {
				key = "InGame.Chat.Response.DisplayNameMultipleMatches",
				args = {},
				metadata = "Roblox.Mute.Error.MultipleMatches",
			}
		else
			local targetPlayer = targetPlayers[1]
			if targetPlayer.userId == tostring(textSource.UserId) then
				return {
					key = "GameChat_DoMuteCommand_CannotMuteSelf",
					args = {},
					metadata = "Roblox.Mute.Error.CannotMuteSelf",
				}
			end

			store:dispatch(UserMuted(targetPlayer.userId))

			return {
				key = "GameChat_ChatMain_SpeakerHasBeenMuted",
				args = {
					RBX_NAME = name,
				},
				metadata = "Roblox.Mute.Info.Success",
			}
		end
	end,
	serverRun = nil,
}

return command
