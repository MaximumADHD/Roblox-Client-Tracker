--	// FileName: UnknownMessage.lua
--	// Written by: TheGamer101
--	// Description: Default handler for message types with no other creator registered.
--	// Just print that there was a message with no creator for now.

local MESSAGE_TYPE = "UnknownMessage"

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local util = require(script.Parent:WaitForChild("Util"))

function CreateUnknownMessageLabel(messageData)
	print("No message creator for message: " ..messageData.Message)
end

return {
	[util.KEY_MESSAGE_TYPE] = MESSAGE_TYPE,
	[util.KEY_CREATOR_FUNCTION] = CreateUnknownMessageLabel
}
