--!nonstrict

--	// FileName: WelcomeMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a welcome message.

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local util = require(script.Parent:WaitForChild("Util"))
-- ROBLOX FIXME: Can we define ClientChatModules statically in the project config
pcall(function() ChatLocalization = require((game:GetService("Chat") :: any).ClientChatModules.ChatLocalization :: any) end)

function CreateWelcomeMessageLabel(messageData, channelName)
	local message = messageData.Message
	if ChatLocalization and ChatLocalization.LocalizeFormattedMessage then
		message = ChatLocalization:LocalizeFormattedMessage(message)
	end
	local extraData = messageData.ExtraData or {}
	local useFont = extraData.Font or ChatSettings.DefaultFont
	local useTextSize = extraData.FontSize or ChatSettings.ChatWindowTextSize
	local useChatColor = extraData.ChatColor or ChatSettings.DefaultMessageColor
	local useChannelColor = extraData.ChannelColor or useChatColor

	local BaseFrame, BaseMessage = util:CreateBaseMessage(message, useFont, useTextSize, useChatColor)
	local ChannelButton = nil

	if channelName ~= messageData.OriginalChannel then
			local localizedChannelName = messageData.OriginalChannel
			if ChatLocalization.tryLocalize then
				localizedChannelName = ChatLocalization:tryLocalize(messageData.OriginalChannel)
			end
			local formatChannelName = string.format("{%s}", localizedChannelName)
			ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, useChannelColor, formatChannelName, messageData.OriginalChannel)
			local numNeededSpaces = util:GetNumberOfSpaces(formatChannelName, useFont, useTextSize) + 1
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. util:SanitizeForRichText(message)
	end

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
		[util.KEY_UPDATE_TEXT_FUNC] = nil,
		[util.KEY_GET_HEIGHT] = GetHeightFunction,
		[util.KEY_FADE_IN] = FadeInFunction,
		[util.KEY_FADE_OUT] = FadeOutFunction,
		[util.KEY_UPDATE_ANIMATION] = UpdateAnimFunction
	}
end

return {
	[util.KEY_MESSAGE_TYPE] = ChatConstants.MessageTypeWelcome,
	[util.KEY_CREATOR_FUNCTION] = CreateWelcomeMessageLabel
}
