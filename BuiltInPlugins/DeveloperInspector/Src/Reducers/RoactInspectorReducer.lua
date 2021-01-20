--[[
	This reducer updates the state for the RoactInspector
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Dash = require(Plugin.Packages.Dash)
local collectSet = Dash.collectSet
local forEach = Dash.forEach
local pick = Dash.pick
local join = Dash.join
local joinDeep = Dash.joinDeep
local keys = Dash.keys
local find = Dash.find
local shallowEqual = Dash.shallowEqual

local Actions = Plugin.Src.Actions
local UpdateInstances = require(Actions.RoactInspector.UpdateInstances)
local SelectInstance = require(Actions.RoactInspector.SelectInstance)
local ToggleInstance = require(Actions.RoactInspector.ToggleInstance)
local SelectNode = require(Actions.RoactInspector.SelectNode)
local PickInstance = require(Actions.RoactInspector.PickInstance)
local UpdateBranch = require(Actions.RoactInspector.UpdateBranch)
local UpdateFields = require(Actions.RoactInspector.UpdateFields)
local Reset = require(Actions.RoactInspector.Reset)
local SelectField = require(Actions.RoactInspector.SelectField)
local ToggleField = require(Actions.RoactInspector.ToggleField)
local TogglePicking = require(Actions.RoactInspector.TogglePicking)

local updateTree = require(Plugin.Src.Util.updateTree)

-- How long should elapse between repeated flashes before returning to the yellow flash color, rather than making the flash redder
local FLASH_HORIZON_SECONDS = 1

local function getFields()
	return {
		Children = {
			props = {
				Name = "props",
				Path = {"props"},
				Children = {}
			},
			state = {
				Name = "state",
				Path = {"state"},
				Children = {}
			},
			_context = {
				Name = "_context",
				Path = {"_context"},
				Children = {}
			}
		}
	}
end

local function getDefaultState()
	return {
		rootInstance = {},
		flashInstances = {},
		selectedInstances = {},
		expandedInstances = {},
		nodes = {},
		selectedPath = {},
		selectedNodeIndex = 0,
		fields = getFields(),
		selectedFields = {},
		expandedFields = {},
		isPicking = false
	}
end

return Rodux.createReducer(getDefaultState(), {
	[Reset.name] = function(state, action)
		return getDefaultState()
	end,
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
			selectedNodeIndex = action.nodeIndex,
			fields = getFields(),
			selectedFields = {},
			expandedFields = {},
		})
	end,
	[UpdateInstances.name] = function(state, action)
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
		local update = updateTree({
			root = state.rootInstance,
			selected = state.selectedInstances,
			expanded = state.expandedInstances,
			children = action.children,
			path = action.path
		})
		return join(state, {
			rootInstance = update.root,
			selectedInstances = update.selected,
			expandedInstances = update.expanded,
			flashInstances = flashInstances
		})
	end,
	[SelectInstance.name] = function(state, action)
		local instance = keys(action.change)[1]
		return join(state, {
			fields = getFields(),
			expandedFields = {},
			selectedFields = {},
			selectedInstances = action.change,
			selectedPath = instance and instance.Path,
			nodes = {},
			selectedNodeIndex = 0
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
		local valid = shallowEqual(action.path, state.selectedPath) and action.nodeIndex == state.selectedNodeIndex
		if not valid then
			return state
		end
		local update = updateTree({
			root = state.fields,
			selected = state.selectedFields,
			expanded = state.expandedFields,
			children = action.fields,
			path = action.fieldPath
		})
		return join(state, {
			fields = update.root,
			selectedFields = update.selected,
			expandedFields = update.expanded
		})
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
