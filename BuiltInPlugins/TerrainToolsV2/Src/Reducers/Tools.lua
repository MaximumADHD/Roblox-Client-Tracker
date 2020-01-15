
--[[
	Knows what tool is currently selected
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId
local ToolId = TerrainEnums.ToolId

local Tools = Rodux.createReducer({
	currentTab = TabId.Create, -- first tab
	currentTool = ToolId.None, -- no tool ever initially selected
	lastToolPerTab = {},
}, {
	ChangeTab = function(state, action)
		local tabName = action.tabName
		local currentTool = state.lastToolPerTab[tabName]

		if not currentTool then
			currentTool = ToolId.None
		end

		return Cryo.Dictionary.join(state, {
			currentTab = tabName,
			currentTool = currentTool,
		})
	end,

	ChangeTool = function(state, action)
		local currentTool = action.currentTool

		-- Selecting a tool again will deselect it (acts like a toggle button)
		if currentTool == state.currentTool then
			currentTool = ToolId.None
		end

		local newToolList = Cryo.Dictionary.join(state.lastToolPerTab, {
			[state.currentTab] = currentTool,
		})

		return Cryo.Dictionary.join(state, {
			currentTool = currentTool,
			lastToolPerTab = newToolList,
		})
	end,
})

return Tools
