local processCommands = script:FindFirstAncestor("processCommands")
local SystemMessages = require(processCommands.Utils.SystemMessages)

return function(_, command, _)
	if command == "help" then
		return SystemMessages.Help
	end
end
