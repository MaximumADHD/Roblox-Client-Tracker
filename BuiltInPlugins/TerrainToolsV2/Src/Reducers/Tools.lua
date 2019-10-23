
--[[
	Knows what tool is currently selected
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Tools = Rodux.createReducer({
	currentTab = "Create", -- first tab
	currentTool = "None", -- no tool ever initially selected
	lastToolPerTab = {},
	activator = nil,
},
{
	ChangeTab = function(state, action)
		local tabName = action.tabName
		local currentTool = state.lastToolPerTab[tabName]

		if not currentTool then
			currentTool = "None"
		end

		return Cryo.Dictionary.join(state, {
			currentTab = tabName,
			currentTool = currentTool,
		})
	end,
	ChangeTool = function(state, action)
		local currentTool = action.currentTool
		local newToolList = Cryo.Dictionary.join(state.lastToolPerTab, {
			[state.currentTab] = currentTool,
		})

		if currentTool == state.currentTool then
			currentTool = "None"
		end

		return Cryo.Dictionary.join(state, {
			currentTool = currentTool,
			lastToolPerTab = newToolList,
		})
	end,
})

return Tools