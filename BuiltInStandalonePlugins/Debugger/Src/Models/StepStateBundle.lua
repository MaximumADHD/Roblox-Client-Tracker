local DebuggerStateToken = require(script.Parent.DebuggerStateToken)

export type StepStateBundle = {
	debuggerStateToken : DebuggerStateToken.DebuggerStateToken,
	threadId : number,
	frameNumber : number,
}

local function ctor(debuggerStateToken : DebuggerStateToken.DebuggerStateToken, threadId : number, frameNumber : number) : StepStateBundle
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		frameNumber = frameNumber,
	}
end

return {
	ctor = ctor,
}
