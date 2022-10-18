local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local VariableRow = require(Plugin.Src.Models.Watch.VariableRow)
local WatchRow = require(Plugin.Src.Models.Watch.WatchRow)

local Actions = Plugin.Src.Actions
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local LazyLoadChildrenVars, LazyLoadVar

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

local function convertChildrenToWatchRows(parent, parentWatchRow)
	local toReturn = {}
	local children = parent:GetChildren()
	for index, child in ipairs(children) do
		local instance1 = WatchRow.fromChildInstance(child, parentWatchRow.pathColumn)
		table.insert(toReturn, instance1)
	end
	return toReturn
end

function LazyLoadVar(variablePath, stepStateBundle, isVariablesTab, debuggerConnection, variableId, store)
	local targetVar = debuggerConnection:GetVariableById(variableId)
	if not targetVar then
		return
	end
	debuggerConnection:Populate(targetVar, function()
		local state = store:getState()

		if
			stepStateBundle.debuggerStateToken
			~= state.Common.debuggerConnectionIdToDST[stepStateBundle.debuggerStateToken.debuggerConnectionId]
		then
			return
		end

		local flattenedTree =
			state.Watch.stateTokenToFlattenedTree[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]

		if isVariablesTab then
			local targetVariableRow = flattenedTree.Variables[variablePath]
			local children = convertChildrenToVariableRows(targetVar, targetVariableRow, state)
			store:dispatch(AddChildVariables(stepStateBundle, variablePath, children))
			if state.Watch.pathToExpansionState[variablePath] then
				-- if this variable is expanded, lazily load all of its children
				LazyLoadChildrenVars(variablePath, stepStateBundle, isVariablesTab, debuggerConnection, targetVar.VariableId, store)
			end
		else
			local targetWatchRow = flattenedTree.Watches[variablePath]
			local children = convertChildrenToWatchRows(targetVar, targetWatchRow)
			store:dispatch(AddChildExpression(stepStateBundle, variablePath, children))
			if state.Watch.expressionToExpansionState[variablePath] then
				-- if this watch expression is expanded, lazily load all of its children
				LazyLoadChildrenVars(variablePath, stepStateBundle, isVariablesTab, debuggerConnection, targetVar.VariableId, store)
			end
		end
	end)
end


function LazyLoadChildrenVars(variablePath, stepStateBundle, isVariablesTab, debuggerConnection, idColumn, store)
	if not debuggerConnection then
		return
	end
	local targetVar = debuggerConnection:GetVariableById(idColumn)
	if not targetVar then
		return
	end
	for _, childVar in ipairs(targetVar:GetChildren()) do
		if childVar.VariableId ~= 0 and not childVar.Populated then
			local childPath = variablePath .. Constants.SeparationToken .. tostring(childVar.Name)
			LazyLoadVar(childPath, stepStateBundle, isVariablesTab, debuggerConnection, childVar.VariableId, store)
		end
	end
end

return function(variablePath: string, idColumn, stepStateBundle: StepStateBundle.StepStateBundle, isVariablesTab: boolean, debuggerConnection)
	return function(store, contextItems)
		LazyLoadChildrenVars(variablePath, stepStateBundle, isVariablesTab, debuggerConnection, idColumn, store)
	end
end
