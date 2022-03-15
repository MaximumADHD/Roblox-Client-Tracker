local Plugin = script.Parent.Parent.Parent.Parent
local ExpressionEvaluated = require(Plugin.Src.Actions.Watch.ExpressionEvaluated)
local AddChildExpression = require(Plugin.Src.Actions.Watch.AddChildExpression)
local Models=  Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local WatchRow = require(Models.Watch.WatchRow)
local Constants = require(Plugin.Src.Util.Constants)

local function addChildVariableRowsForExpression(store, stepStateBundle, debuggerVar)
	local toReturn = {}
	local children = debuggerVar:GetChildren()
	if #children == 0 then
		return
	end

	for _, child in ipairs(children) do
		-- the table we pass in here is used to pass in columns from a parent VariableRow that we use to make the child row 
		table.insert(toReturn, WatchRow.fromChildInstance(child, tostring(debuggerVar.VariableId)))
	end
	store:dispatch(AddChildExpression(stepStateBundle, tostring(debuggerVar.VariableId), toReturn))
end

local function addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, debuggerVar)
	if (debuggerVar.VariableId == 0) then
		return
	end
	
	-- the debugger variable may have been populated if it's a stackFrameVariable
	if debuggerVar.Populated then
		addChildVariableRowsForExpression(store, stepStateBundle, debuggerVar)
	else
		debuggerConnection:Populate(debuggerVar, function()
			local dst = stepStateBundle.debuggerStateToken
			if dst ~= store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId] then
				return
			end
			addChildVariableRowsForExpression(store, stepStateBundle, debuggerVar)
		end)
	end
end

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
			addRootVariableRowChildren(store, stepStateBundle, debuggerConnection, debuggerVar)
		end)
	end
end
