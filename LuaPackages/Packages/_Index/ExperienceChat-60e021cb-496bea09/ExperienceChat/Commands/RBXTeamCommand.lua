--!strict
local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/Command/Team")

local CommandTypes = require(script.Parent.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/team", "/t" },
	clientRun = function(store, _, _)
		local character = store:getState().LocalCharacter
		if character then
			local team = Players:GetPlayerFromCharacter(character).Team
			if not team then
				Logger:debug("Could not team chat because not in team")
				return {
					key = "CoreScripts.TextChat.TeamChat.Error.NotOnTeam",
					metadata = "Roblox.Team.Error.CannotTeamChatIfNotInTeam",
				}
			end
		end
		return nil
	end,
}

return command
