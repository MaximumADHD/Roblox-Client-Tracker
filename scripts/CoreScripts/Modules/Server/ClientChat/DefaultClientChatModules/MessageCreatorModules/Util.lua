--!nonstrict
--	// FileName: Util.lua
--	// Written by: Xsitsu, TheGamer101
--	// Description: Module for shared code between MessageCreatorModules.

--[[
Creating a message creator module:
1) Create a new module inside the MessageCreatorModules folder.
2) Create a function that takes a messageData object and returns:
{
	KEY_BASE_FRAME = BaseFrame,
	KEY_BASE_MESSAGE = BaseMessage,
	KEY_UPDATE_TEXT_FUNC = function(newMessageObject) ---Function to update the text of the message.
	KEY_GET_HEIGHT = function() ---Function to get the height of the message in absolute pixels,
	KEY_FADE_IN = function(duration, CurveUtil) ---Function to tell the message to start fading in.
	KEY_FADE_OUT = function(duration, CurveUtil) ---Function to tell the message to start fading out.
	KEY_UPDATE_ANIMATION = function(dtScale, CurveUtil) ---Update animation function.
}
3) return the following format from the module:
{
	KEY_MESSAGE_TYPE = "Message type this module creates messages for."
	KEY_CREATOR_FUNCTION = YourFunctionHere
}
--]]

local DEFAULT_MESSAGE_CREATOR = "UnknownMessage"
local MESSAGE_CREATOR_MODULES_VERSION = 1
---Creator Module Object Keys
local KEY_MESSAGE_TYPE = "MessageType"
local KEY_CREATOR_FUNCTION = "MessageCreatorFunc"
---Creator function return object keys
local KEY_BASE_FRAME = "BaseFrame"
local KEY_BASE_MESSAGE = "BaseMessage"
local KEY_UPDATE_TEXT_FUNC = "UpdateTextFunction"
local KEY_GET_HEIGHT = "GetHeightFunction"
local KEY_FADE_IN = "FadeInFunction"
local KEY_FADE_OUT = "FadeOutFunction"
local KEY_UPDATE_ANIMATION = "UpdateAnimFunction"

local FFlagUserFixOverlappingRtlChatMessages2 = false do
	local ok, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserFixOverlappingRtlChatMessages2")
	end)
	if ok then
		FFlagUserFixOverlappingRtlChatMessages2 = value
	end
end

local TextService = game:GetService("TextService")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players.ChildAdded:wait()
	LocalPlayer = Players.LocalPlayer
end

local clientChatModules = script.Parent.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))

local module = {}
local methods = {}
methods.__index = methods

function methods:GetStringTextBounds(text, font, textSize, sizeBounds)
	sizeBounds = sizeBounds or Vector2.new(10000, 10000)
	return TextService:GetTextSize(text, textSize, font, sizeBounds)
end
--// Above was taken directly from Util.GetStringTextBounds() in the old chat corescripts.

function methods:GetMessageHeight(BaseMessage, BaseFrame, xSize)
	xSize = xSize or BaseFrame.AbsoluteSize.X
	local text = if FFlagUserFixOverlappingRtlChatMessages2 then BaseMessage.ContentText else BaseMessage.Text
	local textBoundsSize = self:GetStringTextBounds(text, BaseMessage.Font, BaseMessage.TextSize, Vector2.new(xSize, 1000))
	if textBoundsSize.Y ~= math.floor(textBoundsSize.Y) then
		-- HACK Alert. TODO: Remove this when we switch UDim2 to use float Offsets
		-- This is nessary due to rounding issues on mobile devices when translating between screen pixels and native pixels
		return textBoundsSize.Y + 1
	end
	return textBoundsSize.Y
end

function methods:GetNumberOfSpaces(str, font, textSize)
	local strSize = self:GetStringTextBounds(str, font, textSize)
	local singleSpaceSize = self:GetStringTextBounds(" ", font, textSize)
	return math.ceil(strSize.X / singleSpaceSize.X)
end

function methods:CreateLeadingSpaces(numNeededSpaces)
	if FFlagUserFixOverlappingRtlChatMessages2 then
		return "<font dir=\"ltr\">" .. string.rep(" ", numNeededSpaces) .. "</font>"
	else
		return string.rep(" ", numNeededSpaces)
	end
end

function methods:SanitizeForRichText(str)
	if FFlagUserFixOverlappingRtlChatMessages2 then
		return string.gsub(str, "%p", {
			["<"] = "&lt;",
			[">"] = "&gt;",
			["&"] = "&amp;",
		})
	else
		return str
	end
end

function methods:CreateBaseMessage(message, font, textSize, chatColor)
	local BaseFrame = self:GetFromObjectPool("Frame")
	BaseFrame.Selectable = false
	BaseFrame.Size = UDim2.new(1, 0, 0, 18)
	BaseFrame.Visible = true
	BaseFrame.BackgroundTransparency = 1

	local messageBorder = 8

	local BaseMessage = self:GetFromObjectPool("TextLabel")
	BaseMessage.Selectable = false
	BaseMessage.Size = UDim2.new(1, -(messageBorder + 6), 1, 0)
	BaseMessage.Position = UDim2.new(0, messageBorder, 0, 0)
	BaseMessage.BackgroundTransparency = 1
	BaseMessage.Font = font
	BaseMessage.TextSize = textSize
	BaseMessage.TextXAlignment = Enum.TextXAlignment.Left
	BaseMessage.TextYAlignment = Enum.TextYAlignment.Top
	BaseMessage.TextTransparency = 0
	BaseMessage.TextStrokeTransparency = 0.75
	BaseMessage.TextColor3 = chatColor
	BaseMessage.TextWrapped = true
	BaseMessage.ClipsDescendants = true
	BaseMessage.Text = message
	BaseMessage.Visible = true
	BaseMessage.RichText = if FFlagUserFixOverlappingRtlChatMessages2 then true else false
	BaseMessage.Parent = BaseFrame

	return BaseFrame, BaseMessage
end

function methods:AddNameButtonToBaseMessage(BaseMessage, nameColor, formatName, playerName)
	local speakerNameSize = self:GetStringTextBounds(formatName, BaseMessage.Font, BaseMessage.TextSize)
	local NameButton = self:GetFromObjectPool("TextButton")
	NameButton.Selectable = false
	NameButton.Size = UDim2.new(0, speakerNameSize.X, 0, speakerNameSize.Y)
	NameButton.Position = UDim2.new(0, 0, 0, 0)
	NameButton.BackgroundTransparency = 1
	NameButton.Font = BaseMessage.Font
	NameButton.TextSize = BaseMessage.TextSize
	NameButton.TextXAlignment = BaseMessage.TextXAlignment
	NameButton.TextYAlignment = BaseMessage.TextYAlignment
	NameButton.TextTransparency = BaseMessage.TextTransparency
	NameButton.TextStrokeTransparency = BaseMessage.TextStrokeTransparency
	NameButton.TextColor3 = nameColor
	NameButton.Text = formatName
	NameButton.Visible = true
	NameButton.Parent = BaseMessage

	local clickedConn = NameButton.MouseButton1Click:connect(function()
		self:NameButtonClicked(NameButton, playerName)
	end)

	local changedConn = nil
	changedConn = NameButton.Changed:connect(function(prop)
		if prop == "Parent" then
			clickedConn:Disconnect()
			changedConn:Disconnect()
		end
	end)

	return NameButton
end

function methods:AddTranslationButtonToBaseMessage(BaseMessage)
	local buttonSize = math.floor(BaseMessage.TextSize * 0.9)
	local translationButtonSize = Vector2.new(buttonSize, buttonSize)
	local TranslationButton = self:GetFromObjectPool("ImageButton")
	TranslationButton.Selectable = false
	TranslationButton.Size = UDim2.new(0, translationButtonSize.X, 0, translationButtonSize.Y)
	TranslationButton.Position = UDim2.new(0, 0, 0, 0)
	TranslationButton.BackgroundTransparency = 1
	TranslationButton.Visible = false
	TranslationButton.Parent = BaseMessage
	TranslationButton.Image = "rbxasset://textures/translateIcon.png"
	TranslationButton.HoverImage = "rbxasset://textures/translateIconDark.png"
	TranslationButton.PressedImage = "rbxasset://textures/translateIconDark.png"
	
	return TranslationButton
end

function methods:AddChannelButtonToBaseMessage(BaseMessage, channelColor, formatChannelName, channelName)
	local channelNameSize = self:GetStringTextBounds(formatChannelName, BaseMessage.Font, BaseMessage.TextSize)
	local ChannelButton = self:GetFromObjectPool("TextButton")
	ChannelButton.Selectable = false
	ChannelButton.Size = UDim2.new(0, channelNameSize.X, 0, channelNameSize.Y)
	ChannelButton.Position = UDim2.new(0, 0, 0, 0)
	ChannelButton.BackgroundTransparency = 1
	ChannelButton.Font = BaseMessage.Font
	ChannelButton.TextSize = BaseMessage.TextSize
	ChannelButton.TextXAlignment = BaseMessage.TextXAlignment
	ChannelButton.TextYAlignment = BaseMessage.TextYAlignment
	ChannelButton.TextTransparency = BaseMessage.TextTransparency
	ChannelButton.TextStrokeTransparency = BaseMessage.TextStrokeTransparency
	ChannelButton.TextColor3 = channelColor
	ChannelButton.Text = formatChannelName
	ChannelButton.Visible = true
	ChannelButton.Parent = BaseMessage

	local clickedConn = ChannelButton.MouseButton1Click:connect(function()
		self:ChannelButtonClicked(ChannelButton, channelName)
	end)

	local changedConn = nil
 	changedConn = ChannelButton.Changed:connect(function(prop)
		if prop == "Parent" then
			clickedConn:Disconnect()
			changedConn:Disconnect()
		end
	end)

	return ChannelButton
end

function methods:AddTagLabelToBaseMessage(BaseMessage, tagColor, formatTagText)
	local tagNameSize = self:GetStringTextBounds(formatTagText, BaseMessage.Font, BaseMessage.TextSize)
	local TagLabel = self:GetFromObjectPool("TextLabel")
	TagLabel.Selectable = false
	TagLabel.Size = UDim2.new(0, tagNameSize.X, 0, tagNameSize.Y)
	TagLabel.Position = UDim2.new(0, 0, 0, 0)
	TagLabel.BackgroundTransparency = 1
	TagLabel.Font = BaseMessage.Font
	TagLabel.TextSize = BaseMessage.TextSize
	TagLabel.TextXAlignment = BaseMessage.TextXAlignment
	TagLabel.TextYAlignment = BaseMessage.TextYAlignment
	TagLabel.TextTransparency = BaseMessage.TextTransparency
	TagLabel.TextStrokeTransparency = BaseMessage.TextStrokeTransparency
	TagLabel.TextColor3 = tagColor
	TagLabel.Text = formatTagText
	TagLabel.Visible = true
	TagLabel.Parent = BaseMessage

	return TagLabel
end

function GetWhisperChannelPrefix()
	if ChatConstants.WhisperChannelPrefix then
		return ChatConstants.WhisperChannelPrefix
	end
	return "To "
end

function methods:NameButtonClicked(nameButton, playerName)
	if not self.ChatWindow then
		return
	end

	if ChatSettings.ClickOnPlayerNameToWhisper then
		local player = Players:FindFirstChild(playerName)
		if player and player ~= LocalPlayer then
			local whisperChannel = GetWhisperChannelPrefix() ..playerName
			if self.ChatWindow:GetChannel(whisperChannel) then
				self.ChatBar:ResetCustomState()
				local targetChannelName = self.ChatWindow:GetTargetMessageChannel()
				if targetChannelName ~= whisperChannel then
					self.ChatWindow:SwitchCurrentChannel(whisperChannel)
				end

				local whisperMessage = "/w " ..playerName
				self.ChatBar:SetText(whisperMessage)

				self.ChatBar:CaptureFocus()
			elseif not self.ChatBar:IsInCustomState() then
				local whisperMessage = "/w " ..playerName
				self.ChatBar:SetText(whisperMessage)

				self.ChatBar:CaptureFocus()
			end
		end
	end
end

function methods:ChannelButtonClicked(channelButton, channelName)
	if not self.ChatWindow then
		return
	end

	if ChatSettings.ClickOnChannelNameToSetMainChannel then
		if self.ChatWindow:GetChannel(channelName) then
			self.ChatBar:ResetCustomState()
			local targetChannelName = self.ChatWindow:GetTargetMessageChannel()
			if targetChannelName ~= channelName then
				self.ChatWindow:SwitchCurrentChannel(channelName)
			end
			self.ChatBar:ResetText()
			self.ChatBar:CaptureFocus()
		end
	end
end

function methods:RegisterChatWindow(chatWindow)
	self.ChatWindow = chatWindow
	self.ChatBar = chatWindow:GetChatBar()
end

function methods:GetFromObjectPool(className)
	if self.ObjectPool == nil then
		return Instance.new(className)
	end
	return self.ObjectPool:GetInstance(className)
end

function methods:RegisterObjectPool(objectPool)
	self.ObjectPool = objectPool
end

-- CreateFadeFunctions usage:
-- fadeObjects is a map of text labels and button to start and end values for a given property.
-- e.g {
--   NameButton = {
--     TextTransparency = {
--       FadedIn = 0.5,
--       FadedOut = 1,
--     }
--   },
--  ImageOne = {
--	  ImageTransparency = {
--       FadedIn = 0,
--       FadedOut = 0.5,
--     }
--   }
-- }
function methods:CreateFadeFunctions(fadeObjects)
	local AnimParams = {}
	for object, properties in pairs(fadeObjects) do
		AnimParams[object] = {}
		for property, values in pairs(properties) do
			AnimParams[object][property] = {
				Target = values.FadedIn,
				Current = object[property],
				NormalizedExptValue = 1,
			}
		end
	end

	local function FadeInFunction(duration, CurveUtil)
		for object, properties in pairs(AnimParams) do
			for property, values in pairs(properties) do
				values.Target = fadeObjects[object][property].FadedIn
				values.NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
			end
		end
	end

	local function FadeOutFunction(duration, CurveUtil)
		for object, properties in pairs(AnimParams) do
			for property, values in pairs(properties) do
				values.Target = fadeObjects[object][property].FadedOut
				values.NormalizedExptValue = CurveUtil:NormalizedDefaultExptValueInSeconds(duration)
			end
		end
	end

	local function AnimGuiObjects()
		for object, properties in pairs(AnimParams) do
			for property, values in pairs(properties) do
				object[property] = values.Current
			end
		end
	end

	local function UpdateAnimFunction(dtScale, CurveUtil)
		for object, properties in pairs(AnimParams) do
			for property, values in pairs(properties) do
				values.Current = CurveUtil:Expt(
					values.Current,
					values.Target,
					values.NormalizedExptValue,
					dtScale
				)
			end
		end

		AnimGuiObjects()
	end

	return FadeInFunction, FadeOutFunction, UpdateAnimFunction
end

function methods:NewBindableEvent(name)
	local bindable = Instance.new("BindableEvent")
	bindable.Name = name
	return bindable
end

--- DEPRECATED METHODS:
function methods:RegisterGuiRoot()
	-- This is left here for compatibility with ChatScript versions lower than 0.5
end
--- End of Deprecated methods.

function module.new()
	local obj = setmetatable({}, methods)

	obj.ObjectPool = nil
	obj.ChatWindow = nil

	obj.DEFAULT_MESSAGE_CREATOR = DEFAULT_MESSAGE_CREATOR
	obj.MESSAGE_CREATOR_MODULES_VERSION = MESSAGE_CREATOR_MODULES_VERSION

	obj.KEY_MESSAGE_TYPE = KEY_MESSAGE_TYPE
	obj.KEY_CREATOR_FUNCTION = KEY_CREATOR_FUNCTION

	obj.KEY_BASE_FRAME = KEY_BASE_FRAME
	obj.KEY_BASE_MESSAGE = KEY_BASE_MESSAGE
	obj.KEY_UPDATE_TEXT_FUNC = KEY_UPDATE_TEXT_FUNC
	obj.KEY_GET_HEIGHT = KEY_GET_HEIGHT
	obj.KEY_FADE_IN = KEY_FADE_IN
	obj.KEY_FADE_OUT = KEY_FADE_OUT
	obj.KEY_UPDATE_ANIMATION = KEY_UPDATE_ANIMATION

	return obj
end

return module.new()
