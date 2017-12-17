--	// FileName: SwallowGuestChat.lua
--	// Written by: TheGamer101
--	// Description: Stop Guests from chatting and give them a message telling them to sign up.
-- 	// Guests are generally not allowed to chat, so please do not remove this.

local util = require(script.Parent:WaitForChild("Util"))
local RunService = game:GetService("RunService")

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

function ProcessMessage(message, ChatWindow, ChatSettings)
	local LocalPlayer = game:GetService("Players").LocalPlayer
	if LocalPlayer and LocalPlayer.UserId < 0 and not RunService:IsStudio() then

		local channelObj = ChatWindow:GetCurrentChannel()
		if channelObj then
			util:SendSystemMessageToSelf(
				ChatLocalization:Get("GameChat_SwallowGuestChat_Message","Create a free account to get access to chat permissions!"), 
				channelObj, 
				{}
			)
		end

		return true
	end
	return false
end

return {
	[util.KEY_COMMAND_PROCESSOR_TYPE] = util.COMPLETED_MESSAGE_PROCESSOR,
	[util.KEY_PROCESSOR_FUNCTION] = ProcessMessage
}
