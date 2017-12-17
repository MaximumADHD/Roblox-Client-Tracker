--	// FileName: Util.lua
--	// Written by: TheGamer101
--	// Description: Module for shared code between CommandModules.

--[[
Creating a command module:
1) Create a new module inside the CommandModules folder.
2) Create a function that takes a message, the ChatWindow object and the ChatSettings and returns
a bool command processed.
3) Return this function from the module.
--]]

local clientChatModules = script.Parent.Parent
local ChatConstants = require(clientChatModules:WaitForChild("ChatConstants"))

local COMMAND_MODULES_VERSION = 1

local KEY_COMMAND_PROCESSOR_TYPE = "ProcessorType"
local KEY_PROCESSOR_FUNCTION = "ProcessorFunction"

---Command types.
---Process a command as it is being typed. This allows for manipulation of the chat bar.
local IN_PROGRESS_MESSAGE_PROCESSOR = 0
---Simply process a completed message.
local COMPLETED_MESSAGE_PROCESSOR = 1

local module = {}
local methods = {}
methods.__index = methods

function methods:SendSystemMessageToSelf(message, channelObj, extraData)
	local messageData =
	{
		ID = -1,
		FromSpeaker = nil,
		SpeakerUserId = 0,
		OriginalChannel = channelObj.Name,
		IsFiltered = true,
		MessageLength = string.len(message),
		Message = message,
		MessageType = ChatConstants.MessageTypeSystem,
		Time = os.time(),
		ExtraData = extraData,
	}

	channelObj:AddMessageToChannel(messageData)
end

function module.new()
	local obj = setmetatable({}, methods)

	obj.COMMAND_MODULES_VERSION = COMMAND_MODULES_VERSION

	obj.KEY_COMMAND_PROCESSOR_TYPE = KEY_COMMAND_PROCESSOR_TYPE
	obj.KEY_PROCESSOR_FUNCTION = KEY_PROCESSOR_FUNCTION

	obj.IN_PROGRESS_MESSAGE_PROCESSOR = IN_PROGRESS_MESSAGE_PROCESSOR
	obj.COMPLETED_MESSAGE_PROCESSOR = COMPLETED_MESSAGE_PROCESSOR

	return obj
end

return module.new()
