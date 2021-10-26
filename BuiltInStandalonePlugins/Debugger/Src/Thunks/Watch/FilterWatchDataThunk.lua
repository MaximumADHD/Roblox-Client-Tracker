local Plugin = script.Parent.Parent.Parent.Parent

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local TableTab = require(Models.Watch.TableTab)

local Actions = Plugin.Src.Actions
local SetVariablesTextFilteredOut = require(Actions.Watch.SetVariablesTextFilteredOut)
local SetExpansionTree = require(Actions.Watch.SetExpansionTree)

local function textMatchRow(filterText, rowData)

	if (rowData.nameColumn ~= nil) then
		if (string.find(rowData.nameColumn, filterText) ~= nil) then
			return true
		end
	end
	
	if (rowData.expressionColumn ~= nil) then
		if (string.find(rowData.expressionColumn, filterText) ~= nil) then
			return true
		end
	end

	if (string.find(rowData.scopeColumn, filterText) ~= nil) then
		return true
	end

	if (string.find(rowData.valueColumn, filterText) ~= nil) then
		return true
	end

	if (string.find(rowData.dataTypeColumn, filterText) ~= nil) then
		return true
	end

	return false
end

local function depthFirstTextFilter(filterText, pathName, flattenedTree, expansionTree)
	local node = flattenedTree[pathName]
	assert(node ~= nil, ("FilterWatchDataThunk depthFirstTextFilter got a nil node for path %s"):format(tostring(pathName)))

	local childMatch = false
	for index, childPath in ipairs(node.childPaths) do
		childMatch = childMatch or depthFirstTextFilter(filterText, childPath, flattenedTree, expansionTree)
	end

	local didMatch = childMatch or textMatchRow(filterText, node)
	expansionTree[pathName] = didMatch
	return didMatch
end

-- Thunk
return function(filterString)
	return function(store, contextItems)
		local state = store:getState()
		local common = state.Common
		local watch = state.Watch

		local token = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		local threadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
		local frameNumber = common.currentFrameMap[common.currentDebuggerConnectionId][threadId]

		local stepStateBundle = StepStateBundle.ctor(token, threadId, frameNumber)
		local isVariablesTab = watch.currentTab == TableTab.Variables

		local stateRoot = watch.stateTokenToRoots
		local stateFlat = watch.stateTokenToFlattenedTree
		
		local roots = stateRoot[token] and stateRoot[token][threadId] and stateRoot[token][threadId][frameNumber]
		if (roots == nil) then
			warn('unexpected nil in filter thunk')
			return
		end

		local tree = stateFlat[token] and stateFlat[token][threadId] and stateFlat[token][threadId][frameNumber]
		if (tree == nil) then
			warn('unexpected nil in filter thunk')
			return
		end

		local rootsList = isVariablesTab and roots.Variables or roots.Watches
		local flattenedTree = isVariablesTab and tree.Variables or tree.Watches
		local expansionTree = {}
		local textFilterMap = {}

		for index, name in pairs(rootsList) do
			local textFilteredOut = not depthFirstTextFilter(filterString, name, flattenedTree, expansionTree)
			textFilterMap[name] = textFilteredOut
		end
		store:dispatch(SetVariablesTextFilteredOut(stepStateBundle, textFilterMap, isVariablesTab))
		store:dispatch(SetExpansionTree(isVariablesTab, expansionTree))
	end
end
