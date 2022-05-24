local DebuggerStateToken = require(script.Parent.DebuggerStateToken)

-- There is a discrepancy between Lua and C++ indexes for arrays, like FrameNumber. Subtract by one when interfacing with C++ API

export type StepStateBundle = {
	debuggerStateToken: DebuggerStateToken.DebuggerStateToken,
	threadId: number,
	frameNumber: number,
}

local function ctor(
	debuggerStateToken: DebuggerStateToken.DebuggerStateToken,
	threadId: number,
	frameNumber: number
): StepStateBundle
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		frameNumber = frameNumber,
	}
end

return {
	ctor = ctor,
}
