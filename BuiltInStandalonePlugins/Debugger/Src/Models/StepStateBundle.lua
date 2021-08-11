local DebuggerStateToken = require(script.Parent.DebuggerStateToken)

export type DebuggerStateToken = {
    debuggerStateToken : DebuggerStateToken.DebuggerStateToken,
	threadId : number,
	frameNumber : number,
}

local function ctor(debuggerStateToken : DebuggerStateToken.DebuggerStateToken, threadId : number, frameNumber : number) : DebuggerStateToken
	return {
		debuggerStateToken = debuggerStateToken,
		threadId = threadId,
		frameNumber = frameNumber,
	}
end

return {
	ctor = ctor,
}
