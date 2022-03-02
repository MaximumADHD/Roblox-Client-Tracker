local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

--Variables
local SetVariablesScopeFilteredOut = require(Actions.Watch.SetVariablesScopeFilteredOut)
local SetVariablesTextFilteredOut = require(Actions.Watch.SetVariablesTextFilteredOut)
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

--Watches
local AddChildExpression = require(Actions.Watch.AddChildExpression)
local AddExpression = require(Actions.Watch.AddExpression)
local ChangeExpression = require(Actions.Watch.ChangeExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local RemoveExpression = require(Actions.Watch.RemoveExpression)
local SetExpansionTree = require(Actions.Watch.SetExpansionTree)
local SetWatchSortState = require(Actions.Watch.SetWatchSortState)

--Other
local SimPaused = require(Actions.Common.SimPaused)
local Resumed = require(Actions.Common.Resumed)
local ClearConnectionData = require(Actions.Common.ClearConnectionData)
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local SetTab = require(Actions.Watch.SetTab)
local FilterTextChanged = require(Actions.Watch.FilterTextChanged)

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
	[Path] : VariableRow.VariableRow
}

type WatchMapping = {
	[Expression] : WatchRow.WatchRow
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

type PathToExpansionMap = {[Path] : boolean}

type WatchStore = {
	stateTokenToRoots : {[DebuggerStateToken.DebuggerStateToken] : ThreadIdToFrameMapping},
	stateTokenToFlattenedTree: {[DebuggerStateToken.DebuggerStateToken] : ThreadIdToFrameMapping},
	currentTab : string,
	listOfEnabledScopes : {string},
	filterText : string,
	listOfExpressions : {string},
	pathToExpansionState : PathToExpansionMap,
	expressionToExpansionState : PathToExpansionMap,
	sortDirection : Enum.SortDirection,
	columnIndex : number
}

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

local productionStartStore = {
	stateTokenToRoots = {},
	stateTokenToFlattenedTree = {},
	currentTab = TableTab.Variables,
	listOfEnabledScopes = {ScopeEnum.Local, ScopeEnum.Upvalue, ScopeEnum.Global},
	listOfExpressions = {},
	pathToExpansionState = {}, -- clear on continue
	expressionToExpansionState = {}, -- clear on continue
	filterText = "",
	sortDirection = nil,
	columnIndex = nil
}

return Rodux.createReducer(productionStartStore, {
	[SimPaused.name] = function(state : WatchStore, action : SimPaused.Props)
		assert((state.stateTokenToRoots[action.debuggerStateToken] == nil or 
			state.stateTokenToRoots[action.debuggerStateToken][action.threadId] == nil) and
			(state.stateTokenToFlattenedTree[action.debuggerStateToken] == nil or 
				state.stateTokenToFlattenedTree[action.debuggerStateToken][action.threadId] == nil))

		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = Cryo.Dictionary.join(state.stateTokenToRoots, {
				[action.debuggerStateToken] =  Cryo.Dictionary.join(state.stateTokenToRoots[action.debuggerStateToken] or {}, {
					[action.threadId] = {}
				})
			}),
			stateTokenToFlattenedTree = Cryo.Dictionary.join(state.stateTokenToFlattenedTree, {
				[action.debuggerStateToken] =  Cryo.Dictionary.join(state.stateTokenToFlattenedTree[action.debuggerStateToken] or {}, {
					[action.threadId] = {}
				})
			}),
		})
	end,
	
	[Resumed.name] = function(state : WatchStore, action : Resumed.Props)
		assert((state.stateTokenToRoots[action.debuggerStateToken] ~= nil and
			state.stateTokenToRoots[action.debuggerStateToken][action.threadId] ~= nil) and
			(state.stateTokenToFlattenedTree[action.debuggerStateToken] ~= nil and
				state.stateTokenToFlattenedTree[action.debuggerStateToken][action.threadId] ~= nil))
		
		local newStateTokenRootsForDST = deepCopy(state.stateTokenToRoots[action.debuggerStateToken])
		newStateTokenRootsForDST[action.threadId] = nil
		
		local newStateTokenToFlattenedTreeForDST = deepCopy(state.stateTokenToFlattenedTree[action.debuggerStateToken])
		newStateTokenToFlattenedTreeForDST[action.threadId] = nil
		
		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = Cryo.Dictionary.join(state.stateTokenToRoots, {
				[action.debuggerStateToken] = newStateTokenRootsForDST
			}),
			stateTokenToFlattenedTree = Cryo.Dictionary.join(state.stateTokenToFlattenedTree, {
				[action.debuggerStateToken] = newStateTokenToFlattenedTreeForDST
			}),
		})
	end,
	
	[ClearConnectionData.name] = function(state : WatchStore, action : Resumed.Props)
		-- in the case where we end multiple connections at once, stateTokens can be empty
		local hasTheStateToken = state.stateTokenToRoots[action.debuggerStateToken] ~= nil and
			(state.stateTokenToFlattenedTree[action.debuggerStateToken] ~= nil)
		local hasNoStateTokens = true
		for k, v in pairs(state.stateTokenToRoots) do
			hasNoStateTokens = false
		end
		assert(hasTheStateToken or hasNoStateTokens)
		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = Cryo.Dictionary.join(state.stateTokenToRoots, {[action.debuggerStateToken] = Cryo.None}),
			stateTokenToFlattenedTree = Cryo.Dictionary.join(state.stateTokenToFlattenedTree, {[action.debuggerStateToken] = Cryo.None})
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

		local target2 = target[action.parentPath].childPaths
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

	[SetVariablesScopeFilteredOut.name] = function(state : WatchStore, action : SetVariablesScopeFilteredOut.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		local stepStateBundle = action.stepStateBundle

		local flattenedTree = action.isVariablesTab and stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables or 
			stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Watches
		
		for path, filteredOut in pairs(action.textFilterMap) do
			flattenedTree[path].scopeFilteredOut = filteredOut
		end

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[SetVariablesTextFilteredOut.name] = function(state : WatchStore, action : SetVariablesTextFilteredOut.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		local stepStateBundle = action.stepStateBundle

		local flattenedTree = action.isVariablesTab and stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Variables or 
			stateTokenToFlattenedTreeCopy[stepStateBundle.debuggerStateToken][stepStateBundle.threadId][stepStateBundle.frameNumber].Watches

		for path, filteredOut in pairs(action.textFilterMap) do
			flattenedTree[path].textFilteredOut = filteredOut
		end

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
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

		local target2 = target[action.parentPath].childPaths
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

		return Cryo.Dictionary.join(state, {
			listOfExpressions = listOfExpressionsCopy,
		})
	end,

	[ExpressionEvaluated.name] = function(state : WatchStore, action : ExpressionEvaluated.Props)
		local stateTokenToRootsCopy = deepCopy(state.stateTokenToRoots)
		nilCheckFillIn(stateTokenToRootsCopy, action.stepStateBundle)

		local target = stateTokenToRootsCopy[action.stepStateBundle.debuggerStateToken][action.stepStateBundle.threadId][action.stepStateBundle.frameNumber].Watches
		table.insert(target, action.watchRow.pathColumn)

		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		nilCheckFillIn(stateTokenToFlattenedTreeCopy, action.stepStateBundle)

		local target2 = stateTokenToFlattenedTreeCopy[action.stepStateBundle.debuggerStateToken][action.stepStateBundle.threadId][action.stepStateBundle.frameNumber].Watches
		target2[action.watchRow.pathColumn] = action.watchRow

		return Cryo.Dictionary.join(state, {
			stateTokenToRoots = stateTokenToRootsCopy,
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[RemoveExpression.name] = function(state : WatchStore, action : RemoveExpression.Props)
		return Cryo.Dictionary.join(state, {
			listOfExpressions = Cryo.List.removeValue(state.listOfExpressions, action.expression),
		})
	end,

	[SetExpansionTree.name] = function(state : WatchStore, action : SetExpansionTree.Props)
		if (action.isVariablesTab) then
			return Cryo.Dictionary.join(state, {
				pathToExpansionState = Cryo.Dictionary.join(state.pathToExpansionState, action.expansionMapping),
			})
		else
			return Cryo.Dictionary.join(state, {
				expressionToExpansionState = Cryo.Dictionary.join(state.expressionToExpansionState, action.expansionMapping),
			})
		end
	end,

	[FilterTextChanged.name] = function(state : WatchStore, action : FilterTextChanged.Props)
		return Cryo.Dictionary.join(state, {
			filterText = action.filterText,
		})
	end,
	
	[SetWatchSortState.name] = function(state : WatchStore, action : SetWatchSortState.Props)
		local toReturn = Cryo.Dictionary.join(
			state, {sortDirection = action.sortDirection,columnIndex = action.columnIndex }
		)
		return toReturn
	end,
})
