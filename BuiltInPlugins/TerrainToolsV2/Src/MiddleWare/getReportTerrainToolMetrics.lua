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

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local FFlagTerrainToolTabMetrics = game:GetFastFlag("TerrainToolTabMetrics")

local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)
local ChangeTab = require(Actions.ChangeTab)

local reportAction = {
	[ChangeTool.name] = function(dependencies, store, action)
		if FFlagTerrainToolTabMetrics then
			dependencies.AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "ToolSelected", {
				userId = dependencies.StudioService:GetUserId(),
				name = action.currentTool,
				studioSId = dependencies.AnalyticsService:GetSessionId(),
				placeId = game.PlaceId,
			})
		else
			dependencies.AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "TopLevelButton", {
				userId = dependencies.StudioService:GetUserId(),
				name = action.currentTool,
				studioSId = dependencies.AnalyticsService:GetSessionId(),
				placeId = game.PlaceId,
			})
		end
	end
}

if FFlagTerrainToolTabMetrics then
	reportAction[ChangeTab.name] = function(dependencies, store, action)
		dependencies.AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "TabSelected", {
			userId = dependencies.StudioService:GetUserId(),
			name = action.tabName,
			studioSId = dependencies.AnalyticsService:GetSessionId(),
			placeId = game.PlaceId,
		})
	end
end

return function(dependencies)
	return function(nextDispatch, store)
		return function(action)
			if FFlagTerrainToolMetrics or DebugFlags.RunTests() then
				if reportAction[action.type] and
					dependencies.AnalyticsService and
					dependencies.StudioService then
					reportAction[action.type](dependencies, store, action)
				end
			end
			nextDispatch(action)
		end
	end
end
