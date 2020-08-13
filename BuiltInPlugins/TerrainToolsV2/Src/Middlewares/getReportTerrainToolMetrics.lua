-- TerrainTools Middleware for analytics
--[[
	usage:
	local getReportTerrainToolMetrics = require(...getReportTerrainToolMetrics)

	local dataStore = Rodux.Store.new(Reducer, nil,{
		getReportTerrainToolMetrics({
			AnalyticsService = game:GetService("RbxAnalyticsService"),
			StudioService = game:GetService("StudioService")
		})
	})
]]--

assert(not game:GetFastFlag("TerrainToolsUseDevFramework"),
	"TerrainTools getReportTerrainToolMetrics.lua should not be used when FFlagTerrainToolsUseDevFramework is on")

local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)
local ChangeTab = require(Actions.ChangeTab)

local reportAction = {
	[ChangeTool.name] = function(dependencies, store, action)
		dependencies.AnalyticsService:SendEventDeferred("studio", "Terrain", "ToolSelected", {
			userId = dependencies.StudioService:GetUserId(),
			name = action.currentTool,
			studioSId = dependencies.AnalyticsService:GetSessionId(),
			placeId = game.PlaceId,
		})
	end,
	[ChangeTab.name] = function(dependencies, store, action)
		dependencies.AnalyticsService:SendEventDeferred("studio", "Terrain", "TabSelected", {
			userId = dependencies.StudioService:GetUserId(),
			name = action.tabName,
			studioSId = dependencies.AnalyticsService:GetSessionId(),
			placeId = game.PlaceId,
		})
	end
}

return function(dependencies)
	return function(nextDispatch, store)
		return function(action)
			if reportAction[action.type] and
				dependencies.AnalyticsService and
				dependencies.StudioService then
				reportAction[action.type](dependencies, store, action)
			end
			nextDispatch(action)
		end
	end
end
