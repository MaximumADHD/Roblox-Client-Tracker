local Players = game:GetService("Players")

local LuaChat = script.Parent.Parent
local DateTime = require(LuaChat.DateTime)
local MockId = require(LuaChat.MockId)

local Message = {}

function Message.new()
	local self = {}

	return self
end

function Message.mock(mergeTable)
	local self = Message.new()

	self.id = MockId()
	self.senderTargetId = MockId()
	self.conversationId = MockId()
	self.senderType = "MESSAGE SENDERTYPE"
	self.content = "MESSAGE CONTENT"
	self.read = false
	self.sent = DateTime.now()
	self.previousMessageId = nil
	self.filteredForReceivers = false

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	return self
end

function Message.fromWeb(data, conversationId, previousMessageId)
	local self = Message.new()

	self.id = data.id
	self.senderTargetId = tostring(data.senderTargetId)
	self.senderType = data.senderType
	self.content = data.content
	self.read = data.read
	self.sent = DateTime.fromIsoDate(data.sent)
	self.conversationId = tostring(conversationId)
	self.previousMessageId = previousMessageId
	self.filteredForReceivers = false

	return self
end

function Message.fromSentWeb(data, conversationId, previousMessageId)
	local self = Message.new()

	self.id = data.messageId
	self.senderTargetId = tostring(Players.LocalPlayer.UserId)
	self.senderType = "User"
	self.content = data.content
	self.read = true
	self.sent = DateTime.fromIsoDate(data.sent)
	self.conversationId = tostring(conversationId)
	self.previousMessageId = previousMessageId
	self.filteredForReceivers = data.filteredForReceivers

	return self
end

return Message