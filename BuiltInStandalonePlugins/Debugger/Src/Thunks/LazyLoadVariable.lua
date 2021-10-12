local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)

local Actions = Plugin.Src.Actions
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

local function convertChildrenToVariableRows(parent, parentVariableRow)
	local toReturn = {}
	local children = parent:GetChildren()
	for index, child in ipairs(children) do
		local instance1 = VariableRow.fromInstance(child, parentVariableRow)
		table.insert(toReturn, instance1)
	end 
	return toReturn
end

return function(variablePath : string, stepStateBundle : StepStateBundle.StepStateBundle,
	isExpression : boolean, debuggerConnection)
	return function(store, contextItems)
		local splitPath = {}
		for debuggerVarIdString in string.gmatch(variablePath, Constants.SeparationToken) do
   			table.insert(splitPath, tonumber(debuggerVarIdString))
		end
		if #splitPath == 0 then
			splitPath[1] = tonumber(variablePath)
		end

		local rootVar = debuggerConnection.GetVariable(splitPath[1])
		local targetVar = rootVar

		for index, debuggerVarId in ipairs(splitPath) do
			if (index == 1) then
				continue
			end
			targetVar = targetVar:GetVariable(debuggerVarId)
		end

		debuggerConnection.Populate(targetVar, function ()	
			local state = store:getState()
			local flattenedTree = state.Watch.stateTokenToFlattenedTree[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]

			if (isExpression) then
				local targetVariableRow = flattenedTree.Watches[variablePath]
				local children = convertChildrenToVariableRows(targetVar, targetVariableRow)
				store:dispatch(AddChildExpression(stepStateBundle, variablePath, children))
			else
				local targetVariableRow = flattenedTree.Variables[variablePath]
				local children = convertChildrenToVariableRows(targetVar, targetVariableRow)
				store:dispatch(AddChildVariables(stepStateBundle, variablePath, children))
			end
		end)
    end
end
