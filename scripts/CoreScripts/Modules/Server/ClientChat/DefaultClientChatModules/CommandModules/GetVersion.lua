--	// FileName: GetVersion.lua
--	// Written by: spotco
--	// Description: Command to print the chat version.

local util = require(script.Parent:WaitForChild("Util"))
local ChatConstants = require(script.Parent.Parent:WaitForChild("ChatConstants"))

local function ProcessMessage(message, ChatWindow, _)
	if string.sub(message, 1,  8):lower() == "/version" or string.sub(message, 1, 9):lower() == "/version " then
		util:SendSystemMessageToSelf(
			string.format("This game is running chat version [%d.%d.%s].",
				ChatConstants.MajorVersion,
				ChatConstants.MinorVersion,
				ChatConstants.BuildVersion),
			ChatWindow:GetCurrentChannel(),
			{})
		return true
	end
	return false
end

return {
	[util.KEY_COMMAND_PROCESSOR_TYPE] = util.COMPLETED_MESSAGE_PROCESSOR,
	[util.KEY_PROCESSOR_FUNCTION] = ProcessMessage
}