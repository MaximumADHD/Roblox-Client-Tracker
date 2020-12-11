--[[
	This reducer updates the state for the RoactInspector
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Dash = require(Plugin.Packages.Dash)
local None = Dash.None
local join = Dash.join
local joinDeep = Dash.joinDeep
local pretty = Dash.pretty
local map = Dash.map
local values = Dash.values

local sort = table.sort

local Actions = Plugin.Src.Actions
local AddTargets = require(Actions.AddTargets)
local ClearTargets = require(Actions.ClearTargets)
local CloseTarget = require(Actions.CloseTarget)
local SelectTarget = require(Actions.SelectTarget)
local ToggleTarget = require(Actions.ToggleTarget)

local function getDebugId(item)
	return item.Id or item.Name
end

local function getChildren(item)
	local children = values(item.Children)
	sort(children, function(left, right)
		return left.Name > right.Name
	end)
	return children
end

local function createItem(name, className, children)
	return {
		Name = name,
		ClassName = className,
		Children = children or {},
		GetChildren = getChildren,
		GetDebugId = getDebugId
	}
end

local function createTargetFolders()
	return {
		createItem("BuiltInPlugins", "Folder"),
		createItem("CoreGui", "CoreGui"),
		createItem("Libraries", "ReplicatedStorage"),
		createItem("StandaloneBuiltInPlugins", "CorePackages"),
	}
end

return Rodux.createReducer({
	targets = createTargetFolders(),
	selectedTargetName = nil,
	selectedTarget = nil,
	expandedTargets = {},
}, {
	[ClearTargets.name] = function(state, action)
		return join(state, {
			targets = createTargetFolders(),
			expandedTargets = {},
			selectedTarget = None
		})
	end,
	[SelectTarget.name] = function(state, action)
		return join(state, {
			selectedTarget = action.target
		})
	end,
	[CloseTarget.name] = function(state)
		return join(state, {
			selectedTarget = None
		})
	end,
	[ToggleTarget.name] = function(state, action)
		return joinDeep(state, {
			expandedTargets = action.change
		})
	end,
	[AddTargets.name] = function(state, action)
		local kindToIndex = {
			Plugin = 1,
			CoreGui = 2,
			Library = 3,
			StandalonePlugin = 4,
		}

		local kindIndex = kindToIndex[action.sourceKind]
		if not kindIndex then
			warn("[DeveloperInspector] Unrecognized source kind " .. pretty(action))
			return state
		end

		local targetItems = map(action.targets, function(target)
			local item = createItem(target.name, "Frame")
			item.Id = target.id
			item.Name = target.name
			item.BridgeId = action.fromBridgeId
			item.SourceName = action.sourceName
			return item
		end)
		local newState = joinDeep(state, {
			targets = {
				[kindIndex] = {
					Children = {
						[action.sourceId] = createItem(action.sourceName, "Plugin", targetItems)
					}
				}
			}
		})
		return newState
	end,
})
