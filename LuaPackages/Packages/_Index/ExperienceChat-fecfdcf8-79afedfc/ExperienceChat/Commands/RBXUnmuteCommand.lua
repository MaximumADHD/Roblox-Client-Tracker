local getPlayersFromString = require(script.Parent.getPlayersFromString)
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local UserUnmuted = require(Actions.UserUnmuted)

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/unmute", "/um" },
	clientRun = function(store, userId, rawString)
		local words = string.split(rawString, " ")
		local name = words[2]
		if not name then
			return {
				key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
				args = {
					RBX_NAME = "",
				},
				metadata = "Roblox.Unmute.Error.PlayerNotFound",
			}
		end

		local targetPlayers = getPlayersFromString(store:getState().Players, name)
		if #targetPlayers == 0 then
			return {
				key = "CoreScripts.TextChat.Mute.Error.TargetDoesNotExist",
				args = {
					RBX_NAME = name,
				},
				metadata = "Roblox.Unmute.Error.PlayerNotFound",
			}
		elseif #targetPlayers > 1 then
			return {
				key = "InGame.Chat.Response.DisplayNameMultipleMatches",
				args = {},
				metadata = "Roblox.Unmute.Error.MultipleMatches",
			}
		else
			local targetPlayer = targetPlayers[1]
			if targetPlayer.userId == tostring(userId) then
				return {
					key = "CoreScripts.TextChat.Mute.Error.CannotMuteSelf",
					args = {},
					metadata = "Roblox.Unmute.Error.CannotMuteSelf",
				}
			end

			store:dispatch(UserUnmuted(targetPlayer.userId))

			return {
				key = "CoreScripts.TextChat.Unmute.Success",
				args = {
					RBX_NAME = targetPlayer.nameToDisplay,
				},
				metadata = "Roblox.Unmute.Info.Success",
			}
		end
	end,
}

return command
