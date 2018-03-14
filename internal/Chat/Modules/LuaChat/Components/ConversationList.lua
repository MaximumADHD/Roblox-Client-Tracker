local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)
local StringsLocale = require(LuaApp.StringsLocale)

local Components = LuaChat.Components
local LoadingIndicator = require(Components.LoadingIndicator)

local ConversationList = {}

local function conversationSortPredicate(a, b)
	--For conversations that faked based on friend relations,
	--for now there is no meaningful lastUpdated value to give them,
	--and this property is set to nil, so the sort predicate needs to
	--be able to handle that.
	if a.lastUpdated ~= nil and b.lastUpdated ~= nil then
		return a.lastUpdated:GetUnixTimestamp() > b.lastUpdated:GetUnixTimestamp()
	elseif a.lastUpdated ~= nil then
		return true
	elseif b.lastUpdated ~= nil then
		return false
	else
		return a.title < b.title
	end
end

local function conversationEntrySortPredicate(a, b)
	--For conversations that faked based on friend relations,
	--for now there is no meaningful lastUpdated value to give them,
	--and this property is set to nil, so the sort predicate needs to
	--be able to handle that.
	if a.conversation.lastUpdated ~= nil and b.conversation.lastUpdated ~= nil then
		return a.conversation.lastUpdated:GetUnixTimestamp() > b.conversation.lastUpdated:GetUnixTimestamp()
	elseif a.conversation.lastUpdated ~= nil then
		return true
	elseif b.conversation.lastUpdated ~= nil then
		return false
	else
		return a.conversation.title < b.conversation.title
	end
end

function ConversationList.new(appState, conversations, entryCard)
	local self = {}
	self.appState = appState

	self.connections = {}
	self.conversations = {}
	self.conversationEntries = {}
	self.conversationUsers = {}
	self.isTouchingBottom = false
	self.RequestOlderConversations = Signal.new()
	self.noSearchResultsFound = false
	self.sortWithConversationEntry = false

	self.filterPredicate = nil

	self.ConversationTapped = Signal.new()
	self.lastTappedConversationEntry = nil
	self._oldState = nil
	self.entryCard = entryCard

	self.rbx = Create.new "ScrollingFrame" {
		Name = "ConversationList",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 5,
		BottomImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
		MidImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
		TopImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",

		Create.new "UIListLayout" {
			SortOrder = Enum.SortOrder.LayoutOrder
		}
	}

	self.convoLoadingIndicatorFrame = Create.new "Frame" {
			Name = "LoadingIndicatorFrame",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 72),
			Visible = false
	}
	self.convoLoadingIndicatorFrame.Parent = self.rbx

	local canvasSizeConnection = self.rbx:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		local canvasSizeYOffset = self.rbx.CanvasSize.Y.Offset
		if self.convoLoadingIndicatorFrame.Visible then
			canvasSizeYOffset = canvasSizeYOffset - self.convoLoadingIndicatorFrame.Size.Y.Offset
		end

		if not self.isTouchingBottom and
				self.rbx.CanvasPosition.Y + self.rbx.AbsoluteSize.Y >= canvasSizeYOffset then
			self.isTouchingBottom = true
			self.RequestOlderConversations:Fire()
		elseif self.rbx.CanvasPosition.Y + self.rbx.AbsoluteSize.Y < canvasSizeYOffset then
			self.isTouchingBottom = false
		end
	end)
	table.insert(self.connections, canvasSizeConnection)

	self.noResultsFrame = Create.new "Frame" {
		Name = "NoResultsFrame",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 72),
		Visible = false,

		Create.new "TextLabel" {
			Name = "Content",
			AnchorPoint = Vector2.new(0, 1),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			Font = Enum.Font.SourceSans,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 1, -18),
			TextSize = Constants.Font.FONT_SIZE_18,
			TextColor3 = Constants.Color.GRAY3,
			Text = appState.localization:Format(StringsLocale.Keys.NO_RESULTS_FOUND),
		}
	}
	self.noResultsFrame.Parent = self.rbx

	local appStateConnection = appState.store.Changed:Connect(function(state, oldState)
		if not oldState.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching
			and state.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching then
			self:StartFetchingConversationsAnimation()
		elseif oldState.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching
			and not state.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching then
			self:StopFetchingConversationsAnimation()
		end
		self:CheckToShowNoSearchResults()
	end)
	table.insert(self.connections, appStateConnection)

	setmetatable(self, ConversationList)

	if conversations then
		self:Update(self.appState.store:GetState(), {})
	end

	return self
end

function ConversationList:Update(current, previous)
	local users = current.Users
	local conversations = current.ChatAppReducer.Conversations

	for _, conversation in pairs(conversations) do
		local existing = self.conversations[conversation.id]
		local existingEntry = self.conversationEntries[conversation.id]
		local userCache = self.conversationUsers[conversation.id]

		local doUpdate = false

		if conversation ~= existing or current.ChatAppReducer.Location.current ~= previous.ChatAppReducer.Location.current then
			doUpdate = true
		else
			if userCache then
				for _, id in ipairs(conversation.participants) do
					if userCache[id] ~= users[id] then
						doUpdate = true
						break
					end
				end
			else
				doUpdate = true
			end
		end

		if not userCache then
			userCache = {}
			self.conversationUsers[conversation.id] = userCache
		end

		if doUpdate then
			if existingEntry then
				existingEntry:Update(conversation)
			else
				local entry = self.entryCard.new(self.appState, conversation)
				entry.rbx.Parent = self.rbx
				local tappedConnection = entry.Tapped:Connect(function()
					self.ConversationTapped:Fire(conversation.id)
				end)
				table.insert(self.connections, tappedConnection)

				self.conversationEntries[conversation.id] = entry
			end

			self.conversations[conversation.id] = conversation

			-- TODO: May not correctly handle users leaving?
			for _, id in ipairs(conversation.participants) do
				userCache[id] = users[id]
			end
		end
	end

	local toDelete = {}
	for _, conversation in pairs(self.conversations) do
		local hasBeenRemoved = conversations[conversation.id] == nil
		if hasBeenRemoved then
			table.insert(toDelete, conversation.id)
		end
	end
	for _, id in ipairs(toDelete) do
		local entry = self.conversationEntries[id]
		entry.rbx:Destroy()
		self.conversationEntries[id] = nil
		self.conversations[id] = nil
	end

	self:Filter()
	self:Sort()
	self:ResizeCanvas()

	self._oldState = current
end

function ConversationList:SetFilterPredicate(filterPredicate)
	self.filterPredicate = filterPredicate

	local state = self.appState.store:GetState()
	self:Update(state, self._oldState or state)
end

function ConversationList:Filter()
	local conversationCount = 0
	local visibleCount = 0

	for _, conversationEntry in pairs(self.conversationEntries) do
		local visible
		local conversation = conversationEntry.conversation
		local filterPredicate = self.filterPredicate
		if filterPredicate and conversation then
			visible = filterPredicate(conversation.title)
		else
			visible = true
		end

		conversationEntry.rbx.Visible = visible
		conversationCount = conversationCount + 1
		if visible then
			visibleCount = visibleCount + 1
		end
	end

	self.noSearchResultsFound = ((conversationCount > 0) and (visibleCount == 0))
	self:CheckToShowNoSearchResults()
end

function ConversationList:SetSortWithConversationEntry(value)
	self.sortWithConversationEntry = value
end

function ConversationList:Sort()
	if self.sortWithConversationEntry then
		self:SortWithConversationEntry()
	else
		self:SortWithConversation()
	end
end

function ConversationList:SortWithConversation()
	local sorted = {}
	for _, conversation in pairs(self.conversations) do
		table.insert(sorted, conversation)
	end

	table.sort(sorted, conversationSortPredicate)

	for key, conversation in ipairs(sorted) do
		local entry = self.conversationEntries[conversation.id]
		entry.rbx.LayoutOrder = key
	end

	self.convoLoadingIndicatorFrame.LayoutOrder = #sorted + 1
end

function ConversationList:SortWithConversationEntry()
	local sorted = {}
	for _, entry in pairs(self.conversationEntries) do
		table.insert(sorted, entry)
	end

	table.sort(sorted, conversationEntrySortPredicate)

	for key, conversationEntry in ipairs(sorted) do
		local entry = self.conversationEntries[conversationEntry.conversation.id]
		entry.rbx.LayoutOrder = key
	end

	self.convoLoadingIndicatorFrame.LayoutOrder = #sorted + 1
end

function ConversationList:ResizeCanvas()
	local height = 0
	for _, entry in pairs(self.conversationEntries) do
		if entry.rbx.Visible then
			height = height + entry.rbx.AbsoluteSize.Y
		end
	end

	if self.convoLoadingIndicatorFrame.Visible then
		height = height + self.convoLoadingIndicatorFrame.AbsoluteSize.Y
	end

	self.rbx.CanvasSize = UDim2.new(1, 0, 0, height)
end

function ConversationList:StartFetchingConversationsAnimation()
	if not self.currentFetchConvoIndicator then
		local loadingIndicator = LoadingIndicator.new(self.appState, 1)
		loadingIndicator.rbx.AnchorPoint = Vector2.new(0.5, 0.5)
		loadingIndicator.rbx.Position = UDim2.new(0.5, 0, 0.5, 0)
		loadingIndicator.rbx.Parent = self.convoLoadingIndicatorFrame

		self.currentFetchConvoIndicator = loadingIndicator

		self.convoLoadingIndicatorFrame.Visible = true

		self:ResizeCanvas()
		self:Sort()
	end
end

function ConversationList:StopFetchingConversationsAnimation()
	if self.currentFetchConvoIndicator then
		self.currentFetchConvoIndicator:Destroy()
		self.currentFetchConvoIndicator = nil
		self.convoLoadingIndicatorFrame.Visible = false

		self:ResizeCanvas()
	end
end

function ConversationList:CheckToShowNoSearchResults()
	local visible = false

	if not self.convoLoadingIndicatorFrame.Visible then
		visible = self.noSearchResultsFound
	end

	self.noResultsFrame.Visible = visible
end

function ConversationList:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	for _, entry in pairs(self.conversationEntries) do
		entry:Destruct()
	end
	self.conversations = {}
	self.conversationEntries = {}
	self.conversationUsers = {}
	self.rbx:Destroy()
end

ConversationList.__index = ConversationList

return ConversationList