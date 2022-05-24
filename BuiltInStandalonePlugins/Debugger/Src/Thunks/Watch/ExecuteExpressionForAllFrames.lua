local Plugin = script.Parent.Parent.Parent.Parent
local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local DebuggerStateToken = require(Models.DebuggerStateToken)
local ExecuteExpression = require(Plugin.Src.Thunks.Watch.ExecuteExpressionThunk)

return function(expressionString: string, debuggerConnection, dst: DebuggerStateToken.DebuggerStateToken, threadId: number)
	return function(store, contextItems)
		assert(debuggerConnection)

		local currentThread = debuggerConnection:GetThreadById(threadId)
		assert(currentThread)

		for i = 1, currentThread.FrameCount do
			local stepStateBundle = StepStateBundle.ctor(dst, threadId, i)
			store:dispatch(ExecuteExpression(expressionString, stepStateBundle, debuggerConnection))
		end
	end
end
