--	// FileName: ChatCommandsTeller.lua
--	// Written by: Xsitsu
--	// Description: Module that provides information on default chat commands to players.

local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = { Get = function(key,default) return default end } end

local function Run(ChatService)

	local function ShowJoinAndLeaveCommands()
		if ChatSettings.ShowJoinAndLeaveHelpText ~= nil then
			return ChatSettings.ShowJoinAndLeaveHelpText
		end
		return false
	end

	local function ProcessCommandsFunction(fromSpeaker, message, channel)
		if (message:lower() == "/?" or message:lower() == "/help") then
			local speaker = ChatService:GetSpeaker(fromSpeaker)
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_Desc","These are the basic chat commands."), channel)
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_MeCommand","/me <text> : roleplaying command for doing actions."), channel)
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_SwitchChannelCommand","/c <channel> : switch channel menu tabs."), channel)
			if ShowJoinAndLeaveCommands() then
				speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_JoinChannelCommand","/join <channel> or /j <channel> : join channel."), channel)
				speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_LeaveChannelCommand","/leave <channel> or /l <channel> : leave channel. (leaves current if none specified)"), channel)
			end
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_WhisperCommand","/whisper <speaker> or /w <speaker> : open private message channel with speaker."), channel)
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_MuteCommand","/mute <speaker> : mute a speaker."), channel)
			speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_UnMuteCommand","/unmute <speaker> : unmute a speaker."), channel)

			local player = speaker:GetPlayer()
			if player and player.Team then
				speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatCommandsTeller_TeamCommand","/team <message> or /t <message> : send a team chat to players on your team."), channel)
			end

			return true
		end

		return false
	end

	ChatService:RegisterProcessCommandsFunction("chat_commands_inquiry", ProcessCommandsFunction, ChatConstants.StandardPriority)

	if ChatSettings.GeneralChannelName then
		local allChannel = ChatService:GetChannel(ChatSettings.GeneralChannelName)
		if (allChannel) then
			allChannel.WelcomeMessage = ChatLocalization:Get("GameChat_ChatCommandsTeller_AllChannelWelcomeMessage","Chat '/?' or '/help' for a list of chat commands.")
		end
	end
end

return Run
