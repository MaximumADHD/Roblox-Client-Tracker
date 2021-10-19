local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local ThreadState = require(script.Parent.ThreadState)
local StackFrame = require(script.Parent.StackFrame)
local DebuggerVariable = require(script.Parent.DebuggerVariable)

local Promise = Framework.Util.Promise

local MockDebuggerConnection = {}
MockDebuggerConnection.__index = MockDebuggerConnection

function MockDebuggerConnection.new(mockID)
	local self = {}
	self.VariableMap = {
		[1] = DebuggerVariable.new(1, 'Alex', 'Instance', 'Map')
	}
	self.MockThreadMap = {}
	self.Id = mockID
	self.Paused = Signal.new()
	self.Resumed = Signal.new()
	self.MockSetThreadStateById = function(id, threadState)
		self.MockThreadMap[id] = threadState
	end

	setmetatable(self, MockDebuggerConnection)
	return self
end

function MockDebuggerConnection:GetThreadById(id: number) : ThreadState.ThreadState
	return self.MockThreadMap[id]
end

function MockDebuggerConnection:EvaluateWatch(expression : string, frame : StackFrame.StackFrame, callback) : number
	local promise = Promise.new(function(resolve, reject, onCancel)
		resolve(callback)
	end)

	promise:andThen(function (newCallback)
		local data = {debuggerVarId = 1}
		newCallback(data)
	end)
	return 0
end

function MockDebuggerConnection:Populate(targetVar, callback) : number
	local promise = Promise.new(function(resolve, reject, onCancel)
		resolve(callback)
	end)

	promise:andThen(function (newCallback)
		local data = {}
		newCallback(data)
	end)
	return 0
end

function MockDebuggerConnection:GetVariableById(debuggerVarId : number) : DebuggerVariable.DebuggerVariable
	return self.VariableMap[debuggerVarId]
end

return MockDebuggerConnection
