local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local LuaChat = script.Parent.Parent

local Signal = require(LuaChat.Signal)
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local ActionType = require(LuaChat.ActionType)
local DialogInfo = require(LuaChat.DialogInfo)

local Components = LuaChat.Components
local PaddedImageButton = require(Components.PaddedImageButton)
local ConversationSearchBox = require(Components.ConversationSearchBox)
local ConversationList = require(Components.ConversationList)
local ConversationEntry = require(Components.ConversationEntry)
local HeaderLoader = require(Components.HeaderLoader)
local NoFriendsIndicator = require(Components.NoFriendsIndicator)
local ChatDisabledIndicator = require(Components.ChatDisabledIndicator)
local ChatLoadingIndicator = require(Components.ChatLoadingIndicator)

local ConversationActions = require(LuaChat.Actions.ConversationActions)
local FetchChatEnabled = require(LuaChat.Actions.FetchChatEnabled)
local GetFriendCount = require(LuaChat.Actions.GetFriendCount)

local Intent = DialogInfo.Intent

local ConversationHub = {}

ConversationHub.__index = ConversationHub

local LuaChatNotificationButtonEnabled = settings():GetFFlag("LuaChatNotificationButtonEnabled")

local function requestOlderConversations(appState)
	-- Don't fetch older conversations if the oldest conversation has already been fetched.
	if appState.store:GetState().FetchedOldestConversation then
		return
	end

	-- Ask for new conversations
	local convoCount = 0
	for _, _ in pairs(appState.store:GetState().Conversations) do
		convoCount = convoCount + 1
	end
	local pageSize = Constants.PageSize.GET_CONVERSATIONS
	local currentPage = math.floor(convoCount / pageSize)
	appState.store:Dispatch(ConversationActions.GetLocalUserConversations(currentPage + 1, pageSize))
end

function ConversationHub.new(appState)
	local self = {}
	self.connections = {}

	setmetatable(self, ConversationHub)

	appState.store:Dispatch(FetchChatEnabled())
	appState.store:Dispatch(ConversationActions.GetUnreadConversationCount())
	appState.store:Dispatch(ConversationActions.GetLocalUserConversations(1, Constants.PageSize.GET_CONVERSATIONS,
		function()
			appState.store:Dispatch({
				type = ActionType.SetAppLoaded,
				value = true,
			})
		end))
	appState.store:Dispatch(GetFriendCount())

	self.appState = appState

	self.rbx = Create.new "Frame" {
		Name = "ConversationHub",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,

		Create.new "UIListLayout" {
			SortOrder = "LayoutOrder",
		}
	}

	self.ConversationTapped = Signal.new()
	self.CreateGroupButtonPressed = Signal.new()
	self.isSearchOpen = false

	local header = HeaderLoader.GetHeader(appState, Intent.ConversationHub)
	header:SetTitle(appState.localization:Format(StringsLocale.Keys.CHAT))
	header:SetDefaultSubtitle()

	header.rbx.Parent = self.rbx
	header.rbx.LayoutOrder = 0
	self.header = header

	local createGroupButton = PaddedImageButton.new(self.appState, "CreateGroup",
		"rbxasset://textures/ui/LuaChat/icons/ic-create-group.png")
	createGroupButton:SetVisible(false)
	createGroupButton.Pressed:Connect(function()
		self.CreateGroupButtonPressed:Fire()
	end)

	self.createGroupButton = createGroupButton

	local searchConversationsButton = PaddedImageButton.new(self.appState,
		"SearchConversations", "rbxasset://textures/ui/LuaChat/icons/ic-search.png")

	header:AddButton(createGroupButton)
	header:AddButton(searchConversationsButton)

	if LuaChatNotificationButtonEnabled then
		local notificationButton = PaddedImageButton.new(self.appState, "Notification",
			"rbxasset://textures/Icon_Stream_Off.png")
		notificationButton.Pressed:Connect(function()
			GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().VIEW_NOTIFICATIONS)
		end)
		header:AddButton(notificationButton)
	end

	local searchHeader = HeaderLoader.GetHeader(appState, Intent.ConversationHub)
	searchHeader:SetTitle("")
	searchHeader:SetSubtitle("")
	searchHeader.rbx.LayoutOrder = 0

	local conversationSearchBox = ConversationSearchBox.new(self.appState)
	searchHeader:AddContent(conversationSearchBox)

	local noFriendsIndicator = NoFriendsIndicator.new(appState)
	self.noFriendsIndicator = noFriendsIndicator
	noFriendsIndicator.rbx.Size = UDim2.new(1, 0, 1, -header.rbx.Size.Y.Offset)
	noFriendsIndicator.rbx.Parent = self.rbx
	noFriendsIndicator.rbx.LayoutOrder = 1

	local chatDisabledIndicator = ChatDisabledIndicator.new(appState)
	self.chatDisabledIndicator = chatDisabledIndicator
	chatDisabledIndicator.rbx.Size = UDim2.new(1, 0, 1, -header.rbx.Size.Y.Offset)
	chatDisabledIndicator.rbx.Parent = self.rbx
	chatDisabledIndicator.rbx.LayoutOrder = 1

	local chatLoadingIndicator = ChatLoadingIndicator.new(appState)
	self.chatLoadingIndicator = chatLoadingIndicator
	chatLoadingIndicator.rbx.Size = UDim2.new(1, 0, 1, -header.rbx.Size.Y.Offset)
	chatLoadingIndicator.rbx.Parent = self.rbx
	chatLoadingIndicator.rbx.LayoutOrder = 1

	chatDisabledIndicator.openPrivacySettings:Connect(function()
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().PRIVACY_SETTINGS)
	end)

	local list = ConversationList.new(appState, appState.store:GetState().Conversations, ConversationEntry)
	self.list = list
	list.rbx.Size = UDim2.new(1, 0, 1, -header.rbx.Size.Y.Offset)
	list.rbx.Parent = self.rbx
	list.rbx.LayoutOrder = 1

	list.ConversationTapped:Connect(function(convoId)
		conversationSearchBox:Cancel()
		self.ConversationTapped:Fire(convoId)
	end)

	list.RequestOlderConversations:Connect(function()
		requestOlderConversations(appState)
	end)

	searchConversationsButton.Pressed:Connect(function()
		header.rbx.Parent = nil
		searchHeader.rbx.Parent = self.rbx
		self.rbx.BackgroundColor3 = Constants.Color.GRAY5
		list:SetFilterPredicate(conversationSearchBox.SearchFilterPredicate)
		conversationSearchBox.rbx.SearchBoxContainer.SearchBoxBackground.Search:CaptureFocus()
		self.isSearchOpen = true
	end)

	conversationSearchBox.SearchChanged:Connect(function()
		list:SetFilterPredicate(conversationSearchBox.SearchFilterPredicate)
		self:getOlderConversationsForSearchIfNecessary()
	end)

	conversationSearchBox.Closed:Connect(function()
		searchHeader.rbx.Parent = nil
		header.rbx.Parent = self.rbx
		self.rbx.BackgroundColor3 = Constants.Color.WHITE
		list:SetFilterPredicate(nil)
		self.isSearchOpen = false
	end)

	appState.store.Changed:Connect(function(state, oldState)

		self:Update(state, oldState)

		if state.Conversations ~= oldState.Conversations
			or state.Location.current ~= oldState.Location.current then
			list:Update(state, oldState)
		end
	end)

	self:Update(appState.store:GetState(), appState.store:GetState())

	return self
end

function ConversationHub:Start()
	local inputServiceConnection = UserInputService:GetPropertyChangedSignal('OnScreenKeyboardVisible'):Connect(function()
		self:TweenRescale()
	end)
	table.insert(self.connections, inputServiceConnection)
end

function ConversationHub:Stop()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end

	self.connections = {}
end

function ConversationHub:Update(state, oldState)
	self.header:SetConnectionState(state.ConnectionState)

	local conversations = state.Conversations
	local appLoaded = state.AppLoaded

	local haveConversations = next(conversations) ~= nil

	if state.ChatEnabled then
		self.chatDisabledIndicator.rbx.Visible = false

		if state.ChatEnabled ~= oldState.ChatEnabled then
			self.appState.store:Dispatch(ConversationActions.GetLocalUserConversations(1, Constants.PageSize.GET_CONVERSATIONS))
		end
	else
		self.chatDisabledIndicator.rbx.Visible = true
		self.list.rbx.Visible = false
		self.noFriendsIndicator.rbx.Visible = false
		self.chatLoadingIndicator:SetVisible(false)

		return
	end

	if appLoaded then
		self.chatLoadingIndicator:SetVisible(false)
	else
		self.chatLoadingIndicator:SetVisible(true)
		self.list.rbx.Visible = false
		self.noFriendsIndicator.rbx.Visible = false

		return
	end

	if haveConversations then
		self.list.rbx.Visible = true
		self.noFriendsIndicator.rbx.Visible = false
	else
		self.list.rbx.Visible = false
		self.noFriendsIndicator.rbx.Visible = true
	end

	if state.FriendCount < 2 then
		self.createGroupButton:SetVisible(false)
	else
		self.createGroupButton:SetVisible(true)
	end

	if state.FetchingConversations ~= oldState.FetchingConversations then
		self.list:Update(state, oldState)
		self:getOlderConversationsForSearchIfNecessary()
	end
end

function ConversationHub:getOlderConversationsForSearchIfNecessary(appState)
	-- To Check:
	-- 1) Search is open
	-- 2) Not have loaded all conversations.
	-- 3) Not Ccrrently getting older conversations
	-- 4) Having enouth search items to show
	-- Note that we already try to load more conversations if we scroll down to the bottom of the list
	local state = self.appState.store:GetState()
	if not self.isSearchOpen or state.FetchedOldestConversation or state.FetchingConversations then
		return
	end

	if self.list.rbx.CanvasSize.Y.Offset > self.list.rbx.AbsoluteSize.Y then
		return
	end

	requestOlderConversations(self.appState)
end

function ConversationHub:TweenRescale()
	local keyboardSize = 0
	if UserInputService.OnScreenKeyboardVisible then
		keyboardSize = self.rbx.AbsoluteSize.Y - UserInputService.OnScreenKeyboardPosition.Y
	end
	local newSize = UDim2.new(1, 0, 1, -(self.header.rbx.Size.Y.Offset + keyboardSize))

	local duration = UserInputService.OnScreenKeyboardAnimationDuration
	local tweenInfo = TweenInfo.new(duration)

	local propertyGoals =
	{
		Size = newSize
	}
	local tween = TweenService:Create(self.list.rbx, tweenInfo, propertyGoals)

	tween:Play()
end

return ConversationHub