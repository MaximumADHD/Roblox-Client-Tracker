--!strict

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/help", "/?" },
	clientRun = function()
		return {
			key = "CoreScripts.TextChat.Help.FirstLine",
			metadata = "Roblox.Help.Info",
			args = nil,
		}
	end,
}

return command
