--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Version = require(ExperienceChat.Version)
local CommandTypes = require(script.Parent.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/version", "/v" },
	clientRun = function()
		return {
			key = "GameChat_GetVersion_Message",
			metadata = "Roblox.Version.Info.Success",
			args = {
				RBX_NUMBER = { Version[1], Version[2] },
			},
		}
	end,
	serverRun = nil,
}

return command
