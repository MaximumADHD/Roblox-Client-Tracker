local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local PlayerService = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules

local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Analytics = require(Common.Analytics)
local Create = require(LuaChat.Create)
local Constants = require(LuaChat.Constants)
local DialogInfo = require(LuaChat.DialogInfo)
local ConversationActions = require(LuaChat.Actions.ConversationActions)
local GetPlaceInfo = require(LuaChat.Actions.GetPlaceInfo)
local HeaderLoader = require(LuaChat.Components.HeaderLoader)
local PlaceInfoCard = require(LuaChat.Components.PlaceInfoCard)
local GameShareCard = require(LuaChat.Components.GameShareCard)
local ConversationList = require(LuaChat.Components.ConversationList)
local getInputEvent = require(LuaChat.Utils.getInputEvent)

local RemoveRoute = require(LuaChat.Actions.RemoveRoute)
local SetAppLoaded = require(LuaChat.Actions.SetAppLoaded)

local Intent = DialogInfo.Intent

local GameShareComponent = {}
GameShareComponent.__index = GameShareComponent

local ICON_CELL_WIDTH = 60
local SEARCH_BOX_HEIGHT = 48
local CLEAR_TEXT_WIDTH = 44
local PLACE_INFO_FRAME_HEIGHT = 84

local function requestOlderConversations(appState)
	-- Don't fetch older conversations if the oldest conversation has already been fetched.
	if appState.store:GetState().ChatAppReducer.ConversationsAsync.oldestConversationIsFetched then
		return
	end

	-- Ask for new conversations
	local convoCount = 0
	for _, _ in pairs(appState.store:GetState().ChatAppReducer.Conversations) do
		convoCount = convoCount + 1
	end
	local pageSize = Constants.PageSize.GET_CONVERSATIONS
	local currentPage = math.floor(convoCount / pageSize)
	spawn(function()
		appState.store:Dispatch(ConversationActions.GetLocalUserConversationsAsync(currentPage + 1, pageSize))
	end)
end

function GameShareComponent.new(appState, placeId, innerFrame)
	local self = {}
	self._analytics = Analytics.new()
	self.appState = appState
	self.placeId = placeId
	self.placeInfo = appState.store:GetState().PlaceInfos[placeId]
	setmetatable(self, GameShareComponent)

	-- Header
	self.header = HeaderLoader.GetHeader(appState, Intent.GameShare)
	self.header:SetDefaultSubtitle()
	self.header:SetTitle(appState.localization:Format("Feature.Chat.Heading.ShareGameToChat"))
	self.header:SetBackButtonEnabled(true)

	-- Place Info Card Frame
	self.placeInfoCardFrame = Create.new"Frame" {
		Name = "PlaceInfoCardFrame",
		BackgroundColor3 = Constants.Color.GRAY5,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, PLACE_INFO_FRAME_HEIGHT),
		LayoutOrder = 2,
	}

	-- Search Container
	self.searchContainer = Create.new"Frame" {
		Name = "SearchContainer",
		BackgroundTransparency = 0,
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, SEARCH_BOX_HEIGHT),
		Visible = false,
		LayoutOrder = 3,

		Create.new"ImageLabel" {
			Name = "SearchIcon",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 24, 0, 24),
			Position = UDim2.new(0, ICON_CELL_WIDTH/2, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			ImageColor3 = Constants.Color.GRAY3,
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",
		},
		Create.new"TextBox" {
			Name = "Search",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -CLEAR_TEXT_WIDTH-ICON_CELL_WIDTH, 1, 0),
			Position = UDim2.new(0, ICON_CELL_WIDTH, 0, 0),
			TextSize = Constants.Font.FONT_SIZE_18,
			TextColor3 = Constants.Color.GRAY1,
			Font = Enum.Font.SourceSans,
			Text = "",
			PlaceholderText = appState.localization:Format("Feature.Chat.Label.SearchForFriendsAndChat"),
			PlaceholderColor3 = Constants.Color.GRAY3,
			TextXAlignment = Enum.TextXAlignment.Left,
			OverlayNativeInput = true,
			ClearTextOnFocus = false,
			ClipsDescendants = true,
		},
		Create.new"ImageButton" {
			Name = "Clear",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 16, 0, 16),
			Position = UDim2.new(1, -(CLEAR_TEXT_WIDTH/2), 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			AutoButtonColor = false,
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-clear-solid.png",
			ImageTransparency = 1,
		},
	}
	self.clearSearchButton = self.searchContainer.Clear
	self.searchBox = self.searchContainer.Search
	self.SearchFilterPredicate = function(other)
		if self.searchBox.Text == "" then
			return true
		end
		return string.find(string.lower(other), string.lower(self.searchBox.Text), 1, true) ~= nil
	end

	local divider = Create.new"Frame" {
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		LayoutOrder = 4,
	}

	-- Conversation List Frame
	self.conversationListFrame = Create.new "Frame" {
		Name = "ConversationListFrame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 5,
		Size = UDim2.new(1, 0, 1, - self.header.rbx.Size.Y.Offset - SEARCH_BOX_HEIGHT - PLACE_INFO_FRAME_HEIGHT),
	}

	self.placeInfoCardFrame.Parent = innerFrame
	self.searchContainer.Parent = innerFrame
	divider.Parent = innerFrame
	self.conversationListFrame.Parent = innerFrame

	self.rbx = Create.new"ImageButton" {
		Active = true,
		AutoButtonColor = false,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.GRAY5,
		BorderSizePixel = 0,

		Create.new("UIListLayout") {
			Name = "ListLayout",
			SortOrder = "LayoutOrder",
			HorizontalAlignment = "Center",
		},

		self.header.rbx,
		innerFrame,
	}

	if not appState.store:GetState().ChatAppReducer.AppLoaded then
		spawn(function()
			appState.store:Dispatch(
				ConversationActions.GetLocalUserConversationsAsync(1, Constants.PageSize.GET_CONVERSATIONS)
			):andThen(function()
				appState.store:Dispatch(SetAppLoaded(true))
			end)
		end)
	end

	return self
end

function GameShareComponent:Start()
	self.connections = {}

	-- back button
	local backButtonConnection = self.header.BackButtonPressed:Connect(function()
		self.appState.store:Dispatch(RemoveRoute(DialogInfo.Intent.GameShare))
		GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().CLOSE_MODAL)
	end)
	table.insert(self.connections, backButtonConnection)

	-- update
	local appStateConnection = self.appState.store.Changed:Connect(function(state, oldState)
		self:Update(state, oldState)
	end)
	table.insert(self.connections, appStateConnection)

	-- search clear button
	local clearButtonConnection = getInputEvent(self.clearSearchButton):Connect(function()
		self.searchBox.Text = ""
	end)
	table.insert(self.connections, clearButtonConnection)

	local function updateClearButtonVisibility()
		-- If we were to set the visible property of the clear button on the textbox focus lost event
		-- it would disable the clear button, which in turn would stop the click event
		-- from being able to notify the button
		local visible = self.searchBox:IsFocused() and (self.searchBox.Text  ~= "")
		self.clearSearchButton.ImageTransparency = visible and 0 or 1
	end

	-- search box
	local searchChangedConnection = self.searchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if self.list then
			updateClearButtonVisibility()
			self.list:SetFilterPredicate(self.SearchFilterPredicate)
			self:getOlderConversationsForSearchIfNecessary()
		end
	end)
	table.insert(self.connections, searchChangedConnection)

	local focusedConnection = self.searchBox.Focused:Connect(updateClearButtonVisibility)
	table.insert(self.connections, focusedConnection)
	local focusLostConnection = self.searchBox.FocusLost:Connect(updateClearButtonVisibility)
	table.insert(self.connections, focusLostConnection)

	if not self.placeInfo then
		self.appState.store:Dispatch(GetPlaceInfo(self.placeId))
	end

	if self.appState.store:GetState().ChatAppReducer.AppLoaded and self.placeInfo then
		self:FillContent()
	end
end

function GameShareComponent:Update(newState, oldState)
	if (not oldState.ChatAppReducer.AppLoaded) and newState.ChatAppReducer.AppLoaded and self.placeInfo then
		self:FillContent()
	end

	if (not self.placeInfo) and (newState.PlaceInfos[self.placeId]) then
		self.placeInfo = newState.PlaceInfos[self.placeId]
		if newState.ChatAppReducer.AppLoaded then
			self:FillContent()
		end
	end

	local newPageConversationsIsFetching = newState.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching
	local oldPageConversationsIsFetching = oldState.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching
	if newPageConversationsIsFetching ~= oldPageConversationsIsFetching and self.list then
		self.list:Update(newState, oldState)
		self:getOlderConversationsForSearchIfNecessary()
	end

	if newState.ChatAppReducer.Conversations ~= oldState.ChatAppReducer.Conversations and self.list then
		self.list:Update(newState, oldState)
	end
end

function GameShareComponent:FillContent()
	self.searchContainer.Visible = true
	self:FillPlaceInfo()
	self:FillConversations()
end

function GameShareComponent:FillPlaceInfo()
	if self.placeInfoCard then
		return
	end

	self.placeInfoCard = PlaceInfoCard.new(self.appState, self.placeInfo)
	self.placeInfoCard.rbx.Parent = self.placeInfoCardFrame
end

function GameShareComponent:FillConversations()
	local conversations = self.appState.store:GetState().ChatAppReducer.Conversations
	local list = ConversationList.new(self.appState, conversations, GameShareCard)
	list:SetSortWithConversationEntry(true)
	self.list = list
	list.rbx.Size = UDim2.new(1, 0, 1, 0)
	list.rbx.Parent = self.conversationListFrame
	local tappedConnection = list.ConversationTapped:Connect(function(convoId)
		self:ReportSendButtonTappedEvent(convoId)
		self.appState.store:Dispatch(ConversationActions.SendMessage(convoId, self.placeInfo.url))
	end)
	table.insert(self.connections, tappedConnection)

	local requestOlderConversationConnection = list.RequestOlderConversations:Connect(function()
		requestOlderConversations(self.appState)
	end)
	table.insert(self.connections, requestOlderConversationConnection)
end

function GameShareComponent:getOlderConversationsForSearchIfNecessary(appState)
	-- To Check:
	-- 1) Search is open
	-- 2) Not have loaded all conversations.
	-- 3) Not Ccrrently getting older conversations
	-- 4) Having enouth search items to show
	-- Note that we already try to load more conversations if we scroll down to the bottom of the list
	local state = self.appState.store:GetState()
	local isSearchOpen = (self.searchBox.Text) ~= nil and (self.searchBox.Text ~= "")
	if (not isSearchOpen) or state.ChatAppReducer.ConversationsAsync.oldestConversationIsFetched
		or state.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching then
		return
	end

	if self.list.rbx.CanvasSize.Y.Offset > self.list.rbx.AbsoluteSize.Y then
		return
	end

	requestOlderConversations(self.appState)
end

function GameShareComponent:ReportSendButtonTappedEvent(convoId)
	local eventName = "clickSendBtnFromGameShareCard"
	local eventContext = "touch"

	local player = PlayerService.LocalPlayer
	local userId = "UNKNOWN"
	if player then
		userId = tostring(player.UserId)
	end

	local additionalArgs = {
		uid = userId,
		placeid = self.placeId,
		cid = convoId
	}
	self._analytics.EventStream:setRBXEvent(eventContext, eventName, additionalArgs)
end

function GameShareComponent:Stop()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
end

function GameShareComponent:Destruct()
	if self.list then
		self.list:Destruct()
	end
	if self.header then
		self.header:Destroy()
	end
	if self.placeInfoCard then
		self.placeInfoCard:Destruct()
	end
	self.rbx:Destroy()
end

return GameShareComponent
