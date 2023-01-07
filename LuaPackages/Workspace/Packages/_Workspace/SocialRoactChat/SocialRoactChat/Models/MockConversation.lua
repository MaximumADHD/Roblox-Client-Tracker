local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local Packages = SocialRoactChat.Parent

local MockId = require(Packages.UnitTestHelpers).MockId
local OrderedMap = require(Packages.AppCommonLib).OrderedMap
local Constants = require(SocialRoactChat.Constants)
local LuaDateTime = require(Packages.Time).DateTime

local Conversation = require(script.Parent.Conversation)

local function getMessageId(message)
	return message.id
end

local function messageSortPredicate(a: any, b: any)
	local aValue = a.sent:GetUnixTimestamp()
	local bValue = b.sent:GetUnixTimestamp()

	return aValue < bValue
end

local function sendingMessageSortPredicate(a: any, b: any)
	return a.order < b.order
end

local MockConversation = {}
MockConversation.__index = MockConversation

function MockConversation.mock(mergeTable: { string: any }?)
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

	self.lastUpdated = LuaDateTime.now()

	self.titleForViewer = "title"
	self.isDefaultTitle = true

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	setmetatable(self, {
		__index = Conversation,
	})

	return self
end

return MockConversation
