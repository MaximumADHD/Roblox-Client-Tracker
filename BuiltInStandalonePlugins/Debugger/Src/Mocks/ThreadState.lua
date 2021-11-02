local StackFrame = require(script.Parent.StackFrame)

local ThreadState = {}
ThreadState.__index = ThreadState

function ThreadState.new(threadId : number, threadName : string, isValid : boolean)
	local self = {
		ThreadId = threadId,
		ThreadName = threadName,
		isValid = isValid,
		Populated = false,
		PopulatableType = "ThreadState",
		callstack = {},
		FrameCount = 0
	}
	
	setmetatable(self, ThreadState)
	return self
end

function ThreadState:GetFrame(index : number) : StackFrame.StackFrame
	return self.callstack[index]
end

function ThreadState:GetChildren()
	return self.callstack
end

function ThreadState:MockSetChildren(newCallstack : { StackFrame.StackFrame })
	assert(newCallstack)
	self.callstack = newCallstack
	self.FrameCount = 0
	for _ in pairs(self.callstack) do 
		self.FrameCount = self.FrameCount + 1
	end
	self.Populated = true
end

export type ThreadState = typeof(ThreadState.new(0, "DefaultThread", true))
export type ThreadId = number
return ThreadState
