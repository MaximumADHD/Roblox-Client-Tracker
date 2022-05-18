local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local TableTab = require(Models.Watch.TableTab)

local Actions = Plugin.Src.Actions
local SetVariablesScopeFilteredOut = require(Actions.Watch.SetVariablesScopeFilteredOut)
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)
local WatchHelperFunctions = require(Plugin.Src.Util.WatchHelperFunctions)

-- Thunk
return function(enabledScopes)
	return function(store, contextItems)
		store:dispatch(ScopeFilterChange(enabledScopes))

		local state = store:getState()
		local common = state.Common
		local watch = state.Watch

		local token = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		local threadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
		if (threadId == nil) then
			return
		end
		local frameNumber = common.currentFrameMap[common.currentDebuggerConnectionId][threadId]
		
		local stepStateBundle = StepStateBundle.ctor(token, threadId, frameNumber)
		local isVariablesTab = watch.currentTab == TableTab.Variables

		local stateRoot = watch.stateTokenToRoots
		local stateFlat = watch.stateTokenToFlattenedTree
		
		local roots = stateRoot[token] and stateRoot[token][threadId] and stateRoot[token][threadId][frameNumber]
		if (roots == nil) then
			-- This can happen when we change scopes when we aren't actively debugging
			return
		end

		local tree = stateFlat[token]  and stateFlat[token][threadId] and stateFlat[token][threadId][frameNumber]
		if (tree == nil) then
			warn('unexpected nil in filter thunk')
			return
		end

		local rootsList = isVariablesTab and roots.Variables or roots.Watches
		local flattenedTree = isVariablesTab and tree.Variables or tree.Watches
		local textFilterMap = {}

		for index, root in pairs(rootsList) do
			local textFilteredOut = WatchHelperFunctions.isScopeFiltered(enabledScopes, flattenedTree[root])
			textFilterMap[root] = textFilteredOut
		end
		store:dispatch(SetVariablesScopeFilteredOut(stepStateBundle, textFilterMap, isVariablesTab))
	end
end
