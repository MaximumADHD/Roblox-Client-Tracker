local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LuaChat = script.Parent.Parent
local Signal = require(LuaChat.Signal)
local Create = require(LuaChat.Create)
local WebApi = require(LuaChat.WebApi)
local ConversationActions = require(LuaChat.Actions.ConversationActions)
local Constants = require(LuaChat.Constants)
local Text = require(LuaChat.Text)
local Conversation = require(LuaChat.Models.Conversation)
local Device = require(LuaChat.Device)
local DialogInfo = require(LuaChat.DialogInfo)

local Components = LuaChat.Components
local PaddedImageButton = require(Components.PaddedImageButton)
local HeaderLoader = require(Components.HeaderLoader)
local MessageList = require(Components.MessageList)
local ChatInputBar = require(Components.ChatInputBar)
local ChatInputBarTablet = require(Components.ChatInputBarTablet)
local UserTypingIndicator = require(Components.UserTypingIndicator)
local LoadingIndicator = require(Components.LoadingIndicator)

local Intent = DialogInfo.Intent

local FFlagLuaChatTweenOnKeyboardResize = settings():GetFFlag("LuaChatTweenOnKeyboardResize")

local ConversationView = {}

ConversationView.__index = ConversationView

local function getNewestWithNilPreviousMessageId(messages)
	for id, message, _ in messages:CreateReverseIterator() do
		if message.previousMessageId == nil then
			return id
		end
	end
	return messages.keys[1]
end

function ConversationView.new(appState, conversationId)
	local self = {}
	self.connections = {}

	self.conversationId = nil
	self.appState = appState
	self.lastTypingTimestamp = 0
	self.BackButtonPressed = Signal.new()
	self.GroupDetailsButtonPressed = Signal.new()
	self.wasTouchingBottom = false

	setmetatable(self, ConversationView)

	self.rbx = Create.new "TextButton" {
		Name = "Conversation",
		Text = "",
		AutoButtonColor = false,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 0,
		BackgroundColor3 = Constants.Color.GRAY6,
		BorderSizePixel = 0,
		Create.new "UIListLayout" {
			SortOrder = "LayoutOrder",
		},
	}
	-- Component Setup
	local header = HeaderLoader.GetHeader(appState, Intent.Conversation)
	header:SetDefaultSubtitle()
	if appState.store:GetState().FormFactor == Device.FormFactor.PHONE then
		header:SetBackButtonEnabled(true)
	else
		header:SetBackButtonEnabled(false)
	end
	self.header = header

	header.rbx.Parent = self.rbx
	header.rbx.LayoutOrder = 0

	local groupDetailsButton
	groupDetailsButton = PaddedImageButton.new(appState, "GroupDetails",
		"rbxasset://textures/ui/LuaChat/icons/ic-info.png")
	header:AddButton(groupDetailsButton)
	groupDetailsButton.Pressed:Connect(function()
		self.GroupDetailsButtonPressed:Fire()
	end)

	local chatInputBar
	if appState.store:GetState().FormFactor == Device.FormFactor.PHONE then
		chatInputBar = ChatInputBar.new(appState)
	else
		chatInputBar = ChatInputBarTablet.new(appState)
	end

	--These now get initialized in Update, based on conversationId of CurrentRoute in store
	self.messageList = nil
	self.messageListConnection = nil
	self.typingIndicator = nil
	self.initialLoadingFrame = nil

	chatInputBar.rbx.Parent = self.rbx
	chatInputBar.rbx.Position = UDim2.new(0, 0, 1, -42)
	chatInputBar.rbx.LayoutOrder = 3
	self.chatInputBar = chatInputBar

	--Close keyboard when tapping outside of both keyboard and input area
	--Per spec at: https://confluence.roblox.com/display/SOCIAL/Misc+Notes
	--This is a bit of a hack, but a tap that focuses self.chatInputBar.textBox
	--Can also, it seems, be interpreted as a tap of self.rbx
	--So if the self.chatInputBar.textBox was just focused, I won't release focus
	--on tap.
	local lastFocus = nil
	self.chatInputBar.textBox.Focused:Connect(function()
		lastFocus = tick()
	end)
	self.rbx.TouchTap:Connect(function()
		if (not lastFocus) or (tick() - lastFocus) > .3 then
			self.chatInputBar.textBox:ReleaseFocus()
		end
	end)

	-- Component Event Setup
	header.BackButtonPressed:Connect(function()
		self.BackButtonPressed:Fire()
	end)

	header.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Rescale()
	end)

	chatInputBar.rbx:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:Rescale()
	end)

	chatInputBar.SendButtonPressed:Connect(function(text)
		text = Text.SendPreprocess(text)
		appState.store:Dispatch(ConversationActions.SendMessage(self.conversationId, text))
	end)

	chatInputBar.UserChangedText:Connect(function()
		if tick() - self.lastTypingTimestamp > Constants.Text.POST_TYPING_STATUS_INTERVAL then
			self.lastTypingTimestamp = tick()
			WebApi.PostTypingStatus(self.conversationId, true)
		end
	end)

	return self
end

function ConversationView:Start()
	self.header:SetConnectionState(self.appState.store:GetState().ConnectionState)

	if self.messageList and self.messageList.isTouchingBottom then
		self.appState.store:Dispatch(ConversationActions.MarkConversationAsRead(self.conversationId))
	end

	self:Rescale() -- initial sizing

	local propertyChangeSignal = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible")
	local keyboardVisibleConnection = propertyChangeSignal:Connect(function()
		self:TweenRescale()
	end)
	table.insert(self.connections, keyboardVisibleConnection)

	if FFlagLuaChatTweenOnKeyboardResize then
		propertyChangeSignal = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardPosition")
		local keyboardSizeConnection = propertyChangeSignal:Connect(function()
			self:TweenRescale()
		end)
		table.insert(self.connections, keyboardSizeConnection)
		propertyChangeSignal = self.rbx:GetPropertyChangedSignal("AbsoluteSize")
		local absoluteSizeConnection = propertyChangeSignal:Connect(function()
			self:TweenRescale()
		end)
		table.insert(self.connections, absoluteSizeConnection)
	end
end

function ConversationView:Stop()
	self.chatInputBar.textBox:ReleaseFocus()

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

function ConversationView:Pause()
	self.chatInputBar.textBox:ReleaseFocus()
end

function ConversationView:Resume()

	if self.messageList.isTouchingBottom then
		self.appState.store:Dispatch(ConversationActions.MarkConversationAsRead(self.conversationId))
	end

end

function ConversationView:Update(state, oldState)
	self.header:SetConnectionState(self.appState.store:GetState().ConnectionState)

	local currentConversationId = state.Location.current.parameters.conversationId

	local conversation = state.Conversations[currentConversationId]

	if not conversation then
		return
	end

	if currentConversationId and currentConversationId ~= self.conversationId then

		self.conversationId = currentConversationId

		self.isFetchingOlderMessages = conversation.fetchingOlderMessages

		self.header:SetTitle(conversation.title)

		if self.messageList then
			self.messageList:Destruct()
		end

		local messageList = MessageList.new(self.appState, conversation)
		messageList.rbx.LayoutOrder = 1
		messageList.rbx.Parent = self.rbx
		messageList:ResizeCanvas()
		self.messageList = messageList

		if FFlagLuaChatTweenOnKeyboardResize then
			if self.messageListConnection ~= nil then
				self.messageListConnection:Disconnect()
			end
			local propertyChangeSignal = self.messageList.rbx:GetPropertyChangedSignal("AbsoluteSize")
			self.messageListConnection = propertyChangeSignal:Connect(function()
				if self.messageList.isTouchingBottom or self.wasTouchingBottom then
					self:TweenScrollToBottom()
					self.wasTouchingBottom = false
				end
			end)
		end

		local function onRequestOlderMessages()
			local conversation = self.appState.store:GetState().Conversations[self.conversationId]
			if conversation == nil then
				return
			end
			local messages = conversation.messages
			local exclusiveMessageStartId = getNewestWithNilPreviousMessageId(messages)
			if conversation.fetchingOlderMessages or conversation.fetchedOldestMessage then
				return
			end

			self.messageList:StartLoadingMessageHistoryAnimation()

			self.appState.store:Dispatch(ConversationActions.GetOlderMessages(self.conversationId, exclusiveMessageStartId))
		end
		if self.requestOlderMessagesConnection then
			self.requestOlderMessagesConnection:Disconnect()
		end
		self.requestOlderMessagesConnection = messageList.RequestOlderMessages:Connect(onRequestOlderMessages)

		--Make sure this gets called at least once
		onRequestOlderMessages()

		if self.readAllMessagesConnection then
			self.readAllMessagesConnection:Disconnect()
		end
		self.readAllMessagesConnection = messageList.ReadAllMessages:Connect(function()
			self.appState.store:Dispatch(ConversationActions.MarkConversationAsRead(self.conversationId))
		end)

		if conversation.conversationType == Conversation.Type.ONE_TO_ONE_CONVERSATION then
			if self.typingIndicator then
				self.typingIndicator:Destruct()
			end
			local typingIndicator = UserTypingIndicator.new(self.appState, conversation)
			typingIndicator.rbx.LayoutOrder = 2
			typingIndicator.rbx.Parent = self.rbx
			self.typingIndicator = typingIndicator

			typingIndicator.Resized:Connect(function()
				self:Rescale()
			end)
		end

		if self.initialLoadingFrame then
			self.initialLoadingFrame:Destroy()
		end
		local initialLoadingFrame = Create.new "Frame" {
			Name = "InitialLoadingFrame",
			Size = self.messageList.rbx.Size,
			Position = self.messageList.rbx.Position,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Visible = false
		}
		initialLoadingFrame.Parent = self.rbx
		self.initialLoadingFrame = initialLoadingFrame

		if self.messageList.isTouchingBottom then
			self.appState.store:Dispatch(ConversationActions.MarkConversationAsRead(self.conversationId))
		end

		self:Rescale()
	elseif conversation == oldState.Conversations[self.conversationId] then
		return
	end

	if not conversation.fetchingOlderMessages then
		self.messageList:StopLoadingMessageHistoryAnimation()
	end

	if conversation.initialLoadingStatus == Constants.ConversationLoadingState.LOADING then
		self:StartInitialLoadingAnimation()
	else
		self:StopInitialLoadingAnimation()
	end

	self.messageList:Update(conversation)
	self.header:SetTitle(conversation.title)

	if self.typingIndicator then
		self.typingIndicator:Update(conversation)
	end
end

function ConversationView:GetYOffset()
	local keyboardSize = 0
	if UserInputService.OnScreenKeyboardVisible and self.chatInputBar.textBox:IsFocused() then
		keyboardSize = self.rbx.AbsoluteSize.Y - UserInputService.OnScreenKeyboardPosition.Y
	end
	local offset = keyboardSize
	for _, child in ipairs(self.rbx:GetChildren()) do
		if child:IsA("GuiObject") and (self.messageList == nil or child ~= self.messageList.rbx)
			and child ~= self.initialLoadingFrame then
			offset = offset + child.AbsoluteSize.Y
		end
	end

	return offset
end

function ConversationView:Rescale()

	if not self.messageList then
		return
	end

	local offset = self:GetYOffset()

	local newSize = UDim2.new(1, 0, 1, -offset)

	local wasTouchingBottom = self.messageList.isTouchingBottom
	self.messageList.rbx.Size = newSize
	if wasTouchingBottom then
		self.messageList:ScrollToBottom()
	end

	self.initialLoadingFrame.Size = newSize
end

function ConversationView:TweenRescale()
	if self.messageList == nil then
		return
	end

	local offset = self:GetYOffset()
	local newSize = UDim2.new(1, 0, 1, -offset)
	self.wasTouchingBottom = self.messageList.isTouchingBottom
	self.initialLoadingFrame.Size = newSize

	local duration = UserInputService.OnScreenKeyboardAnimationDuration
	local tweenInfo = TweenInfo.new(duration)

	local propertyGoals =
	{
		Size = newSize,
	}
	local tween = TweenService:Create(self.messageList.rbx, tweenInfo, propertyGoals)

	tween:Play()

	if not FFlagLuaChatTweenOnKeyboardResize then
		if self.wasTouchingBottom then
			self.messageList:TweenScrollToBottom(duration, offset, tweenInfo)
		end
	end
end

function ConversationView:TweenScrollToBottom()
	local offset = self:GetYOffset()
	local height = self.messageList.rbx.CanvasSize.Y.Offset - self.messageList.rbx.AbsoluteWindowSize.Y + offset

	local duration = UserInputService.OnScreenKeyboardAnimationDuration
	local tweenInfo = TweenInfo.new(duration)

	local propertyGoals =
	{
		CanvasPosition = Vector2.new(0, height)
	}
	local tween = TweenService:Create(self.messageList.rbx, tweenInfo, propertyGoals)
	tween:Play()
end

function ConversationView:StartInitialLoadingAnimation()
	if not self.loadingAnimationRunning then
		self.loadingAnimationRunning = true

		self.messageList.rbx.Visible = false
		self.initialLoadingFrame.Visible = true

		local loadingIndicator = LoadingIndicator.new(self.appState, 3)
		loadingIndicator.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
		loadingIndicator.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
		loadingIndicator.rbx.Parent = self.initialLoadingFrame
	end
end

function ConversationView:StopInitialLoadingAnimation()
	if self.loadingAnimationRunning then
		self.loadingAnimationRunning = false

		self.messageList.rbx.Visible = true
		self.initialLoadingFrame.Visible = false

		self.initialLoadingFrame:ClearAllChildren()
	end
end

return ConversationView
