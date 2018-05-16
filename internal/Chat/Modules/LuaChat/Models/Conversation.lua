local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local MockId = require(LuaApp.MockId)
local OrderedMap = require(LuaChat.OrderedMap)
local Constants = require(LuaChat.Constants)
local DateTime = require(LuaChat.DateTime)

local Players = game:GetService("Players")

local function getMessageId(message)
	return message.id
end

local function messageSortPredicate(a, b)
	local aValue = a.sent:GetUnixTimestamp()
	local bValue = b.sent:GetUnixTimestamp()

	return aValue < bValue
end

local function sendingMessageSortPredicate(a, b)
	return a.order < b.order
end

local Conversation = {}

Conversation.Type = {
	MULTI_USER_CONVERSATION = "MultiUserConversation",
	ONE_TO_ONE_CONVERSATION = "OneToOneConversation",
}

function Conversation.IdForFakeOneOnOne(participants)
	--For any two users, there can only exist a single one-to-one
	--conversation. We can use this invariant to create a unique id
	--that persists before and after it's created on the server.
	local id = Conversation.Type.ONE_TO_ONE_CONVERSATION
	table.sort(participants)
	for _, userId in ipairs(participants) do
		id = id.."-"..tostring(userId)
	end
	return id
end

function Conversation.new()
	local self = {}

	return self
end

function Conversation.mock(mergeTable)
	local self = Conversation.new()

	self.messages = OrderedMap.new(getMessageId, messageSortPredicate)
	self.sendingMessages = OrderedMap.new(getMessageId, sendingMessageSortPredicate)
	self.id = MockId()
	--I'm adding a clientId here so that the NewChatGroup view can know that a
	--conversation was successfully saved. We could also do a callback,
	--but this seems to fit more cleanly with the flux architecture we're already using
	--...though we could also create a second store for pending conversations, store.PendingConversations
	self.clientId = MockId()
	self.title = ""
	self.initiator = MockId()
	self.hasUnreadMessages = false
	self.conversationType = Conversation.Type.MULTI_USER_CONVERSATION
	self.participants = {}
	self.usersTyping = {}
	self.isUserLeaving = false
	self.fetchingOlderMessages = false
	self.fetchedOldestMessage = false
	self.serverState = Constants.ServerState.NONE
	self.pinnedGame = {}
	self.pinnedGame.universeId = MockId()
	self.pinnedGame.rootPlaceId = MockId()

	self.lastUpdated = DateTime.now()

	self.titleForViewer = "title"
	self.isDefaultTitle = true

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	return self
end

function Conversation.fromUser(user)

	local self = Conversation.new()

	self.messages = OrderedMap.new(getMessageId, messageSortPredicate)
	self.sendingMessages = OrderedMap.new(getMessageId, sendingMessageSortPredicate)
	self.clientId = MockId()
	self.title = user.name
	self.initiator = nil
	self.hasUnreadMessages = false
	self.conversationType = Conversation.Type.ONE_TO_ONE_CONVERSATION
	self.participants = { tostring(Players.LocalPlayer.UserId), user.id }
	self.usersTyping = {}
	self.isUserLeaving = false
	self.fetchingOlderMessages = false
	self.fetchedOldestMessage = false
	self.serverState = Constants.ServerState.NONE

	self.id = Conversation.IdForFakeOneOnOne(self.participants)

	self.lastUpdated = nil

	self.isDefaultTitle = true

	return self
end

function Conversation.empty(mergeTable)
	local self = Conversation.new()

	self.id = "-1"
	self.messages = OrderedMap.new(getMessageId, messageSortPredicate)
	self.sendingMessages = OrderedMap.new(getMessageId, sendingMessageSortPredicate)
	self.title = ""
	self.initiator = "0"
	self.hasUnreadMessages = false
	self.conversationType = Conversation.Type.MULTI_USER_CONVERSATION
	self.participants = {}
	self.usersTyping = {}
	self.isUserLeaving = false
	self.fetchingOlderMessages = false
	self.serverState = Constants.ServerState.NONE
	self.pinnedGame = {}

	self.lastUpdated = DateTime.now()

	self.isDefaultTitle = true

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	return self
end

function Conversation.fromWeb(data, clientId)
	local self = Conversation.new()

	self.messages = OrderedMap.new(getMessageId, messageSortPredicate)
	self.sendingMessages = OrderedMap.new(getMessageId, sendingMessageSortPredicate)
	self.id = tostring(data.id)
	self.clientId = clientId or MockId()
	self.title = data.title
	self.initiator = tostring(data.initiator.targetId)
	self.hasUnreadMessages = data.hasUnreadMessages
	self.conversationType = data.conversationType
	self.participants = {}
	self.usersTyping = {}
	self.isUserLeaving = false
	self.fetchingOlderMessages = false
	self.serverState = Constants.ServerState.CREATED
	self.pinnedGame = {}
	if data.conversationUniverse ~= nil then
		self.pinnedGame.universeId = tostring(data.conversationUniverse.universeId)
		self.pinnedGame.rootPlaceId = tostring(data.conversationUniverse.rootPlaceId)
	end

	self.lastUpdated = DateTime.fromIsoDate(data.lastUpdated)

	self.titleForViewer = data.conversationTitle.titleForViewer
	self.isDefaultTitle = data.conversationTitle.isDefaultTitle

	for _, webParticipant in ipairs(data.participants) do
		table.insert(self.participants, tostring(webParticipant.targetId))
	end

	return self
end

return Conversation