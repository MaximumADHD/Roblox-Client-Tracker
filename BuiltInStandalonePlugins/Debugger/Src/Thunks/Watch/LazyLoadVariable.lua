local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

local WatchHelperFunctions = require(Plugin.Src.Util.WatchHelperFunctions)

local function convertChildrenToVariableRows(parent, parentVariableRow, state)
	local filterText = state.Watch.filterText
	local listOfEnabledScopes = state.Watch.listOfEnabledScopes	
	local toReturn = {}
	local children = parent:GetChildren()
	for index, child in ipairs(children) do
		local instance1 = VariableRow.fromInstance(child, parentVariableRow, nil, filterText, listOfEnabledScopes)
		table.insert(toReturn, instance1)
	end 
	return toReturn
end

return function(variablePath : string, stepStateBundle : StepStateBundle.StepStateBundle,
	isExpression : boolean, debuggerConnection)
	return function(store, contextItems)
		local targetVar = WatchHelperFunctions.getDebuggerVariableFromSplitPath(variablePath, debuggerConnection)
		if not targetVar then
			return
		end
		debuggerConnection:Populate(targetVar, function ()
			local state = store:getState()

			if stepStateBundle.debuggerStateToken ~= state.Common.debuggerConnectionIdToDST[stepStateBundle.debuggerStateToken.debuggerConnectionId] then
				return
			end

			local flattenedTree = state.Watch.stateTokenToFlattenedTree[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]

			if (isExpression) then
				local targetVariableRow = flattenedTree.Watches[variablePath]
				local children = convertChildrenToVariableRows(targetVar, targetVariableRow, state)
				store:dispatch(AddChildExpression(stepStateBundle, variablePath, children))
			else
				local targetVariableRow = flattenedTree.Variables[variablePath]
				local children = convertChildrenToVariableRows(targetVar, targetVariableRow, state)
				store:dispatch(AddChildVariables(stepStateBundle, variablePath, children))
			end
		end)
    end
end
