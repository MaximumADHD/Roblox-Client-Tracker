--[[
	This reducer updates the state for the RoactInspector
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Dash = require(Plugin.Packages.Dash)
local collectArray = Dash.collectArray
local collectSet = Dash.collectSet
local copy = Dash.copy
local forEach = Dash.forEach
local pick = Dash.pick
local join = Dash.join
local joinDeep = Dash.joinDeep
local keys = Dash.keys
local find = Dash.find

local reduce = Dash.reduce
local shallowEqual = Dash.shallowEqual

local Actions = Plugin.Src.Actions
local UpdateInstances = require(Actions.RoactInspector.UpdateInstances)
local SelectInstance = require(Actions.RoactInspector.SelectInstance)
local ToggleInstance = require(Actions.RoactInspector.ToggleInstance)
local SelectNode = require(Actions.RoactInspector.SelectNode)
local PickInstance = require(Actions.RoactInspector.PickInstance)
local UpdateBranch = require(Actions.RoactInspector.UpdateBranch)
local UpdateFields = require(Actions.RoactInspector.UpdateFields)
local SelectField = require(Actions.RoactInspector.SelectField)
local ToggleField = require(Actions.RoactInspector.ToggleField)
local TogglePicking = require(Actions.RoactInspector.TogglePicking)

local function walk(node, path)
	return reduce(path, function(current, key)
		if current and current.Children then
			return current.Children[key]
		else
			return nil
		end
	end, node)
	
end

-- How long should elapse between repeated flashes before returning to the yellow flash color, rather than making the flash redder
local FLASH_HORIZON_SECONDS = 1

-- During update we receive a truncated tree of children from the target, so we need to merge
-- back into the new table any surviving nested descendants from the current state.
local function mergeChildren(currentChildren, newChildren)
	if currentChildren then
		-- Iterate through new children and incorperate any current ones if truncated.
		forEach(newChildren, function(newChild, key)
			local currentChild = currentChildren[key]
			if not currentChild then
				-- We don't have a record for this child, so no merge required.
				return
			end
			if newChild.Children then
				-- Merge the children recusively
				newChild.Children = mergeChildren(currentChild.Children, newChild.Children)
			else
				-- The new child has been truncated, so incorperate the current children.
				newChild.Children = currentChild.Children
			end
		end)
	end
	return newChildren
end

return Rodux.createReducer({
	rootInstance = {},
	flashInstances = {},
	selectedInstances = {},
	expandedInstances = {},
	nodes = {},
	selectedPath = {},
	selectedNodeIndex = 0,
	fields = {},
	selectedFields = {},
	expandedFields = {},
	isPicking = false
}, {
	[UpdateBranch.name] = function(state, action)
		if shallowEqual(action.path, state.selectedPath) then
			return join(state, {
				nodes = action.branch
			})
		else
			return state
		end
	end,
	[SelectNode.name] = function(state, action)
		return join(state, {
			selectedNodeIndex = action.nodeIndex
		})
	end,
	[UpdateInstances.name] = function(state, action)
		-- Get the paths of expanded and selected items
		local expandedPaths = collectArray(state.expandedInstances, function(item, isExpanded)
			return isExpanded and item.Path or nil
		end)
		local selectedPaths = collectArray(state.selectedInstances, function(item, isSelected)
			return isSelected and item.Path or nil
		end)
		local rootNode
		if #action.path == 0 then
			rootNode = {Children = action.children}
		else
			-- Build a new tree with the new children inserted at the path provided.
			rootNode = copy(state.rootInstance)
			-- We only need recreate nodes which are direct ancestors of the updated node.
			local currentNode = rootNode
			forEach(action.path, function(key)
				-- We ignore sub-trees which we don't have a mount point for.
				if currentNode == nil or currentNode.Children == nil then
					return
				end
				local currentChild = currentNode.Children[key]
				if currentChild then
					local child = copy(currentNode.Children[key])
					currentNode.Children[key] = child
					currentNode = child
				else
					currentNode = nil
				end
			end)
			if currentNode then
				-- Merge the new children into the tree
				currentNode.Children = mergeChildren(currentNode.Children, action.children)
			end
		end

		-- Map the toggled & selected paths to any new item tables created.
		local selectedInstances = collectSet(selectedPaths, function(_index, path)
			return walk(rootNode, path)
		end)
		local expandedInstances = collectSet(expandedPaths, function(_index, path)
			return walk(rootNode, path)
		end)
		local flashInstances = pick(state.flashInstances, function(flash, path)
			-- Only keep flashes which happened recently
			return flash.time > os.clock() - FLASH_HORIZON_SECONDS
		end)
		-- An update has just occurred if node indexes have been reported
		if action.updatedIndexes and #action.updatedIndexes > 0 then
			-- Get a recent flash at this path
			local recentFlash = find(flashInstances, function(_flash, path)
				return shallowEqual(path, action.path)
			end)
			local indexSet = collectSet(action.updatedIndexes)
			if recentFlash then
				-- Up the heat of the flash
				recentFlash.heat += 1
				recentFlash.time = os.clock()
				recentFlash.indexSet = indexSet
			else
				flashInstances[action.path] = {
					time = os.clock(),
					heat = 0,
					indexSet = indexSet
				}
			end
		end

		return join(state, {
			rootInstance = rootNode,
			selectedInstances = selectedInstances,
			expandedInstances = expandedInstances,
			flashInstances = flashInstances
		})
	end,
	[SelectInstance.name] = function(state, action)
		local instance = keys(action.change)[1]
		return join(state, {
			selectedInstances = action.change,
			selectedPath = instance and instance.Path
		})
	end,
	[ToggleInstance.name] = function(state, action)
		return joinDeep(state, {
			expandedInstances = action.change
		})
	end,
	[PickInstance.name] = function(state, action)
		-- Expand each partial path to the target one
		local expandedInstances = {}
		local node = state.rootInstance
		forEach(action.path, function(key: string | number)
			if node then
				node = node.Children and node.Children[key]
				if node then
					expandedInstances[node] = true
				end
			end
		end)
		local selectedInstances = {}
		if node then
			selectedInstances[node] = true
		end
		return join(state, {
			selectedPath = action.path,
			selectedInstances = selectedInstances,
			-- All other ids should be expanded
			expandedInstances = join(state.expandedInstances, expandedInstances),
			isPicking = false
		})
	end,
	[UpdateFields.name] = function(state, action)
		if shallowEqual(action.path, state.selectedPath) and action.nodeIndex == state.selectedNodeIndex then
			return join(state, {
				fields = action.fields
			})
		else
			return state
		end
	end,
	[SelectField.name] = function(state, action)
		return join(state, {
			selectedFields = action.change,
		})
	end,
	[ToggleField.name] = function(state, action)
		return joinDeep(state, {
			expandedFields = action.change
		})
	end,
	[TogglePicking.name] = function(state, action)
		return joinDeep(state, {
			isPicking = action.isPicking
		})
	end,
})
