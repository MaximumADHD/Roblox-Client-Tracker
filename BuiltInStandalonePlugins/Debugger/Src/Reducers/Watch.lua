local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models

--Variables
local SetVariableScopeFilteredOut = require(Actions.Watch.SetVariableScopeFilteredOut)
local SetVariableTextFilteredOut = require(Actions.Watch.SetVariableTextFilteredOut)
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

--Watches
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddExpression = require(Actions.Watch.AddExpression)
local ChangeExpression = require(Actions.Watch.ChangeExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local RemoveExpression = require(Actions.Watch.RemoveExpression)

--Other
local BreakpointHit = require(Actions.Common.BreakpointHit)
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local FilterTextChanged = require(Actions.Watch.FilterTextChanged)
local SetTab = require(Actions.Watch.SetTab)

--Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local VariableRow = require(Models.Watch.VariableRow)
local WatchRow = require(Models.Watch.WatchRow)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local TableTab = require(Models.Watch.TableTab)

type ThreadId = number
type Expression = string
type FrameNumber = number
type Path = string --ParentPath_Name

type PathVarMapping = {
	[Path] : {VariableRow.VariableRow}
}

type WatchMapping = {
	[Expression] : {WatchRow.WatchRow}
}

type FrameInfo = {
	Watches : {WatchMapping},
	Variables :  {PathVarMapping}
}

type FrameMapping = {
	[FrameNumber] : FrameInfo
}

type ThreadIdToFrameMapping = {
	[ThreadId] : {FrameMapping},
}

type WatchStore = {
	stateTokenToRoots : {[DebuggerStateToken.DebuggerStateToken] : ThreadIdToFrameMapping},
	stateTokenToFlattenedTree: {[DebuggerStateToken.DebuggerStateToken] : ThreadIdToFrameMapping},
	filterText : string,
	currentTab : string,
	listOfEnabledScopes : {string},
	listOfWatches : {string},
	pathToExpansionState : {PathPreserveMapping},
	expressionToExpansionState : {WatchPreserveMapping},
}

local function deepCopy(var)
	if typeof(var) ~= "table" then
		return var
	end

	local ret = {}
	for key, value in pairs(var) do
		ret[key] = deepCopy(value)
	end

	return ret
end

local function nilCheckFillIn(table, stepStateBundle)
	assert(table[stepStateBundle.debuggerStateToken] ~= nil)

	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId]== nil) then
		table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId] = {}
	end

	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber] == nil) then
		table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber] = {}
	end
		
	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables == nil) then
		table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables = {}
	end

	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Watches == nil) then
		table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Watches = {}
	end
end

local function nilCheckBase(table, stepStateBundle)
	if (table[stepStateBundle.debuggerStateToken] == nil) then
		assert(false)
		return false
	end

	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId] == nil) then
		assert(false)
		return false
	end

	if (table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber] == nil) then
		assert(false)
		return false
	end
	return true
end

local function nilCheckVariable(table, action)
	local stepStateBundle = action.stepStateBundle

	if (nilCheckBase(table, stepStateBundle) == false) then
		return false
	end

	local base = table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]
		
	if (base.Variables == nil) then
		assert(false)
		return false
	end

	if (action.path ~= nil) then
		if (base.Variables[action.path] == nil) then
			assert(false)
			return false
		end
	end

	if (action.parentPath ~= nil) then
		if (base.Variables[action.parentPath] == nil) then
			assert(false)
			return false
		end
	end
	return true
end

local function nilCheckWatch(table, stepStateBundle, action)
	if (nilCheckBase(table, stepStateBundle) == false) then
		return false
	end

	local base = table[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber]
		
	if (base.Watches == nil) then
		assert(false)
		return false
	end

	if (action.path ~= nil) then
		if (base.Watches[action.path] == nil) then
			assert(false)
			return false
		end
	end

	if (action.parentPath ~= nil) then
		if (base.Watches[action.parentPath] == nil) then
			assert(false)
			return false
		end
	end
	return true
end

local function indexOf(table, value)
	for key, v in pairs(table) do
		if(v == value) then
			return key
		end
	end
	return nil
end

return Rodux.createReducer({
	stateTokenToRoots = {},
	stateTokenToFlattenedTree = {},
	filterText = "",
	currentTab = TableTab.Variables,
	listOfEnabledScopes = {ScopeEnum.Local, ScopeEnum.Upvalue, ScopeEnum.Global},
	listOfExpressions = {},
	pathToExpansionState = {}, -- clear on continue
	expressionToExpansionState = {}, -- clear on continue
}, {
	[BreakpointHit.name] = function(state : CallstackStore, action : BreakpointHit.Props)
		assert(state.stateTokenToRoots[action.debuggerStateToken] == nil)
		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = Cryo.Dictionary.join(state.stateTokenToRoots, {
				[action.debuggerStateToken] = {}
			}),
			stateTokenToFlattenedTree = Cryo.Dictionary.join(state.stateTokenToFlattenedTree, {
				[action.debuggerStateToken] = {}
			}),
		})
	end,

	[AddRootVariables.name] = function(state : WatchStore, action : AddRootVariables.Props)
		local stateTokenToRootsCopy = deepCopy(state.stateTokenToRoots)
		nilCheckFillIn(stateTokenToRootsCopy, action.stepStateBundle)

		local stepStateBundle = action.stepStateBundle

		local target = stateTokenToRootsCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables
		for _, rootVarName in ipairs(action.tokenizedList) do
			table.insert(target, rootVarName)
		end

		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		nilCheckFillIn(stateTokenToFlattenedTreeCopy, action.stepStateBundle)

		local target2 = stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables
		for varPath, variable in pairs(action.newVarsMapping) do
			target2[varPath] = variable
		end

		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = stateTokenToRootsCopy,
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,
	
	[AddChildVariables.name] = function(state : WatchStore, action : AddChildVariables.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)

		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		local stepStateBundle = action.stepStateBundle

		local target = stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables
		for varPath, variable in pairs(action.newVarsMapping) do
			target[varPath] = variable
		end

		local target2 = target[action.parentPath].children
		for _, childVarPath in ipairs(action.childKeys) do
			table.insert(target2, childVarPath)
		end

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[SetVariableExpanded.name] = function(state : WatchStore, action : SetVariableExpanded.Props)
		return Cryo.Dictionary.join(state, {
			pathToExpansionState = Cryo.Dictionary.join(state.pathToExpansionState, {[action.path] = action.expanded})
		})
	end,

	[SetVariableScopeFilteredOut.name] = function(state : WatchStore, action : SetVariableScopeFilteredOut.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		local stepStateBundle = action.stepStateBundle

		stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables[action.path].scopeFilteredOut = action.filteredOut

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[SetVariableTextFilteredOut.name] = function(state : WatchStore, action : SetVariableTextFilteredOut.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		local stepStateBundle = action.stepStateBundle

		stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables[action.path].textFilteredOut = action.filteredOut

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[FilterTextChanged.name] = function(state : WatchStore, action : FilterTextChanged.Props)
		return Cryo.Dictionary.join(state, {
			filterText = action.filterText,
		})
	end,
	
	[SetTab.name] = function(state : WatchStore, action : SetTab.Props)
		return Cryo.Dictionary.join(state, {
			currentTab = action.currentTab,
		})
	end,

	[ScopeFilterChange.name] = function(state : WatchStore, action : ScopeFilterChange.Props)
		return Cryo.Dictionary.join(state, {
			listOfEnabledScopes = action.listOfEnabledScopes,
		})
	end,

	[AddChildExpression.name] = function(state : WatchStore, action : AddChildExpression.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)

		if (nilCheckWatch(stateTokenToFlattenedTreeCopy, action.stepStateBundle, action) == false) then
			return state
		end

		local target = stateTokenToFlattenedTreeCopy[action.stepStateBundle.debuggerStateToken][action.stepStateBundle.threadId][action.stepStateBundle.frameNumber].Watches
		for varPath, variable in pairs(action.newVarsMapping) do
			target[varPath] = variable
		end

		local target2 = target[action.parentPath].children
		for _, childVarPath in ipairs(action.childKeys) do
			table.insert(target2, childVarPath)
		end

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[AddExpression.name] = function(state : WatchStore, action : AddExpression.Props)
		if(indexOf(state.listOfExpressions, action.expression) ~= nil) then
			return state
		end
		return Cryo.Dictionary.join(state, {
			listOfExpressions = Cryo.List.join(state.listOfExpressions, {action.expression})
		})
	end,
	
	[ChangeExpression.name] = function(state : WatchStore, action : ChangeExpression.Props)
		if(indexOf(state.listOfExpressions, action.newExpression) ~= nil) then
			return state
		end

		if(indexOf(state.listOfExpressions, action.oldExpression) == nil) then
			return state
		end

		local listOfExpressionsCopy = deepCopy(state.listOfExpressions)
		local index = indexOf(listOfExpressionsCopy, action.oldExpression)
		listOfExpressionsCopy[index] = action.newExpression
		
		local stateTokenToRootsCopy = state.stateTokenToRoots
		if (state.stateTokenToRoots[action.currentStepStateBundle.debuggerStateToken] ~= nil) then
			-- expression can be changed outside of debugging
			stateTokenToRootsCopy = deepCopy(state.stateTokenToRoots)

			nilCheckWatch(stateTokenToRootsCopy, action.currentStepStateBundle, action)

			local target = stateTokenToRootsCopy[action.currentStepStateBundle.debuggerStateToken][action.currentStepStateBundle.threadId][action.currentStepStateBundle.frameNumber].Watches
			index = indexOf(target, action.oldExpression)
			table.remove(target, index)
		end

		return Cryo.Dictionary.join(state, {
			listOfExpressions = listOfExpressionsCopy,
			stateTokenToRoots = stateTokenToRootsCopy
		})
	end,

	[ExpressionEvaluated.name] = function(state : WatchStore, action : ExpressionEvaluated.Props)
		local stateTokenToRootsCopy = deepCopy(state.stateTokenToRoots)
		nilCheckFillIn(stateTokenToRootsCopy, action.stepStateBundle)

		local target = stateTokenToRootsCopy[action.stepStateBundle.debuggerStateToken][action.stepStateBundle.threadId][action.stepStateBundle.frameNumber].Watches
		table.insert(target, action.watchRow.expressionColumn)

		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		nilCheckFillIn(stateTokenToFlattenedTreeCopy, action.stepStateBundle)

		local target2 = stateTokenToFlattenedTreeCopy[action.stepStateBundle.debuggerStateToken][action.stepStateBundle.threadId][action.stepStateBundle.frameNumber].Watches
		target2[action.watchRow.expressionColumn] = action.watchRow

		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = stateTokenToRootsCopy,
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[RemoveExpression.name] = function(state : WatchStore, action : RemoveExpression.Props)
		local stateTokenToRootsCopy = state.stateTokenToRoots
		if (state.stateTokenToRoots[action.currentStepStateBundle.debuggerStateToken] ~= nil) then
			-- expression can be changed outside of debugging
			stateTokenToRootsCopy = deepCopy(state.stateTokenToRoots)

			nilCheckWatch(stateTokenToRootsCopy, action.currentStepStateBundle, action)

			local target = stateTokenToRootsCopy[action.currentStepStateBundle.debuggerStateToken][action.currentStepStateBundle.threadId][action.currentStepStateBundle.frameNumber].Watches
			local index = indexOf(target, action.expression)
			table.remove(target, index)
		end
		
		return Cryo.Dictionary.join(state, {
			listOfExpressions = Cryo.List.removeValue(state.listOfExpressions, action.expression),
			stateTokenToRoots = stateTokenToRootsCopy,
		})
	end,
})
