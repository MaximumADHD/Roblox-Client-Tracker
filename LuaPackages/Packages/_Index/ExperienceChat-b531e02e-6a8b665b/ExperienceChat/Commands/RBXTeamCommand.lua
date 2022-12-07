local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/Command/Team")

local Actions = ExperienceChat.Actions
local ChatInputBarActivatedTeamMode = require(Actions.ChatInputBarActivatedTeamMode)

local CommandTypes = require(script.Parent.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/team", "/t", "%%" },
	clientRun = function(store, _, _)
		local team = store:getState().LocalTeam
		if team then
			store:dispatch(ChatInputBarActivatedTeamMode())

			return {
				key = "",
				metadata = "Roblox.Team.Info.Success",
			}
		end

		Logger:debug("Could not team chat because not in team")
		return {
			key = "CoreScripts.TextChat.TeamChat.Error.NotOnTeam",
			metadata = "Roblox.Team.Error.CannotTeamChatIfNotInTeam",
		}
	end,
}

return command
