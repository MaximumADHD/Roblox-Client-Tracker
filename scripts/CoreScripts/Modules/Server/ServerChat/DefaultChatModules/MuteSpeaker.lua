--	// FileName: MuteSpeaker.lua
--	// Written by: TheGamer101
--	// Description: Module that handles all the mute and unmute commands.

local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

local errorTextColor = ChatSettings.ErrorMessageTextColor or Color3.fromRGB(245, 50, 50)
local errorExtraData = {ChatColor = errorTextColor}

local function Run(ChatService)

	local function GetSpeakerNameFromMessage(message)
		local speakerName = message
		if string.sub(message, 1, 1) == "\"" then
			local pos = string.find(message, "\"", 2)
			if pos then
				speakerName = string.sub(message, 2, pos - 1)
			end
		else
			local first = string.match(message, "^[^%s]+")
			if first then
				speakerName = first
			end
		end
		return speakerName
	end

	local function DoMuteCommand(speakerName, message, channel)
		local muteSpeakerName = GetSpeakerNameFromMessage(message)
		local speaker = ChatService:GetSpeaker(speakerName)
		if speaker then
			if muteSpeakerName:lower() == speakerName:lower() then
				speaker:SendSystemMessage(ChatLocalization:Get("GameChat_DoMuteCommand_CannotMuteSelf","You cannot mute yourself."), channel, errorExtraData)
				return
			end

			local muteSpeaker = ChatService:GetSpeaker(muteSpeakerName)
			if muteSpeaker then
				speaker:AddMutedSpeaker(muteSpeaker.Name)
				speaker:SendSystemMessage(
					string.gsub(
						ChatLocalization:Get(
							"GameChat_ChatMain_SpeakerHasBeenMuted", 
							string.format("Speaker '%s' has been muted.", muteSpeaker.Name)
						),
						"{RBX_NAME}",muteSpeaker.Name
					),
					channel
				)
			else
				speaker:SendSystemMessage(
					string.gsub(
						ChatLocalization:Get(
							"GameChat_MuteSpeaker_SpeakerDoesNotExist", 
							string.format("Speaker '%s' does not exist.", tostring(muteSpeakerName))
						),
						"{RBX_NAME}",tostring(muteSpeakerName)
					),
					channel,
					errorExtraData
				)
			end
		end
	end

	local function DoUnmuteCommand(speakerName, message, channel)
		local unmuteSpeakerName = GetSpeakerNameFromMessage(message)
		local speaker = ChatService:GetSpeaker(speakerName)
		if speaker then
			if unmuteSpeakerName:lower() == speakerName:lower() then
				speaker:SendSystemMessage(ChatLocalization:Get("GameChat_DoMuteCommand_CannotMuteSelf","You cannot mute yourself."), channel, errorExtraData)
				return
			end

			local unmuteSpeaker = ChatService:GetSpeaker(unmuteSpeakerName)
			if unmuteSpeaker then
				speaker:RemoveMutedSpeaker(unmuteSpeaker.Name)
				speaker:SendSystemMessage(
					string.gsub(
						ChatLocalization:Get(
							"GameChat_ChatMain_SpeakerHasBeenUnMuted", 
							string.format("Speaker '%s' has been unmuted.", unmuteSpeaker.Name)
						),
						"{RBX_NAME}",unmuteSpeaker.Name
					),
					channel
				)
			else
				speaker:SendSystemMessage(
					string.gsub(
						ChatLocalization:Get(
							"GameChat_MuteSpeaker_SpeakerDoesNotExist", 
							string.format("Speaker '%s' does not exist.", tostring(unmuteSpeakerName))
						),
						"{RBX_NAME}",tostring(unmuteSpeakerName)
					),
					channel,
					errorExtraData
				)
			end
		end
	end

	local function MuteCommandsFunction(fromSpeaker, message, channel)
		local processedCommand = false

		if string.sub(message, 1, 6):lower() == "/mute " then
			DoMuteCommand(fromSpeaker, string.sub(message, 7), channel)
			processedCommand = true
		elseif string.sub(message, 1, 8):lower() == "/unmute " then
			DoUnmuteCommand(fromSpeaker, string.sub(message, 9), channel)
			processedCommand = true
		end
		return processedCommand
	end

	ChatService:RegisterProcessCommandsFunction("mute_commands", MuteCommandsFunction, ChatConstants.StandardPriority)
end

return Run
