--	// FileName: Util.lua
--	// Written by: TheGamer101
--	// Description: Utility code used by the server side chat implementation.

local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local DEFAULT_PRIORITY = ChatConstants.StandardPriority
if DEFAULT_PRIORITY == nil then
	DEFAULT_PRIORITY = 10
end

local Util = {}
Util.__index = Util

local SortedFunctionContainer = {}; do
	-- This sorted function container is used to handle the logic around storing filter functions and
	-- command processors by priority.

	local methods = {}
	methods.__index = methods

	function methods:RebuildProcessCommandsPriorities()
		self.RegisteredPriorites = {}
		for priority, functions in pairs(self.FunctionMap) do
			local functionsEmpty = true
			for funcId, funciton in pairs(functions) do
				functionsEmpty = false
				break
			end
			if not functionsEmpty then
				table.insert(self.RegisteredPriorites, priority)
			end
		end
		table.sort(self.RegisteredPriorites, function(a, b)
			return a > b
		end)
	end

	function methods:HasFunction(funcId)
		if self.RegisteredFunctions[funcId] == nil then
			return false
		end
		return true
	end

	function methods:RemoveFunction(funcId)
		local functionPriority = self.RegisteredFunctions[funcId]
		self.RegisteredFunctions[funcId] = nil
		self.FunctionMap[functionPriority][funcId] = nil
		self:RebuildProcessCommandsPriorities()
	end

	function methods:AddFunction(funcId, func, priority)
		if priority == nil then
			priority = DEFAULT_PRIORITY
		end

		if self.RegisteredFunctions[funcId] then
			error(funcId .. " is already in use!")
		end

		self.RegisteredFunctions[funcId] = priority

		if self.FunctionMap[priority] == nil then
			self.FunctionMap[priority] = {}
		end

		self.FunctionMap[priority][funcId] = func
		self:RebuildProcessCommandsPriorities()
	end

	function methods:GetIterator()
		local priorityIndex = 1
		local funcId = nil
		local func = nil

		return function()
			while true do
				if priorityIndex > #self.RegisteredPriorites then
					return
				end
				local priority = self.RegisteredPriorites[priorityIndex]
				funcId, func = next(self.FunctionMap[priority], funcId)
				if funcId == nil then
					priorityIndex = priorityIndex + 1
				else
					return funcId, func, priority
				end
			end
		end
	end

	function SortedFunctionContainer.new()
		local obj = setmetatable({}, methods)

		obj.RegisteredFunctions = {}
		obj.RegisteredPriorites = {}
		obj.FunctionMap = {}

		return obj
	end
end

function Util:NewSortedFunctionContainer()
	return SortedFunctionContainer.new()
end

return Util
