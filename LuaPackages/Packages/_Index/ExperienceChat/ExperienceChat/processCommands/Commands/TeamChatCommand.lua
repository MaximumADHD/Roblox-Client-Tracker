local Players = game:GetService("Players")

local processCommands = script:FindFirstAncestor("processCommands")
local SystemMessages = require(processCommands.Utils.SystemMessages)

local Player = Players.LocalPlayer

return function(_, command, _)
	if command == "t" or command == "team" then
		if not Player.Team then
			return SystemMessages.TeamChatUserNotInTeam
		end
	end
end
