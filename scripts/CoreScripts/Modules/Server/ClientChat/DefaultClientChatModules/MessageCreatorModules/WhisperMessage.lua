--!nonstrict
--	// FileName: WhisperMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a whisper chat message.

local PlayersService = game:GetService("Players")
local LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
	PlayersService.ChildAdded:wait()
	LocalPlayer = PlayersService.LocalPlayer
end

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local util = require(script.Parent:WaitForChild("Util"))

local VERIFIED_EMOJI = utf8.char(0xE000)

local ChatLocalization = nil
-- ROBLOX FIXME: Can we define ClientChatModules statically in the project config
pcall(function() ChatLocalization = require((game:GetService("Chat") :: any).ClientChatModules.ChatLocalization :: any) end)

function IsPlayerVerified(userId)
	local player = PlayersService:GetPlayerByUserId(userId)

	if not player then
		return false
	end

	local success, value = pcall(function()
		return player.HasVerifiedBadge
	end)

	return if success then value else false
end

function AppendVerifiedBadge(str)
	return str .. VERIFIED_EMOJI
end

function CreateMessageLabel(messageData, channelName)

	local fromSpeaker = messageData.FromSpeaker
	
	local speakerName
	if ChatSettings.PlayerDisplayNamesEnabled and messageData.SpeakerDisplayName then
		speakerName = messageData.SpeakerDisplayName
	else
		speakerName = fromSpeaker
	end

	local speakerUserId = messageData.SpeakerUserId
	if IsPlayerVerified(speakerUserId) then
		speakerName = AppendVerifiedBadge(speakerName)
	end
	
	local message = messageData.Message

	local extraData = messageData.ExtraData or {}
	local useFont = extraData.Font or ChatSettings.DefaultFont
	local useTextSize = extraData.TextSize or ChatSettings.ChatWindowTextSize
	local useNameColor = extraData.NameColor or ChatSettings.DefaultNameColor
	local useChatColor = extraData.ChatColor or ChatSettings.DefaultMessageColor
	local useChannelColor = extraData.ChannelColor or useChatColor


	local formatUseName = string.format("[%s]:", speakerName)
	local speakerNameSize = util:GetStringTextBounds(formatUseName, useFont, useTextSize)
	local numNeededSpaces = util:GetNumberOfSpaces(formatUseName, useFont, useTextSize) + 1

	local BaseFrame, BaseMessage = util:CreateBaseMessage("", useFont, useTextSize, useChatColor)
	local NameButton = util:AddNameButtonToBaseMessage(BaseMessage, useNameColor, formatUseName, fromSpeaker)
	local ChannelButton = nil

	if channelName ~= messageData.OriginalChannel then
			local whisperString = messageData.OriginalChannel
			if messageData.FromSpeaker ~= LocalPlayer.Name then
				whisperString = string.format("From %s", messageData.FromSpeaker)
			end

			if ChatLocalization.tryLocalize then
				whisperString = ChatLocalization:tryLocalize(whisperString)
			end

			local formatChannelName = string.format("{%s}", whisperString)
			ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, useChannelColor, formatChannelName, messageData.OriginalChannel)
			NameButton.Position = UDim2.new(0, ChannelButton.Size.X.Offset + util:GetStringTextBounds(" ", useFont, useTextSize).X, 0, 0)
			numNeededSpaces = numNeededSpaces + util:GetNumberOfSpaces(formatChannelName, useFont, useTextSize) + 1
	end

	local function UpdateTextFunction(messageObject)
		if messageData.IsFiltered then
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. util:SanitizeForRichText(messageObject.Message)
		else
			local messageLength = messageObject.MessageLengthUtf8 or messageObject.MessageLength
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. string.rep("_", messageLength)
		end
	end

	UpdateTextFunction(messageData)

	local function GetHeightFunction(xSize)
		return util:GetMessageHeight(BaseMessage, BaseFrame, xSize)
	end

	local FadeParmaters = {}
	FadeParmaters[NameButton] = {
		TextTransparency = {FadedIn = 0, FadedOut = 1},
		TextStrokeTransparency = {FadedIn = 0.75, FadedOut = 1}
	}

	FadeParmaters[BaseMessage] = {
		TextTransparency = {FadedIn = 0, FadedOut = 1},
		TextStrokeTransparency = {FadedIn = 0.75, FadedOut = 1}
	}

	if ChannelButton then
		FadeParmaters[ChannelButton] = {
			TextTransparency = {FadedIn = 0, FadedOut = 1},
			TextStrokeTransparency = {FadedIn = 0.75, FadedOut = 1}
		}
	end

	local FadeInFunction, FadeOutFunction, UpdateAnimFunction = util:CreateFadeFunctions(FadeParmaters)

	return {
		[util.KEY_BASE_FRAME] = BaseFrame,
		[util.KEY_BASE_MESSAGE] = BaseMessage,
		[util.KEY_UPDATE_TEXT_FUNC] = UpdateTextFunction,
		[util.KEY_GET_HEIGHT] = GetHeightFunction,
		[util.KEY_FADE_IN] = FadeInFunction,
		[util.KEY_FADE_OUT] = FadeOutFunction,
		[util.KEY_UPDATE_ANIMATION] = UpdateAnimFunction
	}
end

return {
	[util.KEY_MESSAGE_TYPE] = ChatConstants.MessageTypeWhisper,
	[util.KEY_CREATOR_FUNCTION] = CreateMessageLabel
}
