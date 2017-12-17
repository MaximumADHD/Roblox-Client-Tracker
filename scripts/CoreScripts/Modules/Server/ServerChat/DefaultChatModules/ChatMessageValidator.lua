--	// FileName: ChatMessageValidator.lua
--	// Written by: TheGamer101
--	// Description: Validate things such as no disallowed whitespace and chat message length on the server.

local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

local DISALLOWED_WHITESPACE = {"\n", "\r", "\t", "\v", "\f"}

if ChatSettings.DisallowedWhiteSpace then
	DISALLOWED_WHITESPACE = ChatSettings.DisallowedWhiteSpace
end

local function Run(ChatService)

	local function CanUserChat(playerObj)
		if RunService:IsStudio() then
			return true
		end
		local success, canChat = pcall(function()
			return Chat:CanUserChatAsync(playerObj.UserId)
		end)
		return success and canChat
	end

	local function ValidateChatFunction(speakerName, message, channel)
		local speakerObj = ChatService:GetSpeaker(speakerName)
		local playerObj = speakerObj:GetPlayer()
		if not speakerObj then return false end
		if not playerObj then return false end

		if not RunService:IsStudio() and playerObj.UserId < 1 then
			return true
		end

		if not CanUserChat(playerObj) then
			speakerObj:SendSystemMessage(ChatLocalization:Get("GameChat_ChatMessageValidator_SettingsError","Your chat settings prevent you from sending messages."), channel)
			return true
		end

		if message:len() > ChatSettings.MaximumMessageLength + 1 then
			speakerObj:SendSystemMessage(ChatLocalization:Get("GameChat_ChatMessageValidator_MaxLengthError","Your message exceeds the maximum message length."), channel)
			return true
		end

		for i = 1, #DISALLOWED_WHITESPACE do
			if string.find(message, DISALLOWED_WHITESPACE[i]) then
				speakerObj:SendSystemMessage(ChatLocalization:Get("GameChat_ChatMessageValidator_WhitespaceError","Your message contains whitespace that is not allowed."), channel)
				return true
			end
		end
		return false
	end

	ChatService:RegisterProcessCommandsFunction("message_validation", ValidateChatFunction, ChatSettings.LowPriority)
end

return Run
