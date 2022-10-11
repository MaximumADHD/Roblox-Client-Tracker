--[[
	This reducer updates the state for the RoactInspector
]]

local Main = script.Parent.Parent.Parent
local Rodux = require(Main.Packages.Rodux)
local Dash = require(Main.Packages.Dash)
local collectSet = Dash.collectSet
local forEach = Dash.forEach
local pick = Dash.pick
local join = Dash.join
local joinDeep = Dash.joinDeep
local keys = Dash.keys
local find = Dash.find
local shallowEqual = Dash.shallowEqual

local Actions = Main.Src.Actions
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
local SetPicking = require(Actions.RoactInspector.SetPicking)
local SetProfiling = require(Actions.RoactInspector.SetProfiling)
local ClearProfileData = require(Actions.RoactInspector.ClearProfileData)
local SortProfileData = require(Actions.RoactInspector.SortProfileData)
local UpdateProfileData = require(Actions.RoactInspector.UpdateProfileData)
local SetProfilePageIndex = require(Actions.RoactInspector.SetProfilePageIndex)
local SetProfileFilter = require(Actions.RoactInspector.SetProfileFilter)
local SetProfileSearchTerm = require(Actions.RoactInspector.SetProfileSearchTerm)
local SetProfilePageSize = require(Actions.RoactInspector.SetProfilePageSize)
local SelectProfileRow = require(Actions.RoactInspector.SelectProfileRow)

local updateTree = require(Main.Src.Util.updateTree)

-- How long should elapse between repeated flashes before returning to the yellow flash color, rather than making the flash redder
local FLASH_HORIZON_SECONDS = 1

local function getFields()
	return {
		Children = {
			props = {
				Name = "props",
				Path = { "props" },
				Children = {},
			},
			state = {
				Name = "state",
				Path = { "state" },
				Children = {},
			},
			_context = {
				Name = "_context",
				Path = { "_context" },
				Children = {},
			},
		},
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
		isPicking = false,
		profileData = {
			-- Total number of events recorded by the profiler
			eventCount = 0,
			-- Number of events for the selected instance
			instanceEventCount = 0,
			-- The number of instances which events have been recorded for
			rowCount = 0,
			-- Whether to ignore updates when the event count has not changed
			-- Set to false when the user changes a table view (sort, page change etc.)
			cached = false,
		},
		profileSearchTerm = "",
		profileFilter = {},
		-- State for the profiler components table
		profileComponents = {
			pageRows = {},
			sortIndex = nil,
			sortOrder = nil,
			pageSize = 1,
			pageIndex = 1,
			selectedRow = nil,
		},
		-- State for the profiler events table
		profileEvents = {
			pageRows = {},
			sortIndex = nil,
			sortOrder = nil,
			pageSize = 1,
			pageIndex = 1,
		},
	}
end

local function updateStateAndInvalidateProfileData(state, update)
	return join(state, update, {
		profileData = join(state.profileData, {
			cached = false,
		}),
	})
end

return Rodux.createReducer(getDefaultState(), {
	[Reset.name] = function(state, action)
		return getDefaultState()
	end,
	[UpdateBranch.name] = function(state, action)
		if shallowEqual(action.path, state.selectedPath) then
			return join(state, {
				nodes = action.branch,
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
					indexSet = indexSet,
				}
			end
		end
		local update = updateTree({
			root = state.rootInstance,
			selected = state.selectedInstances,
			expanded = state.expandedInstances,
			children = action.children,
			path = action.path,
		})
		return join(state, {
			rootInstance = update.root,
			selectedInstances = update.selected,
			expandedInstances = update.expanded,
			flashInstances = flashInstances,
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
			selectedNodeIndex = 0,
		})
	end,
	[ToggleInstance.name] = function(state, action)
		return joinDeep(state, {
			expandedInstances = action.change,
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
			isPicking = false,
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
			path = action.fieldPath,
		})
		return join(state, {
			fields = update.root,
			selectedFields = update.selected,
			expandedFields = update.expanded,
		})
	end,
	[SelectField.name] = function(state, action)
		return join(state, {
			selectedFields = action.change,
		})
	end,
	[ToggleField.name] = function(state, action)
		return joinDeep(state, {
			expandedFields = action.change,
		})
	end,
	[SetPicking.name] = function(state, action)
		return joinDeep(state, {
			isPicking = action.isPicking,
		})
	end,
	[SetProfiling.name] = function(state, action)
		return joinDeep(state, {
			isProfiling = action.isProfiling,
		})
	end,
	[ClearProfileData.name] = function(state)
		local defaultState = getDefaultState()
		return join(state, {
			profileData = defaultState.profileData,
			profileComponents = defaultState.profileComponents,
			profileEvents = defaultState.profileEvents,
		})
	end,
	[UpdateProfileData.name] = function(state, action)
		if state.profileData.cached and action.data.eventCount == state.profileData.eventCount then
			return state
		end
		local profileData = join(state.profileData, {
			eventCount = action.data.eventCount,
			rowCount = action.data.rowCount,
			instanceEventCount = action.data.instanceEventCount,
			cached = true,
		})
		return join(state, {
			profileData = profileData,
			profileComponents = join(state.profileComponents, {
				rowCount = action.data.rowCount,
				pageRows = action.data.componentRows,
			}),
			profileEvents = join(state.profileEvents, {
				pageRows = action.data.eventRows,
			}),
		})
	end,
	[SortProfileData.name] = function(state, action)
		local tableData = join(state[action.tableName], {
			sortIndex = action.sortIndex,
			sortOrder = action.sortOrder,
		})
		return updateStateAndInvalidateProfileData(state, {
			[action.tableName] = tableData,
		})
	end,
	[SetProfilePageIndex.name] = function(state, action)
		local tableData = join(state[action.tableName], {
			pageIndex = action.pageIndex,
		})
		return updateStateAndInvalidateProfileData(state, {
			[action.tableName] = tableData,
		})
	end,
	[SetProfilePageSize.name] = function(state, action)
		local tableData = join(state[action.tableName], {
			pageSize = action.pageSize,
		})
		return updateStateAndInvalidateProfileData(state, {
			[action.tableName] = tableData,
		})
	end,
	[SelectProfileRow.name] = function(state, action)
		return updateStateAndInvalidateProfileData(state, {
			profileEvents = join(state.profileEvents, {
				pageIndex = 1,
			}),
			profileComponents = join(state.profileComponents, {
				selectedRow = action.selectedRow,
			}),
		})
	end,
	[SetProfileSearchTerm.name] = function(state, action)
		return updateStateAndInvalidateProfileData(state, {
			profileSearchTerm = action.searchTerm,
		})
	end,
	[SetProfileFilter.name] = function(state, action)
		return updateStateAndInvalidateProfileData(state, {
			profileFilter = action.filter,
		})
	end,
	[SelectProfileRow.name] = function(state, action)
		return updateStateAndInvalidateProfileData(state, {
			profileEvents = join(state.profileEvents, {
				pageIndex = 1,
			}),
			profileComponents = join(state.profileComponents, {
				selectedRow = action.selectedRow,
			}),
		})
	end,
})
