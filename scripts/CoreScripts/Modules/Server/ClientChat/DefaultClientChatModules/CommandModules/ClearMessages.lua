--	// FileName: ClearMessages.lua
--	// Written by: TheGamer101
--	// Description: Command to clear the message log of the current channel.

local util = require(script.Parent:WaitForChild("Util"))

function ProcessMessage(message, ChatWindow, ChatSettings)
	if string.sub(message, 1, 4):lower() == "/cls" or string.sub(message, 1, 6):lower() == "/clear" then
		local currentChannel = ChatWindow:GetCurrentChannel()
		if (currentChannel) then
			currentChannel:ClearMessageLog()
		end
		return true
	end
	return false
end

return {
	[util.KEY_COMMAND_PROCESSOR_TYPE] = util.COMPLETED_MESSAGE_PROCESSOR,
	[util.KEY_PROCESSOR_FUNCTION] = ProcessMessage
}
