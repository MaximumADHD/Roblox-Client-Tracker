--	// FileName: MuteSpeaker.lua
--	// Written by: TheGamer101
--	// Description: Module that handles all the mute and unmute commands.

local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatModules = Chat:WaitForChild("ChatModules")
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))
local DisplayNameHelpers = require(ChatModules.Utility.DisplayNameHelpers)

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} end
if not ChatLocalization.FormatMessageToSend or not ChatLocalization.LocalizeFormattedMessage then
	function ChatLocalization:FormatMessageToSend(key,default) return default end
end

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
		local muteSpeakerInputName = GetSpeakerNameFromMessage(message)
		local speaker = ChatService:GetSpeaker(speakerName)

		if speaker then
			local muteSpeakerName, muteSpeakerError

			--Get the target user's UserName from the input (which could be userName or displayName)
			if ChatSettings.PlayerDisplayNamesEnabled then
				muteSpeakerName, muteSpeakerError = DisplayNameHelpers.getUserNameFromChattedName(muteSpeakerInputName, speakerName, speaker:GetNameForDisplay())
			else
				muteSpeakerName, muteSpeakerError = DisplayNameHelpers.getUserNameFromChattedName(muteSpeakerInputName, speakerName, nil)
			end

			local muteSpeaker = ChatService:GetSpeaker(muteSpeakerName)

			if muteSpeakerError == DisplayNameHelpers.CommandErrorCodes.ChattingToSelf then
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("GameChat_DoMuteCommand_CannotMuteSelf", "You cannot mute yourself."), channel, errorExtraData)

			elseif muteSpeakerError == DisplayNameHelpers.CommandErrorCodes.NoMatches then
				local msg = ChatLocalization:FormatMessageToSend(
					"GameChat_MuteSpeaker_SpeakerDoesNotExist",
					string.format("Speaker '%s' does not exist.", tostring(muteSpeakerInputName)),
					"RBX_NAME",
					tostring(muteSpeakerName))
				speaker:SendSystemMessage(msg, channel, errorExtraData)

			elseif muteSpeakerError == DisplayNameHelpers.CommandErrorCodes.MultipleMatches then
				local matchingUsersText = DisplayNameHelpers.getUsersWithDisplayNameString(muteSpeakerInputName, speakerName)
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "),  channel, errorExtraData)

				--Send a second message with a list of names so that the localization formatter doesn't prune it
				speaker:SendSystemMessage(matchingUsersText,  channel, errorExtraData)

			elseif muteSpeaker then
				speaker:AddMutedSpeaker(muteSpeaker.Name)

				local muteSpeakerDisplayName = muteSpeakerName

				if ChatSettings.PlayerDisplayNamesEnabled then
					muteSpeakerDisplayName = muteSpeaker:GetNameForDisplay()
				end

				local msg = ChatLocalization:FormatMessageToSend("GameChat_ChatMain_SpeakerHasBeenMuted",
					string.format("Speaker '%s' has been muted.", muteSpeakerDisplayName),
					"RBX_NAME",
					muteSpeakerDisplayName)
				speaker:SendSystemMessage(msg, channel)
			end
		end
	end

	local function DoUnmuteCommand(speakerName, message, channel)
		local unmuteSpeakerInputName = GetSpeakerNameFromMessage(message)
		local speaker = ChatService:GetSpeaker(speakerName)

		if speaker then
			local unmuteSpeakerName, unmuteSpeakerError

			--Get the target user's UserName from the input (which could be userName or displayName)
			if ChatSettings.PlayerDisplayNamesEnabled then
				unmuteSpeakerName, unmuteSpeakerError = DisplayNameHelpers.getUserNameFromChattedName(unmuteSpeakerInputName, speakerName, speaker:GetNameForDisplay())
			else
				unmuteSpeakerName, unmuteSpeakerError = DisplayNameHelpers.getUserNameFromChattedName(unmuteSpeakerInputName, speakerName, nil)
			end

			local unmuteSpeaker = ChatService:GetSpeaker(unmuteSpeakerName)

			if unmuteSpeakerError == DisplayNameHelpers.CommandErrorCodes.ChattingToSelf then
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("GameChat_DoMuteCommand_CannotMuteSelf","You cannot mute yourself."), channel, errorExtraData)
				return

			elseif unmuteSpeakerError == DisplayNameHelpers.CommandErrorCodes.NoMatches then
				local msg = ChatLocalization:FormatMessageToSend("GameChat_MuteSpeaker_SpeakerDoesNotExist",
					string.format("Speaker '%s' does not exist.", tostring(unmuteSpeakerName)),
					"RBX_NAME",
					tostring(unmuteSpeakerName))
				speaker:SendSystemMessage(msg, channel, errorExtraData)
				return

			elseif unmuteSpeakerError == DisplayNameHelpers.CommandErrorCodes.MultipleMatches then --More than one DisplayName match
				local matchingUsersText = DisplayNameHelpers.getUsersWithDisplayNameString(unmuteSpeakerInputName, speakerName)
				speaker:SendSystemMessage(ChatLocalization:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "),  channel, errorExtraData)

				--Send a second message with a list of names so that the localization formatter doesn't prune it
				speaker:SendSystemMessage(matchingUsersText,  channel, errorExtraData)
				return

			elseif unmuteSpeaker then
				speaker:RemoveMutedSpeaker(unmuteSpeaker.Name)
				local playerName = unmuteSpeakerName

				if ChatSettings.PlayerDisplayNamesEnabled then
					playerName = unmuteSpeaker:GetNameForDisplay()
				end

				local msg = ChatLocalization:FormatMessageToSend("GameChat_ChatMain_SpeakerHasBeenUnMuted",
					string.format("Speaker '%s' has been unmuted.", playerName),
					"RBX_NAME",
					playerName)
				speaker:SendSystemMessage(msg, channel)
				return

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
