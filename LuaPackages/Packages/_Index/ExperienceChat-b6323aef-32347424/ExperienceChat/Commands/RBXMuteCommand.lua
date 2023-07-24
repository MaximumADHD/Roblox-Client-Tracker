local getPlayersFromString = require(script.Parent.getPlayersFromString)
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local UserMuted = require(Actions.UserMuted)

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/mute", "/m" },
	clientRun = function(store, userId, rawString)
		local words = string.split(rawString, " ")
		local name = words[2]
		if not name then
			return {
				key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
				args = {
					RBX_NAME = "",
				},
				metadata = "Roblox.Mute.Error.PlayerNotFound",
			}
		end

		local targetPlayers = getPlayersFromString(store:getState().Players, name)
		if #targetPlayers == 0 then
			return {
				key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
				args = {
					RBX_NAME = name,
				},
				metadata = "Roblox.Mute.Error.PlayerNotFound",
			}
		elseif #targetPlayers > 1 then
			return {
				key = "CoreScripts.TextChat.Mute.Error.MultipleMatches",
				args = {},
				metadata = "Roblox.Mute.Error.MultipleMatches",
			}
		else
			local targetPlayer = targetPlayers[1]
			if targetPlayer.userId == tostring(userId) then
				return {
					key = "CoreScripts.TextChat.Mute.Error.CannotMuteSelf",
					args = {},
					metadata = "Roblox.Mute.Error.CannotMuteSelf",
				}
			end

			store:dispatch(UserMuted(targetPlayer.userId))

			return {
				key = "CoreScripts.TextChat.Mute.Success",
				args = {
					RBX_NAME = targetPlayer.nameToDisplay,
				},
				metadata = "Roblox.Mute.Info.Success",
			}
		end
	end,
}

return command
