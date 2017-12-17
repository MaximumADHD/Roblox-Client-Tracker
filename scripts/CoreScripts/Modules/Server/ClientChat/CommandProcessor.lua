--	// FileName: ProcessCommands.lua
--	// Written by: TheGamer101
--	// Description: Module for processing commands using the client CommandModules

local module = {}
local methods = {}
methods.__index = methods

--////////////////////////////// Include
--//////////////////////////////////////
local Chat = game:GetService("Chat")
local clientChatModules = Chat:WaitForChild("ClientChatModules")
local commandModules = clientChatModules:WaitForChild("CommandModules")
local commandUtil = require(commandModules:WaitForChild("Util"))
local modulesFolder = script.Parent
local ChatSettings = require(clientChatModules:WaitForChild("ChatSettings"))

function methods:SetupCommandProcessors()
	local commands = commandModules:GetChildren()
	for i = 1, #commands do
		if commands[i]:IsA("ModuleScript") then
			if commands[i].Name ~= "Util" then
				local commandProcessor = require(commands[i])
				local processorType = commandProcessor[commandUtil.KEY_COMMAND_PROCESSOR_TYPE]
				local processorFunction = commandProcessor[commandUtil.KEY_PROCESSOR_FUNCTION]
				if processorType == commandUtil.IN_PROGRESS_MESSAGE_PROCESSOR then
					table.insert(self.InProgressMessageProcessors, processorFunction)
				elseif processorType == commandUtil.COMPLETED_MESSAGE_PROCESSOR then
					table.insert(self.CompletedMessageProcessors, processorFunction)
				end
			end
		end
	end
end

function methods:ProcessCompletedChatMessage(message, ChatWindow)
	for i = 1, #self.CompletedMessageProcessors do
		local processedCommand = self.CompletedMessageProcessors[i](message, ChatWindow, ChatSettings)
		if processedCommand then
			return true
		end
	end
	return false
end

function methods:ProcessInProgressChatMessage(message, ChatWindow, ChatBar)
	for i = 1, #self.InProgressMessageProcessors do
		local customState = self.InProgressMessageProcessors[i](message, ChatWindow, ChatBar, ChatSettings)
		if customState then
			return customState
		end
	end
	return nil
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)

	obj.CompletedMessageProcessors = {}
	obj.InProgressMessageProcessors = {}

	obj:SetupCommandProcessors()

	return obj
end

return module
