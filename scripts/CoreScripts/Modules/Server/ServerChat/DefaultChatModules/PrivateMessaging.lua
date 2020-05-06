--	// FileName: PrivateMessaging.lua
--	// Written by: Xsitsu
--	// Description: Module that handles all private messaging.

local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local PlayersService = game:GetService("Players")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} end
if not ChatLocalization.FormatMessageToSend or not ChatLocalization.LocalizeFormattedMessage then
	function ChatLocalization:FormatMessageToSend(key,default) return default end
end

local errorTextColor = ChatSettings.ErrorMessageTextColor or Color3.fromRGB(245, 50, 50)
local errorExtraData = {ChatColor = errorTextColor}

local function GetWhisperChannelPrefix()
	if ChatConstants.WhisperChannelPrefix then
		return ChatConstants.WhisperChannelPrefix
	end
	return "To "
end

local function GetWhisperChannelId(userName)
	return GetWhisperChannelPrefix() .. userName
end

local function Run(ChatService)

	local function CanCommunicate(fromSpeaker, toSpeaker)
		if RunService:IsStudio() then
			return true
		end
		local fromPlayer = fromSpeaker:GetPlayer()
		local toPlayer = toSpeaker:GetPlayer()
		if fromPlayer and toPlayer then
			local success, canChat = pcall(function()
				return Chat:CanUsersChatAsync(fromPlayer.UserId, toPlayer.UserId)
			end)
			return success and canChat
		end
		return false
	end

	local function DoWhisperCommand(fromSpeaker, message, channel)
		local speaker = ChatService:GetSpeaker(fromSpeaker)
		local otherSpeakerName = message
		local sendMessage = nil

		if (string.sub(message, 1, 1) == "\"") then
			local pos = string.find(message, "\"", 2)
			if (pos) then
				otherSpeakerName = string.sub(message, 2, pos - 1)
				sendMessage = string.sub(message, pos + 2)
			end
		else
			local first = string.match(message, "^[^%s]+")
			if (first) then
				otherSpeakerName = first
				sendMessage = string.sub(message, string.len(otherSpeakerName) + 2)
			end
		end

		--make sure there are no duplicates for the otherSpeaker
		if ChatSettings.WhisperByDisplayName then
			local userNameMatched = false
			local displayNameMatches = {}
			local players = PlayersService:GetPlayers()

			for _, potentialOtherSpeaker in pairs(players) do
				--prioritize username matches
				if potentialOtherSpeaker.Name == otherSpeakerName then
					userNameMatched = true
					break
				elseif potentialOtherSpeaker.DisplayName == otherSpeakerName then
					table.insert(displayNameMatches, potentialOtherSpeaker.Name)
				end
			end

			if not userNameMatched and #displayNameMatches > 1 then
				local matchingUsersText = ""

				for i, matchingUserName in pairs(displayNameMatches) do
					if i ~= #displayNameMatches then
						matchingUsersText = matchingUsersText .. "@" .. matchingUserName .. ", "
					else
						matchingUsersText = matchingUsersText .. "@" .. matchingUserName
					end
				end

				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "),  channel, errorExtraData)

				--Send a second message with a list of names so that the localization formatter doesn't prune it
				speaker:SendSystemMessage(matchingUsersText,  channel, errorExtraData)

				return
			end
		end

		local otherSpeaker = ChatService:GetSpeaker(otherSpeakerName)

		local channelObj = ChatService:GetChannel(GetWhisperChannelId(otherSpeakerName))

		if channelObj and otherSpeaker then
			if not CanCommunicate(speaker, otherSpeaker) then
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("GameChat_PrivateMessaging_CannotChat","You are not able to chat with this player."), channel, errorExtraData)
				return
			end

			if (channelObj.Name == GetWhisperChannelId(fromSpeaker)) then
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("GameChat_PrivateMessaging_CannotWhisperToSelf","You cannot whisper to yourself."), channel, errorExtraData)
			else
				if (not speaker:IsInChannel(channelObj.Name)) then
					speaker:JoinChannel(channelObj.Name)
				end

				if (sendMessage and (string.len(sendMessage) > 0) ) then
					speaker:SayMessage(sendMessage, channelObj.Name)
				end

				speaker:SetMainChannel(channelObj.Name)
			end

		else
			local msg = ChatLocalization:FormatMessageToSend(
				"GameChat_MuteSpeaker_SpeakerDoesNotExist",
				string.format("Speaker '%s' does not exist.", tostring(otherSpeakerName)),
				"RBX_NAME",
				tostring(otherSpeakerName))
			speaker:SendSystemMessage(msg, channel, errorExtraData)
		end
	end

	local function WhisperCommandsFunction(fromSpeaker, message, channel)
		local processedCommand = false

		if (string.sub(message, 1, 3):lower() == "/w ") then
			DoWhisperCommand(fromSpeaker, string.sub(message, 4), channel)
			processedCommand = true

		elseif (string.sub(message, 1, 9):lower() == "/whisper ") then
			DoWhisperCommand(fromSpeaker, string.sub(message, 10), channel)
			processedCommand = true

		end

		return processedCommand
	end

	local function PrivateMessageReplicationFunction(fromSpeaker, message, channelName)
		local sendingSpeaker = ChatService:GetSpeaker(fromSpeaker)
		local extraData = sendingSpeaker.ExtraData
		sendingSpeaker:SendMessage(message, channelName, fromSpeaker, extraData)

		local toSpeaker = ChatService:GetSpeaker(string.sub(channelName, 4))
		local fromSpeakerChannelId = GetWhisperChannelId(fromSpeaker)

		if (toSpeaker) then
			if (not toSpeaker:IsInChannel(fromSpeakerChannelId)) then
				toSpeaker:JoinChannel(fromSpeakerChannelId)
			end
			toSpeaker:SendMessage(message, fromSpeakerChannelId, fromSpeaker, extraData)
		end

		return true
	end

	local function PrivateMessageAddTypeFunction(speakerName, messageObj, channelName)
		if ChatConstants.MessageTypeWhisper then
			messageObj.MessageType = ChatConstants.MessageTypeWhisper
		end
	end

	ChatService:RegisterProcessCommandsFunction("whisper_commands", WhisperCommandsFunction, ChatConstants.StandardPriority)

	local function GetWhisperChanneNameColor()
		if ChatSettings.WhisperChannelNameColor then
			return ChatSettings.WhisperChannelNameColor
		end
		return Color3.fromRGB(102, 14, 102)
	end

	ChatService.SpeakerAdded:connect(function(speakerName)
		local speaker = ChatService:GetSpeaker(speakerName)
		local speakerDisplayName

		if ChatSettings.PlayerDisplayNamesEnabled and speaker:GetPlayer() then
			speakerDisplayName = speaker:GetNameForDisplay() .. "(@" .. speakerName .. ")"
		else
			speakerDisplayName = speakerName
		end

		local toSpeakerChannelId = GetWhisperChannelId(speakerName)

		if (ChatService:GetChannel(toSpeakerChannelId)) then
			ChatService:RemoveChannel(toSpeakerChannelId)
		end

		local channel = ChatService:AddChannel(toSpeakerChannelId)
		channel.Joinable = false
		channel.Leavable = true
		channel.AutoJoin = false
		channel.Private = true

		channel.WelcomeMessage = ChatLocalization:FormatMessageToSend("GameChat_PrivateMessaging_NowChattingWith",
			"You are now privately chatting with " .. speakerDisplayName .. ".",
			"RBX_NAME",
			tostring(speakerDisplayName))
		channel.ChannelNameColor = GetWhisperChanneNameColor()

		channel:RegisterProcessCommandsFunction("replication_function", PrivateMessageReplicationFunction, ChatConstants.LowPriority)
		channel:RegisterFilterMessageFunction("message_type_function", PrivateMessageAddTypeFunction)
	end)

	ChatService.SpeakerRemoved:connect(function(speakerName)
		local whisperChannelId = GetWhisperChannelId(speakerName)

		if (ChatService:GetChannel(whisperChannelId)) then
			ChatService:RemoveChannel(whisperChannelId)
		end
	end)
end

return Run
