local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Version = require(ExperienceChat.Version)
local CommandTypes = require(script.Parent.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/version", "/v" },
	clientRun = function()
		return {
			key = "CoreScripts.TextChat.Version.Success",
			metadata = "Roblox.Version.Info.Success",
			args = {
				RBX_VERSION = string.format("%s (%s)", Version[1], Version[2]),
			},
		}
	end,
}

return command
