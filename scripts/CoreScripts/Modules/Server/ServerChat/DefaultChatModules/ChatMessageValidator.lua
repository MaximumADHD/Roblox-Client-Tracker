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
if ChatLocalization == nil then ChatLocalization = {} end
if not ChatLocalization.FormatMessageToSend or not ChatLocalization.LocalizeFormattedMessage then
	function ChatLocalization:FormatMessageToSend(key,default) return default end
end

local MAX_BYTES_PER_UTF8_CODEPOINT = 6
local DISALLOWED_WHITESPACE = {"\n", "\r", "\t", "\v", "\f"}

if ChatSettings.DisallowedWhiteSpace then
	DISALLOWED_WHITESPACE = ChatSettings.DisallowedWhiteSpace
end

local function isMessageValidServer(msg)
    -- worst-case byte length check - fast for large strings
    if msg:len() > ChatSettings.MaximumMessageLength*MAX_BYTES_PER_UTF8_CODEPOINT then
        return false
    end
 
    -- check for invalid unicode sequence
    -- avoid normalizing first because utf8.nfcnormalize throws for invalid sequences
    if utf8.len(msg) == nil then
        return false
    end
 
    -- check codepoint length
    if utf8.len(utf8.nfcnormalize(msg)) > ChatSettings.MaximumMessageLength then
        return false
    end
 
    return true
end

local function CanUserChat(playerObj)
	if RunService:IsStudio() then
		return true
	end
	local success, canChat = pcall(function()
		return Chat:CanUserChatAsync(playerObj.UserId)
	end)
	return success and canChat
end

local function Run(ChatService)
	local function ValidateChatFunction(speakerName, message, channel)
		local speakerObj = ChatService:GetSpeaker(speakerName)
		local playerObj = speakerObj:GetPlayer()
		if not speakerObj then return false end
		if not playerObj then return false end

		if not RunService:IsStudio() and playerObj.UserId < 1 then
			return true
		end

		if not CanUserChat(playerObj) then
			speakerObj:SendSystemMessage(ChatLocalization:FormatMessageToSend(
				"GameChat_ChatMessageValidator_SettingsError",
				"Your chat settings prevent you from sending messages."
			), channel)
			return true
		end

		if not isMessageValidServer(message) then
			local localizedError = ChatLocalization:FormatMessageToSend(
				"GameChat_ChatMessageValidator_MaxLengthError",
				"Your message exceeds the maximum message length."
			)
			speakerObj:SendSystemMessage(localizedError, channel)
			return true
		end

		for _, whitespace in pairs(DISALLOWED_WHITESPACE) do
			if message:find(whitespace) then
				speakerObj:SendSystemMessage(ChatLocalization:FormatMessageToSend(
					"GameChat_ChatMessageValidator_WhitespaceError",
					"Your message contains whitespace that is not allowed."
				), channel)
				return true
			end
		end

		return false
	end

	ChatService:RegisterProcessCommandsFunction("message_validation", ValidateChatFunction, ChatConstants.VeryHighPriority)
end

return Run
