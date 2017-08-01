--	// FileName: DefaultChatMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a standard chat message.

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local util = require(script.Parent:WaitForChild("Util"))

function CreateMessageLabel(messageData, channelName)

	local fromSpeaker = messageData.FromSpeaker
	local message = messageData.Message

	local extraData = messageData.ExtraData or {}
	local useFont = extraData.Font or ChatSettings.DefaultFont
	local useTextSize = extraData.TextSize or ChatSettings.ChatWindowTextSize
	local useNameColor = extraData.NameColor or ChatSettings.DefaultNameColor
	local useChatColor = extraData.ChatColor or ChatSettings.DefaultMessageColor
	local useChannelColor = extraData.ChannelColor or useChatColor

	local formatUseName = string.format("[%s]:", fromSpeaker)
	local speakerNameSize = util:GetStringTextBounds(formatUseName, useFont, useTextSize)
	local numNeededSpaces = util:GetNumberOfSpaces(formatUseName, useFont, useTextSize) + 1

	local BaseFrame, BaseMessage = util:CreateBaseMessage("", useFont, useTextSize, useChatColor)
	local NameButton = util:AddNameButtonToBaseMessage(BaseMessage, useNameColor, formatUseName, fromSpeaker)
	local ChannelButton = nil

	if channelName ~= messageData.OriginalChannel then
			local formatChannelName = string.format("{%s}", messageData.OriginalChannel)
			ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, useChannelColor, formatChannelName, messageData.OriginalChannel)
			NameButton.Position = UDim2.new(0, ChannelButton.Size.X.Offset + util:GetStringTextBounds(" ", useFont, useTextSize).X, 0, 0)
			numNeededSpaces = numNeededSpaces + util:GetNumberOfSpaces(formatChannelName, useFont, useTextSize) + 1
	end

	local function UpdateTextFunction(messageObject)
		if messageData.IsFiltered then
			BaseMessage.Text = string.rep(" ", numNeededSpaces) .. messageObject.Message
		else
			BaseMessage.Text = string.rep(" ", numNeededSpaces) .. string.rep("_", messageObject.MessageLength)
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
	[util.KEY_MESSAGE_TYPE] = ChatConstants.MessageTypeDefault,
	[util.KEY_CREATOR_FUNCTION] = CreateMessageLabel
}
