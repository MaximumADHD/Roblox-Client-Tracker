--	// FileName: MeCommandMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a me command message.

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local util = require(script.Parent:WaitForChild("Util"))

function CreateMeCommandMessageLabel(messageData, channelName)
	local message = messageData.Message
	local extraData = messageData.ExtraData or {}
	local useFont = extraData.Font or Enum.Font.SourceSansItalic
	local useTextSize = extraData.TextSize or ChatSettings.ChatWindowTextSize
	local useChatColor = Color3.new(1, 1, 1)
	local useChannelColor = extraData.ChannelColor or useChatColor
	local numNeededSpaces = 0

	local BaseFrame, BaseMessage = util:CreateBaseMessage("", useFont, useTextSize, useChatColor)
	local ChannelButton = nil

	if channelName ~= messageData.OriginalChannel then
		local formatChannelName = string.format("{%s}", messageData.OriginalChannel)
		ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, useChannelColor, formatChannelName, messageData.OriginalChannel)
		numNeededSpaces = util:GetNumberOfSpaces(formatChannelName, useFont, useTextSize) + 1
	end

	local function UpdateTextFunction(messageObject)
		if messageData.IsFiltered then
			BaseMessage.Text = string.rep(" ", numNeededSpaces) .. messageObject.FromSpeaker .. " " .. string.sub(messageObject.Message, 5)
		else
			local messageLength = string.len(messageObject.FromSpeaker) + messageObject.MessageLength - 4
			BaseMessage.Text = string.rep(" ", numNeededSpaces) .. string.rep("_", messageLength)
		end
	end

	UpdateTextFunction(messageData)

	local function GetHeightFunction(xSize)
		return util:GetMessageHeight(BaseMessage, BaseFrame, xSize)
	end

	local FadeParmaters = {}
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
	[util.KEY_MESSAGE_TYPE] = ChatConstants.MessageTypeMeCommand,
	[util.KEY_CREATOR_FUNCTION] = CreateMeCommandMessageLabel
}
