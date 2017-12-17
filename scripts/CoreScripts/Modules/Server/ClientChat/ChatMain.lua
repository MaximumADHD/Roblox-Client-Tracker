--	// FileName: ChatMain.lua
--	// Written by: Xsitsu
--	// Description: Main module to handle initializing chat window UI and hooking up events to individual UI pieces.

local moduleApiTable = {}

--// This section of code waits until all of the necessary RemoteEvents are found in EventFolder.
--// I have to do some weird stuff since people could potentially already have pre-existing
--// things in a folder with the same name, and they may have different class types.
--// I do the useEvents thing and set EventFolder to useEvents so I can have a pseudo folder that
--// the rest of the code can interface with and have the guarantee that the RemoteEvents they want
--// exist with their desired names.

local FILTER_MESSAGE_TIMEOUT = 60

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Chat = game:GetService("Chat")
local StarterGui = game:GetService("StarterGui")

local DefaultChatSystemChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
local EventFolder = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local messageCreatorModules = clientChatModules:WaitForChild("MessageCreatorModules")
local MessageCreatorUtil = require(messageCreatorModules:WaitForChild("Util"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

local numChildrenRemaining = 10 -- #waitChildren returns 0 because it's a dictionary
local waitChildren =
{
	OnNewMessage = "RemoteEvent",
	OnMessageDoneFiltering = "RemoteEvent",
	OnNewSystemMessage = "RemoteEvent",
	OnChannelJoined = "RemoteEvent",
	OnChannelLeft = "RemoteEvent",
	OnMuted = "RemoteEvent",
	OnUnmuted = "RemoteEvent",
	OnMainChannelSet = "RemoteEvent",

	SayMessageRequest = "RemoteEvent",
	GetInitDataRequest = "RemoteFunction",
}
-- waitChildren/EventFolder does not contain all the remote events, because the server version could be older than the client version.
-- In that case it would not create the new events.
-- These events are accessed directly from DefaultChatSystemChatEvents

local useEvents = {}

local FoundAllEventsEvent = Instance.new("BindableEvent")

function TryRemoveChildWithVerifyingIsCorrectType(child)
	if (waitChildren[child.Name] and child:IsA(waitChildren[child.Name])) then
		waitChildren[child.Name] = nil
		useEvents[child.Name] = child
		numChildrenRemaining = numChildrenRemaining - 1
	end
end

for i, child in pairs(EventFolder:GetChildren()) do
	TryRemoveChildWithVerifyingIsCorrectType(child)
end

if (numChildrenRemaining > 0) then
	local con = EventFolder.ChildAdded:connect(function(child)
		TryRemoveChildWithVerifyingIsCorrectType(child)
		if (numChildrenRemaining < 1) then
			FoundAllEventsEvent:Fire()
		end
	end)

	FoundAllEventsEvent.Event:wait()
	con:disconnect()

	FoundAllEventsEvent:Destroy()
end

EventFolder = useEvents



--// Rest of code after waiting for correct events.

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

while not LocalPlayer do
	Players.ChildAdded:wait()
	LocalPlayer = Players.LocalPlayer
end

local canChat = true

local ChatDisplayOrder = 6
if ChatSettings.ScreenGuiDisplayOrder ~= nil then
	ChatDisplayOrder = ChatSettings.ScreenGuiDisplayOrder
end

local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local GuiParent = Instance.new("ScreenGui")
GuiParent.Name = "Chat"
GuiParent.ResetOnSpawn = false
GuiParent.DisplayOrder = ChatDisplayOrder
GuiParent.Parent = PlayerGui

local DidFirstChannelsLoads = false

local modulesFolder = script

local moduleChatWindow = require(modulesFolder:WaitForChild("ChatWindow"))
local moduleChatBar = require(modulesFolder:WaitForChild("ChatBar"))
local moduleChannelsBar = require(modulesFolder:WaitForChild("ChannelsBar"))
local moduleMessageLabelCreator = require(modulesFolder:WaitForChild("MessageLabelCreator"))
local moduleMessageLogDisplay = require(modulesFolder:WaitForChild("MessageLogDisplay"))
local moduleChatChannel = require(modulesFolder:WaitForChild("ChatChannel"))
local moduleCommandProcessor = require(modulesFolder:WaitForChild("CommandProcessor"))

local ChatWindow = moduleChatWindow.new()
local ChannelsBar = moduleChannelsBar.new()
local MessageLogDisplay = moduleMessageLogDisplay.new()
local CommandProcessor = moduleCommandProcessor.new()
local ChatBar = moduleChatBar.new(CommandProcessor, ChatWindow)

ChatWindow:CreateGuiObjects(GuiParent)

ChatWindow:RegisterChatBar(ChatBar)
ChatWindow:RegisterChannelsBar(ChannelsBar)
ChatWindow:RegisterMessageLogDisplay(MessageLogDisplay)

MessageCreatorUtil:RegisterChatWindow(ChatWindow)

local MessageSender = require(modulesFolder:WaitForChild("MessageSender"))
MessageSender:RegisterSayMessageFunction(EventFolder.SayMessageRequest)



if (UserInputService.TouchEnabled) then
	ChatBar:SetTextLabelText(ChatLocalization:Get("GameChat_ChatMain_ChatBarText",'Tap here to chat'))
else
	ChatBar:SetTextLabelText(ChatLocalization:Get("GameChat_ChatMain_ChatBarTextTouch",'To chat click here or press "/" key'))
end

spawn(function()
	local CurveUtil = require(modulesFolder:WaitForChild("CurveUtil"))
	local animationFps = ChatSettings.ChatAnimationFPS or 20.0

	local updateWaitTime = 1.0 / animationFps
	local lastTick = tick()
	while true do
		local currentTick = tick()
		local tickDelta = currentTick - lastTick
		local dtScale = CurveUtil:DeltaTimeToTimescale(tickDelta)

		if dtScale ~= 0 then
			ChatWindow:Update(dtScale)
		end

		lastTick = currentTick
		wait(updateWaitTime)
	end
end)




--////////////////////////////////////////////////////////////////////////////////////////////
--////////////////////////////////////////////////////////////// Code to do chat window fading
--////////////////////////////////////////////////////////////////////////////////////////////
function CheckIfPointIsInSquare(checkPos, topLeft, bottomRight)
	return (topLeft.X <= checkPos.X and checkPos.X <= bottomRight.X and
		topLeft.Y <= checkPos.Y and checkPos.Y <= bottomRight.Y)
end

local backgroundIsFaded = false
local textIsFaded = false
local lastTextFadeTime = 0
local lastBackgroundFadeTime = 0

local fadedChanged = Instance.new("BindableEvent")
local mouseStateChanged = Instance.new("BindableEvent")
local chatBarFocusChanged = Instance.new("BindableEvent")

function DoBackgroundFadeIn(setFadingTime)
	lastBackgroundFadeTime = tick()
	backgroundIsFaded = false
	fadedChanged:Fire()
	ChatWindow:FadeInBackground((setFadingTime or ChatSettings.ChatDefaultFadeDuration))

	local currentChannelObject = ChatWindow:GetCurrentChannel()
	if (currentChannelObject) then

		local Scroller = MessageLogDisplay.Scroller
		Scroller.ScrollingEnabled = true
		Scroller.ScrollBarThickness = moduleMessageLogDisplay.ScrollBarThickness
	end
end

function DoBackgroundFadeOut(setFadingTime)
	lastBackgroundFadeTime = tick()
	backgroundIsFaded = true
	fadedChanged:Fire()
	ChatWindow:FadeOutBackground((setFadingTime or ChatSettings.ChatDefaultFadeDuration))

	local currentChannelObject = ChatWindow:GetCurrentChannel()
	if (currentChannelObject) then

		local Scroller = MessageLogDisplay.Scroller
		Scroller.ScrollingEnabled = false
		Scroller.ScrollBarThickness = 0
	end
end

function DoTextFadeIn(setFadingTime)
	lastTextFadeTime = tick()
	textIsFaded = false
	fadedChanged:Fire()
	ChatWindow:FadeInText((setFadingTime or ChatSettings.ChatDefaultFadeDuration) * 0)
end

function DoTextFadeOut(setFadingTime)
	lastTextFadeTime = tick()
	textIsFaded = true
	fadedChanged:Fire()
	ChatWindow:FadeOutText((setFadingTime or ChatSettings.ChatDefaultFadeDuration))
end

function DoFadeInFromNewInformation()
	DoTextFadeIn()
	if ChatSettings.ChatShouldFadeInFromNewInformation then
		DoBackgroundFadeIn()
	end
end

function InstantFadeIn()
	DoBackgroundFadeIn(0)
	DoTextFadeIn(0)
end

function InstantFadeOut()
	DoBackgroundFadeOut(0)
	DoTextFadeOut(0)
end

local mouseIsInWindow = nil
function UpdateFadingForMouseState(mouseState)
	mouseIsInWindow = mouseState

	mouseStateChanged:Fire()

	if (ChatBar:IsFocused()) then return end

	if (mouseState) then
		DoBackgroundFadeIn()
		DoTextFadeIn()
	else
		DoBackgroundFadeIn()
	end
end


spawn(function()
	while true do
		RunService.RenderStepped:wait()

		while (mouseIsInWindow or ChatBar:IsFocused()) do
			if (mouseIsInWindow) then
				mouseStateChanged.Event:wait()
			end
			if (ChatBar:IsFocused()) then
				chatBarFocusChanged.Event:wait()
			end
		end

		if (not backgroundIsFaded) then
			local timeDiff = tick() - lastBackgroundFadeTime
			if (timeDiff > ChatSettings.ChatWindowBackgroundFadeOutTime) then
				DoBackgroundFadeOut()
			end

		elseif (not textIsFaded) then
			local timeDiff = tick() - lastTextFadeTime
			if (timeDiff > ChatSettings.ChatWindowTextFadeOutTime) then
				DoTextFadeOut()
			end

		else
			fadedChanged.Event:wait()

		end

	end
end)

function getClassicChatEnabled()
	if ChatSettings.ClassicChatEnabled ~= nil then
		return ChatSettings.ClassicChatEnabled
	end
	return Players.ClassicChat
end

function getBubbleChatEnabled()
	if ChatSettings.BubbleChatEnabled ~= nil then
		return ChatSettings.BubbleChatEnabled
	end
	return Players.BubbleChat
end

function bubbleChatOnly()
 	return not getClassicChatEnabled() and getBubbleChatEnabled()
end

function UpdateMousePosition(mousePos)
	if not (moduleApiTable.Visible and moduleApiTable.IsCoreGuiEnabled and (moduleApiTable.TopbarEnabled or ChatSettings.ChatOnWithTopBarOff)) then return end

	if bubbleChatOnly() then
		return
	end

	local windowPos = ChatWindow.GuiObject.AbsolutePosition
	local windowSize = ChatWindow.GuiObject.AbsoluteSize

	local newMouseState = CheckIfPointIsInSquare(mousePos, windowPos, windowPos + windowSize)
	if (newMouseState ~= mouseIsInWindow) then
		UpdateFadingForMouseState(newMouseState)
	end
end

UserInputService.InputChanged:connect(function(inputObject)
	if (inputObject.UserInputType == Enum.UserInputType.MouseMovement) then
		local mousePos = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
		UpdateMousePosition(mousePos)
	end
end)

UserInputService.TouchTap:connect(function(tapPos, gameProcessedEvent)
	UpdateMousePosition(tapPos[1])
end)

UserInputService.TouchMoved:connect(function(inputObject, gameProcessedEvent)
	local tapPos = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
	UpdateMousePosition(tapPos)
end)

UserInputService.Changed:connect(function(prop)
	if prop == "MouseBehavior" then
		if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
			local windowPos = ChatWindow.GuiObject.AbsolutePosition
			local windowSize = ChatWindow.GuiObject.AbsoluteSize
			local screenSize = GuiParent.AbsoluteSize

			local centerScreenIsInWindow = CheckIfPointIsInSquare(screenSize/2, windowPos, windowPos + windowSize)
			if centerScreenIsInWindow then
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
		end
	end
end)

--// Start and stop fading sequences / timers
UpdateFadingForMouseState(true)
UpdateFadingForMouseState(false)


--////////////////////////////////////////////////////////////////////////////////////////////
--///////////// Code to talk to topbar and maintain set/get core backwards compatibility stuff
--////////////////////////////////////////////////////////////////////////////////////////////
local Util = {}
do
	function Util.Signal()
		local sig = {}

		local mSignaler = Instance.new('BindableEvent')

		local mArgData = nil
		local mArgDataCount = nil

		function sig:fire(...)
			mArgData = {...}
			mArgDataCount = select('#', ...)
			mSignaler:Fire()
		end

		function sig:connect(f)
			if not f then error("connect(nil)", 2) end
			return mSignaler.Event:connect(function()
				f(unpack(mArgData, 1, mArgDataCount))
			end)
		end

		function sig:wait()
			mSignaler.Event:wait()
			assert(mArgData, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
			return unpack(mArgData, 1, mArgDataCount)
		end

		return sig
	end
end


function SetVisibility(val)
	ChatWindow:SetVisible(val)
	moduleApiTable.VisibilityStateChanged:fire(val)
	moduleApiTable.Visible = val

	if (moduleApiTable.IsCoreGuiEnabled) then
		if (val) then
			InstantFadeIn()
		else
			InstantFadeOut()
		end
	end
end

do
	moduleApiTable.TopbarEnabled = true
	moduleApiTable.MessageCount = 0
	moduleApiTable.Visible = true
	moduleApiTable.IsCoreGuiEnabled = true

	function moduleApiTable:ToggleVisibility()
		SetVisibility(not ChatWindow:GetVisible())
	end

	function moduleApiTable:SetVisible(visible)
		if (ChatWindow:GetVisible() ~= visible) then
			SetVisibility(visible)
		end
	end

	function moduleApiTable:FocusChatBar()
		ChatBar:CaptureFocus()
	end

	function moduleApiTable:GetVisibility()
		return ChatWindow:GetVisible()
	end

	function moduleApiTable:GetMessageCount()
		return self.MessageCount
	end

	function moduleApiTable:TopbarEnabledChanged(enabled)
		self.TopbarEnabled = enabled
		self.CoreGuiEnabled:fire(game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Chat))
	end

	function moduleApiTable:IsFocused(useWasFocused)
		return ChatBar:IsFocused()
	end

	moduleApiTable.ChatBarFocusChanged = Util.Signal()
	moduleApiTable.VisibilityStateChanged = Util.Signal()
	moduleApiTable.MessagesChanged = Util.Signal()


	moduleApiTable.MessagePosted = Util.Signal()
	moduleApiTable.CoreGuiEnabled = Util.Signal()

	moduleApiTable.ChatMakeSystemMessageEvent = Util.Signal()
	moduleApiTable.ChatWindowPositionEvent = Util.Signal()
	moduleApiTable.ChatWindowSizeEvent = Util.Signal()
	moduleApiTable.ChatBarDisabledEvent = Util.Signal()


	function moduleApiTable:fChatWindowPosition()
		return ChatWindow.GuiObject.Position
	end

	function moduleApiTable:fChatWindowSize()
		return ChatWindow.GuiObject.Size
	end

	function moduleApiTable:fChatBarDisabled()
		return not ChatBar:GetEnabled()
	end



	function moduleApiTable:SpecialKeyPressed(key, modifiers)
		if (key == Enum.SpecialKey.ChatHotkey) then
			if canChat then
				DoChatBarFocus()
			end
		end
	end
end

moduleApiTable.CoreGuiEnabled:connect(function(enabled)
	moduleApiTable.IsCoreGuiEnabled = enabled

	enabled = enabled and (moduleApiTable.TopbarEnabled or ChatSettings.ChatOnWithTopBarOff)

	ChatWindow:SetCoreGuiEnabled(enabled)

	if (not enabled) then
		ChatBar:ReleaseFocus()
		InstantFadeOut()
	else
		InstantFadeIn()
	end
end)

function trimTrailingSpaces(str)
	local lastSpace = #str
	while lastSpace > 0 do
		--- The pattern ^%s matches whitespace at the start of the string. (Starting from lastSpace)
		if str:find("^%s", lastSpace) then
			lastSpace = lastSpace - 1
		else
			break
		end
	end
	return str:sub(1, lastSpace)
end

moduleApiTable.ChatMakeSystemMessageEvent:connect(function(valueTable)
	if (valueTable["Text"] and type(valueTable["Text"]) == "string") then
		while (not DidFirstChannelsLoads) do wait() end

		local channel = ChatSettings.GeneralChannelName
		local channelObj = ChatWindow:GetChannel(channel)

		if (channelObj) then
			local messageObject = {
				ID = -1,
				FromSpeaker = nil,
				SpeakerUserId = 0,
				OriginalChannel = channel,
				IsFiltered = true,
				MessageLength = string.len(valueTable.Text),
				Message = trimTrailingSpaces(valueTable.Text),
				MessageType = ChatConstants.MessageTypeSetCore,
				Time = os.time(),
				ExtraData = valueTable,
			}
			channelObj:AddMessageToChannel(messageObject)
			ChannelsBar:UpdateMessagePostedInChannel(channel)

			moduleApiTable.MessageCount = moduleApiTable.MessageCount + 1
			moduleApiTable.MessagesChanged:fire(moduleApiTable.MessageCount)
		end
	end
end)

moduleApiTable.ChatBarDisabledEvent:connect(function(disabled)
	if canChat then
		ChatBar:SetEnabled(not disabled)
		if (disabled) then
			ChatBar:ReleaseFocus()
		end
	end
end)

moduleApiTable.ChatWindowSizeEvent:connect(function(size)
	ChatWindow.GuiObject.Size = size
end)

moduleApiTable.ChatWindowPositionEvent:connect(function(position)
	ChatWindow.GuiObject.Position = position
end)

--////////////////////////////////////////////////////////////////////////////////////////////
--///////////////////////////////////////////////// Code to hook client UI up to server events
--////////////////////////////////////////////////////////////////////////////////////////////

function DoChatBarFocus()
	if (not ChatWindow:GetCoreGuiEnabled()) then return end
	if (not ChatBar:GetEnabled()) then return end

	if (not ChatBar:IsFocused() and ChatBar:GetVisible()) then
		moduleApiTable:SetVisible(true)
		InstantFadeIn()
		ChatBar:CaptureFocus()
		moduleApiTable.ChatBarFocusChanged:fire(true)
	end
end

chatBarFocusChanged.Event:connect(function(focused)
	moduleApiTable.ChatBarFocusChanged:fire(focused)
end)

function DoSwitchCurrentChannel(targetChannel)
	if (ChatWindow:GetChannel(targetChannel)) then
		ChatWindow:SwitchCurrentChannel(targetChannel)
	end
end

function SendMessageToSelfInTargetChannel(message, channelName, extraData)
	local channelObj = ChatWindow:GetChannel(channelName)
	if (channelObj) then
		local messageData =
		{
			ID = -1,
			FromSpeaker = nil,
			SpeakerUserId = 0,
			OriginalChannel = channelName,
			IsFiltered = true,
			MessageLength = string.len(message),
			Message = trimTrailingSpaces(message),
			MessageType = ChatConstants.MessageTypeSystem,
			Time = os.time(),
			ExtraData = extraData,
		}

		channelObj:AddMessageToChannel(messageData)
	end
end

function chatBarFocused()
	if (not mouseIsInWindow) then
		DoBackgroundFadeIn()
		if (textIsFaded) then
			DoTextFadeIn()
		end
	end

	chatBarFocusChanged:Fire(true)
end

--// Event for making player say chat message.
function chatBarFocusLost(enterPressed, inputObject)
	DoBackgroundFadeIn()
	chatBarFocusChanged:Fire(false)

	if (enterPressed) then
		local message = ChatBar:GetTextBox().Text

		if ChatBar:IsInCustomState() then
			local customMessage = ChatBar:GetCustomMessage()
			if customMessage then
				message = customMessage
			end
			local messageSunk = ChatBar:CustomStateProcessCompletedMessage(message)
			ChatBar:ResetCustomState()
			if messageSunk then
				return
			end
		end

		message = string.sub(message, 1, ChatSettings.MaximumMessageLength)

		ChatBar:GetTextBox().Text = ""

		if message ~= "" then
			--// Sends signal to eventually call Player:Chat() to handle C++ side legacy stuff.
			moduleApiTable.MessagePosted:fire(message)

			if not CommandProcessor:ProcessCompletedChatMessage(message, ChatWindow) then
				if ChatSettings.DisallowedWhiteSpace then
					for i = 1, #ChatSettings.DisallowedWhiteSpace do
						if ChatSettings.DisallowedWhiteSpace[i] == "\t" then
							message = string.gsub(message, ChatSettings.DisallowedWhiteSpace[i], " ")
						else
							message = string.gsub(message, ChatSettings.DisallowedWhiteSpace[i], "")
						end
					end
				end
				message = string.gsub(message, "\n", "")
				message = string.gsub(message, "[ ]+", " ")

				local targetChannel = ChatWindow:GetTargetMessageChannel()
				if targetChannel then
					MessageSender:SendMessage(message, targetChannel)
				else
					MessageSender:SendMessage(message, nil)
				end
			end
		end

	end
end

local ChatBarConnections = {}
function setupChatBarConnections()
	for i = 1, #ChatBarConnections do
		ChatBarConnections[i]:Disconnect()
	end
	ChatBarConnections = {}

	local focusLostConnection = ChatBar:GetTextBox().FocusLost:connect(chatBarFocusLost)
	table.insert(ChatBarConnections, focusLostConnection)

	local focusGainedConnection = ChatBar:GetTextBox().Focused:connect(chatBarFocused)
	table.insert(ChatBarConnections, focusGainedConnection)
end

setupChatBarConnections()
ChatBar.GuiObjectsChanged:connect(setupChatBarConnections)

function getEchoMessagesInGeneral()
	if ChatSettings.EchoMessagesInGeneralChannel == nil then
		return true
	end
	return ChatSettings.EchoMessagesInGeneralChannel
end

EventFolder.OnMessageDoneFiltering.OnClientEvent:connect(function(messageData)
	if not ChatSettings.ShowUserOwnFilteredMessage then
		if messageData.FromSpeaker == LocalPlayer.Name then
			return
		end
	end

	local channelName = messageData.OriginalChannel
	local channelObj = ChatWindow:GetChannel(channelName)
	if channelObj then
		channelObj:UpdateMessageFiltered(messageData)
	end

	if getEchoMessagesInGeneral() and ChatSettings.GeneralChannelName and channelName ~= ChatSettings.GeneralChannelName then
		local generalChannel = ChatWindow:GetChannel(ChatSettings.GeneralChannelName)
		if generalChannel then
			generalChannel:UpdateMessageFiltered(messageData)
		end
	end
end)

EventFolder.OnNewMessage.OnClientEvent:connect(function(messageData, channelName)
	local channelObj = ChatWindow:GetChannel(channelName)
	if (channelObj) then
		channelObj:AddMessageToChannel(messageData)

		if (messageData.FromSpeaker ~= LocalPlayer.Name) then
			ChannelsBar:UpdateMessagePostedInChannel(channelName)
		end

		if getEchoMessagesInGeneral() and ChatSettings.GeneralChannelName and channelName ~= ChatSettings.GeneralChannelName then
			local generalChannel = ChatWindow:GetChannel(ChatSettings.GeneralChannelName)
			if generalChannel then
				generalChannel:AddMessageToChannel(messageData)
			end
		end

		moduleApiTable.MessageCount = moduleApiTable.MessageCount + 1
		moduleApiTable.MessagesChanged:fire(moduleApiTable.MessageCount)

		DoFadeInFromNewInformation()
	end
end)

EventFolder.OnNewSystemMessage.OnClientEvent:connect(function(messageData, channelName)
	channelName = channelName or "System"

	local channelObj = ChatWindow:GetChannel(channelName)
	if (channelObj) then
		channelObj:AddMessageToChannel(messageData)

		ChannelsBar:UpdateMessagePostedInChannel(channelName)

		moduleApiTable.MessageCount = moduleApiTable.MessageCount + 1
		moduleApiTable.MessagesChanged:fire(moduleApiTable.MessageCount)

		DoFadeInFromNewInformation()

		if getEchoMessagesInGeneral() and ChatSettings.GeneralChannelName and channelName ~= ChatSettings.GeneralChannelName then
			local generalChannel = ChatWindow:GetChannel(ChatSettings.GeneralChannelName)
			if generalChannel then
				generalChannel:AddMessageToChannel(messageData)
			end
		end
	else
		warn(string.format("Just received system message for channel I'm not in [%s]", channelName))
	end
end)


function HandleChannelJoined(channel, welcomeMessage, messageLog, channelNameColor, addHistoryToGeneralChannel,
	addWelcomeMessageToGeneralChannel)
	if ChatWindow:GetChannel(channel) then
		--- If the channel has already been added, remove it first.
		ChatWindow:RemoveChannel(channel)
	end

	if (channel == ChatSettings.GeneralChannelName) then
		DidFirstChannelsLoads = true
	end

	if channelNameColor then
		ChatBar:SetChannelNameColor(channel, channelNameColor)
	end

	local channelObj = ChatWindow:AddChannel(channel)

	if (channelObj) then
		if (channel == ChatSettings.GeneralChannelName) then
			DoSwitchCurrentChannel(channel)
		end

		if (messageLog) then
			local startIndex = 1
			if #messageLog > ChatSettings.MessageHistoryLengthPerChannel then
				startIndex = #messageLog - ChatSettings.MessageHistoryLengthPerChannel
			end

			for i = startIndex, #messageLog do
				channelObj:AddMessageToChannel(messageLog[i])
			end

			if getEchoMessagesInGeneral() and addHistoryToGeneralChannel then
				if ChatSettings.GeneralChannelName and channel ~= ChatSettings.GeneralChannelName then
					local generalChannel = ChatWindow:GetChannel(ChatSettings.GeneralChannelName)
					if generalChannel then
						generalChannel:AddMessagesToChannelByTimeStamp(messageLog, startIndex)
					end
				end
			end
		end

		if (welcomeMessage ~= "") then
			local welcomeMessageObject = {
				ID = -1,
				FromSpeaker = nil,
				SpeakerUserId = 0,
				OriginalChannel = channel,
				IsFiltered = true,
				MessageLength = string.len(welcomeMessage),
				Message = trimTrailingSpaces(welcomeMessage),
				MessageType = ChatConstants.MessageTypeWelcome,
				Time = os.time(),
				ExtraData = nil,
			}
			channelObj:AddMessageToChannel(welcomeMessageObject)

			if getEchoMessagesInGeneral() and addWelcomeMessageToGeneralChannel and not ChatSettings.ShowChannelsBar then
				if channel ~= ChatSettings.GeneralChannelName then
					local generalChannel = ChatWindow:GetChannel(ChatSettings.GeneralChannelName)
					if generalChannel then
						generalChannel:AddMessageToChannel(welcomeMessageObject)
					end
				end
			end
		end

		DoFadeInFromNewInformation()
	end

end

EventFolder.OnChannelJoined.OnClientEvent:connect(function(channel, welcomeMessage, messageLog, channelNameColor)
	HandleChannelJoined(channel, welcomeMessage, messageLog, channelNameColor, false, true)
end)

EventFolder.OnChannelLeft.OnClientEvent:connect(function(channel)
	ChatWindow:RemoveChannel(channel)

	DoFadeInFromNewInformation()
end)

EventFolder.OnMuted.OnClientEvent:connect(function(channel)
	--// Do something eventually maybe?
	--// This used to take away the chat bar in channels the player was muted in.
	--// We found out this behavior was inconvenient for doing chat commands though.
end)

EventFolder.OnUnmuted.OnClientEvent:connect(function(channel)
	--// Same as above.
end)

EventFolder.OnMainChannelSet.OnClientEvent:connect(function(channel)
	DoSwitchCurrentChannel(channel)
end)

coroutine.wrap(function()
	-- ChannelNameColorUpdated may not exist if the client version is older than the server version.
	local ChannelNameColorUpdated = DefaultChatSystemChatEvents:WaitForChild("ChannelNameColorUpdated", 5)
	if ChannelNameColorUpdated then
		ChannelNameColorUpdated.OnClientEvent:connect(function(channelName, channelNameColor)
			ChatBar:SetChannelNameColor(channelName, channelNameColor)
		end)
	end
end)()


--- Interaction with SetCore Player events.

local PlayerBlockedEvent = nil
local PlayerMutedEvent = nil
local PlayerUnBlockedEvent = nil
local PlayerUnMutedEvent = nil


-- This is pcalled because the SetCore methods may not be released yet.
pcall(function()
	PlayerBlockedEvent = StarterGui:GetCore("PlayerBlockedEvent")
	PlayerMutedEvent = StarterGui:GetCore("PlayerMutedEvent")
	PlayerUnBlockedEvent = StarterGui:GetCore("PlayerUnblockedEvent")
	PlayerUnMutedEvent = StarterGui:GetCore("PlayerUnmutedEvent")
end)

function SendSystemMessageToSelf(message)
	local currentChannel = ChatWindow:GetCurrentChannel()

	if currentChannel then
		local messageData =
		{
			ID = -1,
			FromSpeaker = nil,
			SpeakerUserId = 0,
			OriginalChannel = currentChannel.Name,
			IsFiltered = true,
			MessageLength = string.len(message),
			Message = trimTrailingSpaces(message),
			MessageType = ChatConstants.MessageTypeSystem,
			Time = os.time(),
			ExtraData = nil,
		}

		currentChannel:AddMessageToChannel(messageData)
	end
end

function MutePlayer(player)
	local mutePlayerRequest = DefaultChatSystemChatEvents:FindFirstChild("MutePlayerRequest")
	if mutePlayerRequest then
		return mutePlayerRequest:InvokeServer(player.Name)
	end
	return false
end

if PlayerBlockedEvent then
	PlayerBlockedEvent.Event:connect(function(player)
		if MutePlayer(player) then
			SendSystemMessageToSelf(
				string.gsub(
					ChatLocalization:Get(
						"GameChat_ChatMain_SpeakerHasBeenBlocked", 
						string.format("Speaker '%s' has been blocked.", player.Name)
					),
					"{RBX_NAME}",player.Name
				)
			)
		end
	end)
end

if PlayerMutedEvent then
	PlayerMutedEvent.Event:connect(function(player)
		if MutePlayer(player) then
			SendSystemMessageToSelf(
				string.gsub(
					ChatLocalization:Get(
						"GameChat_ChatMain_SpeakerHasBeenMuted", 
						string.format("Speaker '%s' has been muted.", player.Name)
					),
					"{RBX_NAME}", player.Name
				)
			)
		end
	end)
end

function UnmutePlayer(player)
	local unmutePlayerRequest = DefaultChatSystemChatEvents:FindFirstChild("UnMutePlayerRequest")
	if unmutePlayerRequest then
		return unmutePlayerRequest:InvokeServer(player.Name)
	end
	return false
end

if PlayerUnBlockedEvent then
	PlayerUnBlockedEvent.Event:connect(function(player)
		if UnmutePlayer(player) then
			SendSystemMessageToSelf(
				string.gsub(
					ChatLocalization:Get(
						"GameChat_ChatMain_SpeakerHasBeenUnBlocked", 
						string.format("Speaker '%s' has been unblocked.", player.Name)
					),
					"{RBX_NAME}",player.Name
				)
			)
		end
	end)
end

if PlayerUnMutedEvent then
	PlayerUnMutedEvent.Event:connect(function(player)
		if UnmutePlayer(player) then
			SendSystemMessageToSelf(
				string.gsub(
					ChatLocalization:Get(
						"GameChat_ChatMain_SpeakerHasBeenUnMuted", 
						string.format("Speaker '%s' has been unmuted.", player.Name)
					),
					"{RBX_NAME}",player.Name
				)
			)
		end
	end)
end

-- Get a list of blocked users from the corescripts.
-- Spawned because this method can yeild.
spawn(function()
	-- Pcalled because this method is not released on all platforms yet.
	if LocalPlayer.UserId > 0 then
		pcall(function()
			local blockedUserIds = StarterGui:GetCore("GetBlockedUserIds")
			if #blockedUserIds > 0 then
				local setInitalBlockedUserIds = DefaultChatSystemChatEvents:FindFirstChild("SetBlockedUserIdsRequest")
				if setInitalBlockedUserIds then
					setInitalBlockedUserIds:FireServer(blockedUserIds)
				end
			end
		end)
	end
end)

spawn(function()
	local success, canLocalUserChat = pcall(function()
		return Chat:CanUserChatAsync(LocalPlayer.UserId)
	end)
	if success then
		canChat = RunService:IsStudio() or canLocalUserChat
	end
end)

local initData = EventFolder.GetInitDataRequest:InvokeServer()

-- Handle joining general channel first.
for i, channelData in pairs(initData.Channels) do
	if channelData[1] == ChatSettings.GeneralChannelName then
		HandleChannelJoined(channelData[1], channelData[2], channelData[3], channelData[4], true, false)
	end
end

for i, channelData in pairs(initData.Channels) do
	if channelData[1] ~= ChatSettings.GeneralChannelName then
		HandleChannelJoined(channelData[1], channelData[2], channelData[3], channelData[4], true, false)
	end
end

return moduleApiTable
