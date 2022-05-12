--!strict

local CommandTypes = require(script.Parent.types)
local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/help", "/?" },
	clientRun = function()
		return {
			key = "GameChat_ChatCommandsTeller_Desc",
			metadata = "Roblox.Help.Info",
			args = nil,
		}
	end,
}

return command
