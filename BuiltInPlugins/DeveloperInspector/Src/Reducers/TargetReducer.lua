--[[
	This reducer updates the state for the RoactInspector
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Dash = require(Plugin.Packages.Dash)
local None = Dash.None
local join = Dash.join
local joinDeep = Dash.joinDeep
local collect = Dash.collect
local values = Dash.values

local sort = table.sort

local Util = Plugin.Src.Util
local TabIds = require(Util.TabIds)

local Actions = Plugin.Src.Actions
local SetTab = require(Actions.SetTab)
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

local tabs = {
	{
		Id = TabIds.ELEMENTS,
		Label = "Elements",
	},
	{
		Id = TabIds.PROFILE,
		Label = "Profile",
	},
}

return Rodux.createReducer({
	tabs = tabs,
	selectedTab = tabs[1],
	targets = {},
	selectedTargetName = nil,
	selectedTarget = nil,
	expandedTargets = {},
}, {
	[SetTab.name] = function(state, action)
		return join(state, {
			selectedTab = action.tab
		})
	end,
	[ClearTargets.name] = function(state, action)
		return join(state, {
			targets = {},
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
		local icons = {
			Plugin = "Plugin",
			CoreGui = "CoreGui",
			Library = "Frame",
			StandalonePlugin = "Plugin",
		}

		local icon = icons[action.sourceKind] or "Frame"
		local targets = collect(action.targets, function(_index, target)
			local item = createItem(target.name, icon)
			local suffix = target.name == "Roact tree" and "" or " - " .. target.name
			item.Id = target.id
			item.Name = action.sourceName .. suffix
			item.BridgeId = action.fromBridgeId
			return target.id, item
		end)
		local newState = joinDeep(state, {
			targets = targets
		})
		return newState
	end,
})
