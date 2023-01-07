--!nonstrict
--TODO: Access the dependencies through RoactChat.dependencies file when packagify RoactChat.
local Players = game:GetService("Players")

local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local Packages = SocialRoactChat.Parent

local LuaDateTime = require(Packages.Time).DateTime
local MockId = require(Packages.UnitTestHelpers).MockId

local GameLink = {}

function GameLink.new(universeId)
	return {
		universeId = tostring(universeId),
	}
end

local Message = {
	MessageTypes = {
		PlainText = "PlainText",
		Link = "Link",
	},
	LinkTypes = {
		Game = "Game",
	},
}

function Message.new(message)
	Message.__index = Message

	local self = message or {}

	setmetatable(self, Message)

	return self
end

function Message.fromWeb(data, conversationId, previousMessageId)
	if not Message.DoRequiredFieldsPresent(data) then
		return nil
	end

	local self = Message.new()
	self.id = data.id
	self.senderTargetId = tostring(data.senderTargetId)
	self.senderType = data.senderType
	self.read = data.read
	self.sent = LuaDateTime.fromIsoDate(data.sent)
	self.conversationId = tostring(conversationId)
	self.previousMessageId = previousMessageId
	self.filteredForReceivers = false

	self:parseContentWeb(data)

	return self
end

function Message.fromSentWeb(data, conversationId)
	if not Message.DoRequiredFieldsPresentForSent(data) then
		return nil
	end

	local self = Message.new()
	self.id = data.messageId
	self.senderTargetId = tostring(Players.LocalPlayer.UserId)
	self.senderType = "User"
	self.read = true
	self.sent = LuaDateTime.fromIsoDate(data.sent)
	self.conversationId = tostring(conversationId)
	self.previousMessageId = ""

	self.filteredForReceivers = data.filteredForReceivers
	self:parseContentSentWeb(data)

	return self
end

-- TODO: remove the usage of MockId
function Message.newSendingId()
	return "sending-message-" .. MockId()
end

function Message.newSystemMessage(localizedTextKey)
	local self = Message.new()

	self.localizedTextKey = localizedTextKey

	return self
end

function Message.newSending(props)
	assert(props, "props argument is missing")
	assert(props.id, "props.id argument is missing")
	assert(props.messageType, "props.messageType argument is missing")
	assert(props.order, "props.order argument is missing")
	assert(props.conversationId, "props.conversationId argument is missing")
	assert(props.sent, "props.sent argument is missing")

	local self = Message.new(props)

	self.senderTargetId = tostring(Players.LocalPlayer.UserId)
	self.senderType = "User"
	self.moderated = false
	self.failed = false

	return self
end

function Message.DoRequiredFieldsPresent(data)
	return data and data.id and data.messageType and data.senderTargetId and data.sent
end
function Message.DoRequiredFieldsPresentForSent(data)
	return data and data.messageId and data.messageType and data.sent
end

function Message:parseContentWeb(data)
	self:parseContent(data)
	if data.messageType == Message.MessageTypes.Link then
		if data.link and data.link.type == Message.LinkTypes.Game and data.link.game then
			self.gameLink = GameLink.new(data.link.game.universeId)
		end
	end
end

function Message:parseContentSentWeb(data)
	self:parseContent(data)
	if data.messageType == Message.MessageTypes.Link then
		if data.chatMessageLinkType == Message.LinkTypes.Game then
			self.gameLink = GameLink.new(data.universeId)
		end
	end
end

function Message:parseContent(data)
	self.messageType = data.messageType
	if data.messageType == Message.MessageTypes.PlainText then
		self.content = data.content
	else
		-- UI will decide on which placeholder to use
		self.content = nil
	end
end

return Message
