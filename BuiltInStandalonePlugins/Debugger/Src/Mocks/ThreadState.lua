--!strict
--[[
ThreadState:
- threadId : number
- threadName : string
- isValid : boolean
- callstack : { StackFrame }
]]--

local StackFrame = require(script.Parent.StackFrame)

local ThreadState = {}

function ThreadState.new(threadId : number, threadName : string, isValid : boolean, callstack : { StackFrame.StackFrame })
	local self = {
		threadId = threadId,
		threadName = threadName,
		isValid = isValid,
		callstack = callstack,
		FrameCount = 0
	}

	local GetChildren = function ()
		return self.callstack
	end
	
	for _ in pairs(self.callstack) do 
		self.FrameCount = self.FrameCount + 1
	end
	local GetFrame = function(index : number) : StackFrame.StackFrame
		return self.callstack[index]
	end

	return {
		GetFrame = GetFrame,
		GetChildren = GetChildren,
		FrameCount = self.FrameCount,
		Populated = true,
		ThreadId = self.threadId,
		ThreadName = self.threadName
	}
end

export type ThreadState = typeof(ThreadState.new(0, "DefaultThread", true, {}))
export type ThreadId = number
return ThreadState
