local Plugin = script.Parent.Parent.Parent.Parent
local ExpressionEvaluated = require(Plugin.Src.Actions.Watch.ExpressionEvaluated)
local Models=  Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local WatchRow = require(Models.Watch.WatchRow)
local Constants = require(Plugin.Src.Util.Constants)

return function(expressionString : string, stepStateBundle : StepStateBundle.StepStateBundle, debuggerConnection)
	return function(store, contextItems)
		local dst = stepStateBundle.debuggerStateToken
		if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
				return
		end
		
		if debuggerConnection == nil then
			assert(false)
			return
		end
		
		local currentThread = debuggerConnection:GetThreadById(stepStateBundle.threadId)
		if currentThread == nil then
			assert(false)
			return
		end
		
		local frameNumber = stepStateBundle.frameNumber - 1 -- C++ uses index at 0
		local currentFrame = currentThread:GetFrame(frameNumber)
		if currentFrame == nil then
			assert(false)
			return
		end

		debuggerConnection:EvaluateWatch(expressionString, currentFrame, function(data)
			if tostring(data.Status) ~= Constants.DebuggerStatus.Success then
				-- todo need to report failure of requests RIDE-6369
				return
			end

			local debuggerVar = data:GetArg()
			local watchRow = WatchRow.fromInstance(debuggerVar, expressionString)
			store:dispatch(ExpressionEvaluated(stepStateBundle, watchRow))
		end)
	end
end
