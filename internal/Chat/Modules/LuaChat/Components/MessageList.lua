local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LuaChat = script.Parent.Parent

local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local Signal = require(LuaChat.Signal)
local OrderedMap = require(LuaChat.OrderedMap)
local ChatBubble = require(LuaChat.Components.ChatBubble)

local ChatTimestamp = require(LuaChat.Components.ChatTimestamp)
local Conversation = require(LuaChat.Models.Conversation)

local LoadingIndicator = require(LuaChat.Components.LoadingIndicator)

local IS_BOTTOM_BUFFER = 5

local MessageList = {}

MessageList.__index = MessageList

local function didLocalUserSend(message)
	local localUserId = tostring(Players.LocalPlayer.UserId)

	return message.senderTargetId == localUserId
end

local function getSpacer(height)
	return Create.new "Frame" {
		Name = "Spacer",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, height),
		LayoutOrder = 1,
	}
end

--[[
	Updates the spacing and timestamp display of message identified by
	messages and messageIndex.
]]

local function isFirstMessageInCluster(messages, messageIndex)
	local message = messages:GetByIndex(messageIndex)
	local previousMessage = messages:GetByIndex(messageIndex - 1)

	if not previousMessage or message.sent:GetUnixTimestamp() - previousMessage.sent:GetUnixTimestamp() > 5 * 60 then
		return true
	elseif previousMessage and message.senderTargetId == previousMessage.senderTargetId then
		return false
	end
	return true
end

local function updateBubblePadding(appState, conversationType, bubble, messages, messageIndex)
	local message = messages:GetByIndex(messageIndex)
	local previousMessage = messages:GetByIndex(messageIndex - 1)

	local padding
	local extraInfoVisible = true

	if previousMessage then
		if message.sent:GetUnixTimestamp() - previousMessage.sent:GetUnixTimestamp() > 5 * 60 then
			local relativeTime = message.sent:GetLongRelativeTime()
			padding = ChatTimestamp.new(appState, relativeTime).rbx
		else
			if message.senderTargetId == previousMessage.senderTargetId then
				padding = getSpacer(2)
				extraInfoVisible = false
			else
				padding = getSpacer(10)
			end
		end
	else
		local relativeTime = message.sent:GetLongRelativeTime()
		padding = ChatTimestamp.new(appState, relativeTime).rbx
	end

	bubble:SetTailVisible(extraInfoVisible)

	if not didLocalUserSend(message) then
		bubble:SetThumbnailVisible(extraInfoVisible)

		if conversationType == Conversation.Type.MULTI_USER_CONVERSATION then
			bubble:SetUsernameVisible(extraInfoVisible)
		end
	end

	bubble:SetPaddingObject(padding)
end

local function createChatHistoryMessagePadding()
	local padding = Create.new "Frame" {
		Name = "LoadingIndicatorPadding",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 50),

		Create.new "UIPadding" {
			PaddingBottom = UDim.new(0, 10),
			PaddingTop = UDim.new(0, 20)
		},

		Create.new "Frame" {
			Name = "Container",
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 84, 0, 22),
		}
	}

	return padding
end

function MessageList.new(appState, conversation)
	local self = {}
	self.appState = appState
	self.conversation = Conversation.mock()
	self.messageIdToBubble = {}
	self.RequestOlderMessages = Signal.new()
	self.ReadAllMessages = Signal.new()
	self.isTouchingBottom = true
	self.lastThumbnailLocation = {}
	self.loadingIndicatorPadding = createChatHistoryMessagePadding()
	self.connections = {}

	self.layout = Create.new "UIListLayout" {
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
	}

	self.rbx = Create.new "ScrollingFrame" {
		Name = "MessageList",
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.GRAY6,
		Size = UDim2.new(1, 0, 0, 0),
		ScrollBarThickness = 5,
		BottomImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
		MidImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
		TopImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",

		self.layout,

		Create.new "UIPadding" {
			PaddingBottom = UDim.new(0, 10),
		},
	}

	self.loadingIndicatorPadding.Parent = self.rbx
	self.loadingIndicatorPadding.Visible = false

	self.rbx:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		if self.rbx.CanvasPosition.Y + self.rbx.AbsoluteWindowSize.Y + IS_BOTTOM_BUFFER >= self.rbx.CanvasSize.Y.Offset then
			self.isTouchingBottom = true
			self.ReadAllMessages:Fire()
		else
			self.isTouchingBottom = false
		end
		if self.rbx.CanvasSize.Y.Offset > self.rbx.AbsoluteSize.Y then
			if self.lastCanvasPosition then
				if self.lastCanvasPosition < 0 and self.rbx.CanvasPosition.Y >= 0 then
					self.RequestOlderMessages:Fire()

				elseif self.rbx.CanvasPosition.Y == 0 then
					self.RequestOlderMessages:Fire()

				end
			end

			self.lastCanvasPosition = self.rbx.CanvasPosition.Y
		end
	end)

	setmetatable(self, MessageList)

	self:Update(conversation)

	return self
end

function MessageList:Update(conversation)
	if conversation == nil then
		return
	end

    -- NOTE The following loop is currently used to set the typing indiactor visiblity
    -- to true. We currently pass an empty table for usersTyping when receiving a message.
	for userId, typing in pairs(conversation.usersTyping) do
		if self.lastThumbnailLocation[userId] then
			local bubble = self.messageIdToBubble[self.lastThumbnailLocation[userId].id]
			if bubble then
				bubble:SetTypingIndicatorVisible(typing)
			end
		end
	end

	if conversation.messages == self.conversation.messages and
		conversation.sendingMessages == self.conversation.sendingMessages then
		return
	end

	-- Remove sending messages that have been moved to sent
	for id, _ in self.conversation.sendingMessages:CreateIterator() do
		if conversation.sendingMessages:Get(id) == nil then
			if self.messageIdToBubble[id] then
				self.messageIdToBubble[id].rbx:Destroy()
				self.messageIdToBubble[id] = nil
			end
		end
	end

	local combinedMessages = OrderedMap.Merge(conversation.messages, conversation.sendingMessages)

	-- Map containing whether a message has been adjusted, indexed by numeric keys
	-- into the combinedMessages map.
	local adjustedMessages = {}

	local oldThumbnailLocation = self.lastThumbnailLocation
	self.lastThumbnailLocation = {}

    local havePassedNewestMessage = false
	local havePassedDiscontiguousMessage = false
	for id, message, index in combinedMessages:CreateReverseIterator() do
		local existingMessage = self.conversation.messages:Get(id) or self.conversation.sendingMessages:Get(id)
		local bubble = self.messageIdToBubble[id]
		local senderId = message.senderTargetId


		local isSending = conversation.sendingMessages:Get(id) ~= nil

		if message ~= existingMessage then
			if bubble then
				bubble:Destruct()
			end

			bubble = ChatBubble.new(self.appState, message)
			bubble.rbx.Parent = self.rbx

			self.messageIdToBubble[id] = bubble

			-- When a message updates, we need to recalculate layout on it and
			-- the message immediately after it.

			updateBubblePadding(self.appState, conversation.conversationType, bubble, combinedMessages, index)

			if not adjustedMessages[index + 1] then
				local nextMessage = combinedMessages:GetByIndex(index + 1)

				if nextMessage then
					local nextBubble = self.messageIdToBubble[nextMessage.id]
					updateBubblePadding(self.appState, conversation.conversationType, nextBubble, combinedMessages, index + 1)
				end
			end

			adjustedMessages[index] = true
			adjustedMessages[index + 1] = true
		end

		if (not self.lastThumbnailLocation[senderId]) and isFirstMessageInCluster(combinedMessages, index) then
			self.lastThumbnailLocation[senderId] = message

			if ( oldThumbnailLocation and oldThumbnailLocation[senderId] and
				oldThumbnailLocation[senderId] ~= message ) and self.messageIdToBubble[oldThumbnailLocation[senderId].id] then
				self.messageIdToBubble[oldThumbnailLocation[senderId].id]:SetTypingIndicatorVisible(false)
			end

		end


        -- When the MessageList updates, we assume the most recent message has
        -- been received from a previously typing user for Group Conversations.
        if ( havePassedNewestMessage == false and isSending == false and self.lastThumbnailLocation[senderId] ) then
            havePassedNewestMessage = true
            local thumbnailBubble = self.messageIdToBubble[self.lastThumbnailLocation[senderId].id]
            if thumbnailBubble then
                thumbnailBubble:SetTypingIndicatorVisible(false)
            end
        end

		bubble.rbx.LayoutOrder = index

		bubble.rbx.Visible = not havePassedDiscontiguousMessage

		if (not isSending) and message.previousMessageId == nil then
			havePassedDiscontiguousMessage = true
		end

		local connection = bubble.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			local wasTouchingBottom = self.isTouchingBottom
			self:ResizeCanvas()
			if wasTouchingBottom then
				self:ScrollToBottom()
			end
		end)

		table.insert(self.connections, connection)
	end

	self.conversation = conversation

	local wasTouchingBottom = self.isTouchingBottom
	self:ResizeCanvas()
	if wasTouchingBottom then
		self:ScrollToBottom()
	end
end

function MessageList:CalculateCanvasSize()
	local height = 0

	for _, child in pairs(self.messageIdToBubble) do
		if child.rbx.Visible then
			height = height + child.rbx.AbsoluteSize.Y
		end
	end

	if self.loadingIndicatorPadding.Visible then
		height = height + self.loadingIndicatorPadding.Size.Y.Offset
	end

	return UDim2.new(1, 0, 0, height)
end

function MessageList:ResizeCanvas()
	local canvas = self.rbx
	local oldHeight = canvas.CanvasSize.Y.Offset

	canvas.CanvasSize = self:CalculateCanvasSize()
	--Restore distance to bottom
	canvas.CanvasPosition = canvas.CanvasPosition + Vector2.new(0, canvas.CanvasSize.Y.Offset - oldHeight)
end

function MessageList:ScrollToBottom()
	local height = self.rbx.CanvasSize.Y.Offset - self.rbx.AbsoluteWindowSize.Y
	self.rbx.CanvasPosition = Vector2.new(0, height)
end

function MessageList:TweenScrollToBottom(duration, offsetY, tweenInfo, keyboardVisible)
	local height = self.rbx.CanvasSize.Y.Offset - self.rbx.AbsoluteWindowSize.Y + offsetY
	local propertyGoals =
	{
		CanvasPosition = Vector2.new(0, height)
	}
	local tween = TweenService:Create(self.rbx, tweenInfo, propertyGoals)
	tween:Play()
end

function MessageList:StartLoadingMessageHistoryAnimation()
	if self.loadingIndicator == nil then
		self.loadingIndicator = LoadingIndicator.new(self.appState, 1)
	end

	local padding = self.loadingIndicatorPadding

	self.loadingIndicator.rbx.Parent = padding.Container
	padding.Visible = true

	self.rbx.CanvasSize = self:CalculateCanvasSize()
end

function MessageList:StopLoadingMessageHistoryAnimation()
	local loadingIndicator = self.loadingIndicator
	if loadingIndicator then

		local padding = self.loadingIndicatorPadding
		padding.Visible = false

		self.rbx.CanvasSize = self:CalculateCanvasSize()

		self.loadingIndicator:Destroy()
		self.loadingIndicator = nil
	end
end

--TODO: Remove do block. CLICHAT-820 for more info.
do
	function MessageList:DisconnectChatBubbles()
		for _, chatEntry in pairs(self.messageIdToBubble) do
			for _, childBubble in pairs(chatEntry.bubbles) do
				if childBubble.bubbleType == "AssetCard" then
					childBubble:DisconnectUpdate()
				end
			end
		end
	end
end

function MessageList:Destruct()
	for _, bubble in pairs(self.messageIdToBubble) do
		bubble:Destruct()
	end

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	self.messageIdToBubble = {}
	self.rbx:Destroy()
end

return MessageList
