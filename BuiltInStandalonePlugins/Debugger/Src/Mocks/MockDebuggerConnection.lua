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
	
	local rootVariable = DebuggerVariable.new(1, 'Alex', 'Instance', 'Map')
	local rootVariable3 = DebuggerVariable.new(3,"Alex2", "somePreview", "map")
	rootVariable:MockSetChildren({rootVariable3})
	local rootVariable2= DebuggerVariable.new(2, 'UnitedStatesMockDebugger', 'Instance', 'Map')
	local rootVariable4 = DebuggerVariable.new(4, 'TexasMockDebugger', 'Instance', 'Map')
	local rootVariable5 = DebuggerVariable.new(5,"PlanoMockDebugger", "somePreview", "map")
	rootVariable4:MockSetChildren({rootVariable5})
	rootVariable2:MockSetChildren({rootVariable4})

	self.VariableMap = {
		[1] = rootVariable,
		[2] = rootVariable2,
		[3] = rootVariable3,
		[4] = rootVariable4,
		[5] = rootVariable5
	}
	self.MockThreadMap = {}
	self.MockThreadIdToCallstackMap = {}
	self.MockCallstackFrameToDebuggerVariables ={}
	self.Id = mockID
	self.Paused = Signal.new()
	self.Resumed = Signal.new()
	self.MockSetThreadStateById = function(id, threadState)
		self.MockThreadMap[id] = threadState
	end
	
	self.MockSetCallstackByThreadId = function(id, callstack)
		self.MockThreadIdToCallstackMap[id] = callstack
	end
	
	self.MockSetDebuggerVariablesByCallstackFrame = function(frame, variables)
		self.MockCallstackFrameToDebuggerVariables[frame] = variables
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

	promise:andThen(function(newCallback)
		local data = {debuggerVarId = 1}
		newCallback(data)
	end)
	return 0
end

function MockDebuggerConnection:GetThreads(callback) : number
	local promise = Promise.new(function(resolve, reject, onCancel)
		resolve(callback)
	end)

	promise:andThen(function(newCallback)
		local data = {}
		newCallback(data)
	end)
	return 0
end

function MockDebuggerConnection:Populate(targetVar, callback) : number
	if not targetVar.Populated then
		if targetVar.PopulatableType == "ThreadState" then
			targetVar:MockSetChildren(self.MockThreadIdToCallstackMap[targetVar.ThreadId])
		elseif targetVar.PopulatableType == "StackFrame" then
			targetVar:MockSetChildren(self.MockCallstackFrameToDebuggerVariables[targetVar])
		end
	end
	
	local promise = Promise.new(function(resolve, reject, onCancel)
		resolve(callback)
	end)

	promise:andThen(function(newCallback)
		local data = {}
		newCallback(data)
	end)
	return 0
end

function MockDebuggerConnection:GetVariableById(debuggerVarId : number) : DebuggerVariable.DebuggerVariable
	return self.VariableMap[debuggerVarId]
end

return MockDebuggerConnection
