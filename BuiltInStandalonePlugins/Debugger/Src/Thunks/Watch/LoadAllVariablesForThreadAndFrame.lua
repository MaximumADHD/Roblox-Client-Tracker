local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)

local Thunks = Plugin.Src.Thunks
local ExecuteExpression = require(Thunks.Watch.ExecuteExpressionThunk)
local LoadStackFrameVariables = require(Thunks.Callstack.LoadStackFrameVariables)
local SetCurrentThread = require(Plugin.Src.Actions.Callstack.SetCurrentThread)

return function(threadId: number, debuggerConnection, frameNumber : number, debuggerUIService)
	return function(store, contextItems)
		if not debuggerConnection then
			return
		end
		
		debuggerUIService:SetCurrentThreadId(threadId)
		store:dispatch(SetCurrentThread(threadId))
		
		local common = store:getState().Common
		local dst = common.debuggerConnectionIdToDST[debuggerConnection.Id]
		
		local threadState = debuggerConnection:GetThreadById(threadId)
		local callstack = threadState:GetChildren()				
		local stepStateBundle = StepStateBundle.ctor(dst, threadId, frameNumber+1)
		store:dispatch(LoadStackFrameVariables(debuggerConnection, callstack[frameNumber+1], stepStateBundle))

		local listOfExpressions = store:getState().Watch.listOfExpressions
		for _, expression in ipairs(listOfExpressions) do
			store:dispatch(ExecuteExpression(expression, stepStateBundle, debuggerConnection))
		end
	end
end
