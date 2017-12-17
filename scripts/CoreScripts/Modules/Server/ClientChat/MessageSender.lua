--	// FileName: MessageSender.lua
--	// Written by: Xsitsu
--	// Description: Module to centralize sending message functionality.

local module = {}
--////////////////////////////// Include
--//////////////////////////////////////
local modulesFolder = script.Parent

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function methods:SendMessage(message, toChannel)
	self.SayMessageRequest:FireServer(message, toChannel)
end

function methods:RegisterSayMessageFunction(func)
	self.SayMessageRequest = func
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)
	obj.SayMessageRequest = nil

	return obj
end

return module.new()
