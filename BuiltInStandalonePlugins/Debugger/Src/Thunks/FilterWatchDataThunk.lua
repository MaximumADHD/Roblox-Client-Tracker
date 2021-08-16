local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local includes = Dash.includes

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)
local TableTab = require(Models.Watch.TableTab)

local Actions = Plugin.Src.Actions
local SetVariableTextFilteredOut = require(Actions.Watch.SetVariableTextFilteredOut)
local SetVariableScopeFilteredOut = require(Actions.Watch.SetVariableScopeFilteredOut)

-- Local Functions
local function textMatch(filterText, root, tree)
	for k, v in pairs(root) do
		if (type(v) ~= "table") then
			if string.find(tostring(v), filterText) ~= nil then
				return true
			end
		end
	end
	
	local children = root.children
	for k, v in pairs(children) do
		local result = textMatch(filterText, v, tree[v])
		if (result == true) then
			return true
		end
	end
	return false
end

-- Thunk
return function(threadId, frameNumber)
	return function(store, contextItems)
		local state = store:getState()
		
		local token = state.Common.debuggerStateTokenHistory[1]	
		local stepStateBundle = StepStateBundle.ctor(token, threadId, frameNumber)
		local filterText = state.Watch.filterText
		local filterScopes = state.Watch.listOfEnabledScopes
		local tabState = state.Watch.currentTab

		local roots = state.Watch.stateTokenToRoots[token][threadId][frameNumber]
		local tree = state.Watch.stateTokenToFlattenedTree[token][threadId][frameNumber]
		local rootsList = tabState == TableTab.Variables and roots.Variables or roots.Watches
		local treeList = tabState == TableTab.Variables and tree.Variables or tree.Watches
				
		for index, name in pairs(rootsList) do
			local rootData = treeList[name]	
			local scopeFilteredOut = not includes(filterScopes, rootData.scopeColumn)
			local textFilteredOut = not textMatch(filterText, rootData, treeList)
			store:dispatch(SetVariableScopeFilteredOut(stepStateBundle, rootData.pathColumn, scopeFilteredOut))
			store:dispatch(SetVariableTextFilteredOut(stepStateBundle, rootData.pathColumn, textFilteredOut))
        end
    end
end
