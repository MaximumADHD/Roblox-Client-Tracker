--	// FileName: MessageLabelCreator.lua
--	// Written by: Xsitsu
--	// Description: Module to handle taking text and creating stylized GUI objects for display in ChatWindow.

local OBJECT_POOL_SIZE = 50

local module = {}
--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local messageCreatorModules = clientChatModules:WaitForChild("MessageCreatorModules")
local messageCreatorUtil = require(messageCreatorModules:WaitForChild("Util"))
local modulesFolder = script.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))
local moduleObjectPool = require(modulesFolder:WaitForChild("ObjectPool"))
local MessageSender = require(modulesFolder:WaitForChild("MessageSender"))

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function ReturnToObjectPoolRecursive(instance, objectPool)
	local children = instance:GetChildren()
	for i = 1, #children do
		ReturnToObjectPoolRecursive(children[i], objectPool)
	end
	instance.Parent = nil
	objectPool:ReturnInstance(instance)
end

function GetMessageCreators()
	local typeToFunction = {}
	local creators = messageCreatorModules:GetChildren()
	for i = 1, #creators do
		if creators[i]:IsA("ModuleScript") then
			if creators[i].Name ~= "Util" then
				local creator = require(creators[i])
				typeToFunction[creator[messageCreatorUtil.KEY_MESSAGE_TYPE]] = creator[messageCreatorUtil.KEY_CREATOR_FUNCTION]
			end
		end
	end
	return typeToFunction
end

function methods:WrapIntoMessageObject(messageData, createdMessageObject)
	local BaseFrame = createdMessageObject[messageCreatorUtil.KEY_BASE_FRAME]
	local BaseMessage = nil
	if messageCreatorUtil.KEY_BASE_MESSAGE then
		BaseMessage = createdMessageObject[messageCreatorUtil.KEY_BASE_MESSAGE]
	end
	local UpdateTextFunction = createdMessageObject[messageCreatorUtil.KEY_UPDATE_TEXT_FUNC]
	local GetHeightFunction = createdMessageObject[messageCreatorUtil.KEY_GET_HEIGHT]
	local FadeInFunction = createdMessageObject[messageCreatorUtil.KEY_FADE_IN]
	local FadeOutFunction = createdMessageObject[messageCreatorUtil.KEY_FADE_OUT]
	local UpdateAnimFunction = createdMessageObject[messageCreatorUtil.KEY_UPDATE_ANIMATION]

	local obj = {}

	obj.ID = messageData.ID
	obj.BaseFrame = BaseFrame
	obj.BaseMessage = BaseMessage
	obj.UpdateTextFunction = UpdateTextFunction or function() warn("NO MESSAGE RESIZE FUNCTION") end
	obj.GetHeightFunction = GetHeightFunction
	obj.FadeInFunction = FadeInFunction
	obj.FadeOutFunction = FadeOutFunction
	obj.UpdateAnimFunction = UpdateAnimFunction
	obj.ObjectPool = self.ObjectPool
	obj.Destroyed = false

	function obj:Destroy()
		ReturnToObjectPoolRecursive(self.BaseFrame, self.ObjectPool)
		self.Destroyed = true
	end

	return obj
end

function methods:CreateMessageLabel(messageData, currentChannelName)
	local messageType = messageData.MessageType
	if self.MessageCreators[messageType] then
		local createdMessageObject = self.MessageCreators[messageType](messageData, currentChannelName)
		if createdMessageObject then
			return self:WrapIntoMessageObject(messageData, createdMessageObject)
		end
	elseif self.DefaultCreatorType then
		local createdMessageObject = self.MessageCreators[self.DefaultCreatorType](messageData, currentChannelName)
		if createdMessageObject then
			return self:WrapIntoMessageObject(messageData, createdMessageObject)
		end
	else
		error("No message creator available for message type: " ..messageType)
	end
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)

	obj.ObjectPool = moduleObjectPool.new(OBJECT_POOL_SIZE)
	obj.MessageCreators = GetMessageCreators()
	obj.DefaultCreatorType = messageCreatorUtil.DEFAULT_MESSAGE_CREATOR

	messageCreatorUtil:RegisterObjectPool(obj.ObjectPool)

	return obj
end

function module:GetStringTextBounds(text, font, textSize, sizeBounds)
	return messageCreatorUtil:GetStringTextBounds(text, font, textSize, sizeBounds)
end

return module
