local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local FilterTextChanged = require(Actions.Watch.FilterTextChanged)
local SetVariableScopeFilteredOut = require(Actions.Watch.SetVariableScopeFilteredOut)
local SetVariableTextFilteredOut = require(Actions.Watch.SetVariableTextFilteredOut)
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local BreakpointHit = require(Actions.Common.BreakpointHit)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local VariableRow = require(Models.Watch.VariableRow)
local WatchRow = require(Models.Watch.WatchRow)
local ScopeEnum = require(Models.Watch.ScopeEnum)

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

local function nilCheckFillIn(table, action)
	assert(table[action.debuggerStateToken] ~= nil)

	if (table[action.debuggerStateToken][action.threadId]== nil) then
		table[action.debuggerStateToken][action.threadId] = {}
	end

	if (table[action.debuggerStateToken][action.threadId][action.frameNumber] == nil) then
		table[action.debuggerStateToken][action.threadId][action.frameNumber] = {}
	end
		
	if (table[action.debuggerStateToken][action.threadId][action.frameNumber].Variables == nil) then
		table[action.debuggerStateToken][action.threadId][action.frameNumber].Variables = {}
	end

	if (table[action.debuggerStateToken][action.threadId][action.frameNumber].Watches == nil) then
		table[action.debuggerStateToken][action.threadId][action.frameNumber].Watches = {}
	end
end

local function nilCheckBase(table, action)
	if (table[action.debuggerStateToken] == nil) then
		assert(false)
		return false
	end

	if (table[action.debuggerStateToken][action.threadId] == nil) then
		assert(false)
		return false
	end

	if (table[action.debuggerStateToken][action.threadId][action.frameNumber] == nil) then
		assert(false)
		return false
	end
	return true
end

local function nilCheckVariable(table, action)
	if (nilCheckBase(table, action) == false) then
		return false
	end
		
	if (table[action.debuggerStateToken][action.threadId][action.frameNumber].Variables == nil) then
		assert(false)
		return false
	end

	if (action.path ~= nil) then
		if (table[action.debuggerStateToken][action.threadId][action.frameNumber].Variables[action.path] == nil) then
			assert(false)
			return false
		end
	end

	if (action.parentPath ~= nil) then
		if (table[action.debuggerStateToken][action.threadId][action.frameNumber].Variables[action.parentPath] == nil) then
			assert(false)
			return false
		end
	end
	return true
end

return Rodux.createReducer({
	stateTokenToRoots = {},
	stateTokenToFlattenedTree = {},
	filterText = "",
	listOfEnabledScopes = {ScopeEnum.Local, ScopeEnum.Upvalue, ScopeEnum.Global},
	listOfWatches = {},
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
		nilCheckFillIn(stateTokenToRootsCopy, action)

		local target = stateTokenToRootsCopy[action.debuggerStateToken][action.threadId][action.frameNumber].Variables
		for _, rootVarName in ipairs(action.tokenizedList) do
			table.insert(target, rootVarName)
		end

		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		nilCheckFillIn(stateTokenToFlattenedTreeCopy, action)

		local target2 = stateTokenToFlattenedTreeCopy[action.debuggerStateToken][action.threadId][action.frameNumber].Variables
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

		local target = stateTokenToFlattenedTreeCopy[action.debuggerStateToken][action.threadId][action.frameNumber].Variables
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

		stateTokenToFlattenedTreeCopy[action.debuggerStateToken][action.threadId][action.frameNumber].Variables[action.path].scopeFilteredOut = action.filteredOut

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[SetVariableTextFilteredOut.name] = function(state : WatchStore, action : SetVariableTextFilteredOut.Props)
		local stateTokenToFlattenedTreeCopy = deepCopy(state.stateTokenToFlattenedTree)
		if (nilCheckVariable(stateTokenToFlattenedTreeCopy, action) == false) then
			return state
		end

		stateTokenToFlattenedTreeCopy[action.debuggerStateToken][action.threadId][action.frameNumber].Variables[action.path].textFilteredOut = action.filteredOut

		return Cryo.Dictionary.join(state, {
			stateTokenToFlattenedTree = stateTokenToFlattenedTreeCopy
		})
	end,

	[FilterTextChanged.name] = function(state : WatchStore, action : FilterTextChanged.Props)
		return Cryo.Dictionary.join(state, {
			filterText = action.filterText,
		})
	end,

	[ScopeFilterChange.name] = function(state : WatchStore, action : ScopeFilterChange.Props)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = state.stateTokenToRoots,
			filterText = state.filterText,
			listOfEnabledScopes = action.listOfEnabledScopes,
			listOfWatches = state.listOfWatches,
		})
	end,
})
