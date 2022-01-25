local Plugin = script.Parent.Parent.Parent.Parent
local ExpressionEvaluated = require(Plugin.Src.Actions.Watch.ExpressionEvaluated)
local Models=  Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local WatchRow = require(Models.Watch.WatchRow)

return function(expressionString : string, stepStateBundle : StepStateBundle.StepStateBundle, debuggerConnection)
	return function(store, contextItems)
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
			local debuggerVarRaw = data:GetArg()
			-- name gets filled in after being stored
			local debuggerVariable = debuggerConnection:GetVariableById(debuggerVarRaw.VariableId)
			local watchRow = WatchRow.fromInstance(debuggerVariable, nil)
			store:dispatch(ExpressionEvaluated(stepStateBundle, watchRow))
		end)
	end
end
