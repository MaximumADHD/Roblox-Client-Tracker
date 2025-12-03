--!nonstrict
--	// FileName: DefaultChatMessage.lua
--	// Written by: TheGamer101
--	// Description: Create a message label for a standard chat message.

local userIsChatTranslationEnabled = false
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
	end)
	userIsChatTranslationEnabled = success and value
end

local PlayersService = game:GetService("Players")

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local util = require(script.Parent:WaitForChild("Util"))

local VERIFIED_EMOJI = utf8.char(0xE000)

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

function CreateMessageLabel(messageData, channelName, refreshCallback)

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
	local tags = extraData.Tags or {}

	local formatUseName = string.format("[%s]:", speakerName)
	local speakerNameSize = util:GetStringTextBounds(formatUseName, useFont, useTextSize)
	local numNeededSpaces = util:GetNumberOfSpaces(formatUseName, useFont, useTextSize) + 1
	local translationButtonSpaces = 6

	local BaseFrame, BaseMessage = util:CreateBaseMessage("", useFont, useTextSize, useChatColor)
	local NameButton = util:AddNameButtonToBaseMessage(BaseMessage, useNameColor, formatUseName, fromSpeaker)
	local ChannelButton = nil

	local guiObjectSpacing = UDim2.new(0, 0, 0, 0)

	if channelName ~= messageData.OriginalChannel then
			local formatChannelName = string.format("{%s}", messageData.OriginalChannel)
			ChannelButton = util:AddChannelButtonToBaseMessage(BaseMessage, useChannelColor, formatChannelName, messageData.OriginalChannel)
			guiObjectSpacing = UDim2.new(0, ChannelButton.Size.X.Offset + util:GetStringTextBounds(" ", useFont, useTextSize).X, 0, 0)
			numNeededSpaces = numNeededSpaces + util:GetNumberOfSpaces(formatChannelName, useFont, useTextSize) + 1
	end

	local tagLabels = {}
	for i, tag in pairs(tags) do
		local tagColor = tag.TagColor or Color3.fromRGB(255, 0, 255)
		local tagText = tag.TagText or "???"
		local formatTagText = string.format("[%s] ", tagText)
		local label = util:AddTagLabelToBaseMessage(BaseMessage, tagColor, formatTagText)
		label.Position = guiObjectSpacing

		numNeededSpaces = numNeededSpaces + util:GetNumberOfSpaces(formatTagText, useFont, useTextSize)
		guiObjectSpacing = guiObjectSpacing + UDim2.new(0, label.Size.X.Offset, 0, 0)

		table.insert(tagLabels, label)
	end

	NameButton.Position = guiObjectSpacing

	local isTranslated = false
	local TranslationButton = nil
	if userIsChatTranslationEnabled then
		-- util:AddTranslationButtonToBaseMessage may not exist because of a forked util file so make our best attempt
		pcall(function()
			TranslationButton = util:AddTranslationButtonToBaseMessage(BaseMessage)
			guiObjectSpacing = guiObjectSpacing + UDim2.new(0, NameButton.Size.X.Offset + 2, 0, 0)
			TranslationButton.Position = guiObjectSpacing
		end)
	end

	local function useOriginalText(messageObject)	
		isTranslated = false
		if messageData.IsFiltered then
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. util:SanitizeForRichText(messageObject.Message)
		else
			local messageLength = messageObject.MessageLengthUtf8 or messageObject.MessageLength
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. string.rep("_", messageLength)
		end
	end

	local function useTranslatedText(messageObject)
		if TranslationButton == nil then
			return
		end

		if TranslationButton.Visible == false then
			numNeededSpaces = numNeededSpaces + translationButtonSpaces
		end
		
		TranslationButton.Visible = true
		isTranslated = true

		if messageObject.TranslatedMessage == "" then
			useOriginalText(messageObject)
			return
		end

		BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. util:SanitizeForRichText(messageObject.TranslatedMessage)
	end

	local function UpdateTextFunction_Chat(messageObject)
		messageData.TranslatedMessage = messageObject.TranslatedMessage
		if messageObject.TranslatedMessage then
			useTranslatedText(messageObject)
		else
			useOriginalText(messageObject)
		end
	end

	local function UpdateTextFunction(messageObject)
		if userIsChatTranslationEnabled then
			UpdateTextFunction_Chat(messageObject)
			return
		end
		if messageData.IsFiltered then
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. util:SanitizeForRichText(messageObject.Message)
		else
			local messageLength = messageObject.MessageLengthUtf8 or messageObject.MessageLength
			BaseMessage.Text = util:CreateLeadingSpaces(numNeededSpaces) .. string.rep("_", messageLength)
		end
	end

	local function toggleTranslation()
		if not isTranslated and messageData.TranslatedMessage then
			useTranslatedText(messageData)
		else
			useOriginalText(messageData)
		end
		if refreshCallback then
			refreshCallback()
		end
	end

	if userIsChatTranslationEnabled and TranslationButton ~= nil then
		local clickedConn = TranslationButton.MouseButton1Click:connect(function()
			toggleTranslation()
		end)

		local changedConn = nil
		changedConn = TranslationButton.Changed:connect(function(prop)
			if prop == "Parent" then
				clickedConn:Disconnect()
				changedConn:Disconnect()
			end
		end)
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

	if userIsChatTranslationEnabled and TranslationButton ~= nil then
		FadeParmaters[TranslationButton] = {
			ImageTransparency = {FadedIn = 0, FadedOut = 1},
		}
	end

	FadeParmaters[BaseMessage] = {
		TextTransparency = {FadedIn = 0, FadedOut = 1},
		TextStrokeTransparency = {FadedIn = 0.75, FadedOut = 1}
	}

	for i, tagLabel in pairs(tagLabels) do
		local index = string.format("Tag%d", i)
		FadeParmaters[tagLabel] = {
			TextTransparency = {FadedIn = 0, FadedOut = 1},
			TextStrokeTransparency = {FadedIn = 0.75, FadedOut = 1}
		}
	end

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
