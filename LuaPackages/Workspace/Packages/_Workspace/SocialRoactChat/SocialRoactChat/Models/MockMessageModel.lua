local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local Packages = SocialRoactChat.Parent

local LuaDateTime = require(Packages.Time).DateTime
local MockId = require(Packages.UnitTestHelpers).MockId

local MessageModel = require(script.Parent.MessageModel)

local MockMessageModel = {}

function MockMessageModel.mock(mergeTable)
	local self = MessageModel.new()

	self.id = MockId()
	self.senderTargetId = MockId()
	self.conversationId = MockId()
	self.senderType = "MESSAGE SENDERTYPE"
	self.content = "MESSAGE CONTENT"
	self.messageType = MessageModel.MessageTypes.PlainText

	self.read = false
	self.sent = LuaDateTime.now()
	self.previousMessageId = nil
	self.filteredForReceivers = false

	if mergeTable ~= nil then
		for key, value in pairs(mergeTable) do
			self[key] = value
		end
	end

	return self
end

setmetatable(MockMessageModel, {
	__index = MessageModel,
})

return MockMessageModel
