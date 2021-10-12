local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local ThreadState = require(script.Parent.ThreadState)
local StackFrame = require(script.Parent.StackFrame)
local ScriptRef = require(script.Parent.ScriptRef)
local DebuggerVariable = require(script.Parent.DebuggerVariable)

local Promise = Framework.Util.Promise

local MockDebuggerConnection = {}
MockDebuggerConnection.__index = MockDebuggerConnection

function MockDebuggerConnection.new(mockID)
	local self = {}
	self.VariableMap = {
		[1] = DebuggerVariable.new(1, 'Alex', 'Instance', 'Map')
	}
	self.Id = mockID
	self.Paused = Signal.new()
	self.Resumed = Signal.new()
	self.GetThreadById = function(id: number) : ThreadState.ThreadState
		local stackFrame = StackFrame.new(1, ScriptRef.new(),"TestFrame1", "C")
		return ThreadState.new(id, "testThread", true, {stackFrame})
	end
	self.EvaluateWatch = function(expression : string, frame : StackFrame.StackFrame, callback) : number
		local promise = Promise.new(function(resolve, reject, onCancel)
			resolve(callback)
		end)
		
		promise:andThen(function (newCallback)
			local data = {debuggerVarId = 1}
			newCallback(data)
		end)
		return 0
	end
	self.Populate = function(targetVar, callback) : number
		local promise = Promise.new(function(resolve, reject, onCancel)
			resolve(callback)
		end)
		
		promise:andThen(function (newCallback)
			local data = {}
			newCallback(data)
		end)
		return 0
	end
	self.GetVariable = function(debuggerVarId : number) : DebuggerVariable.DebuggerVariable
		return self.VariableMap[debuggerVarId]
	end

	setmetatable(self, MockDebuggerConnection)
	return self
end

return MockDebuggerConnection
