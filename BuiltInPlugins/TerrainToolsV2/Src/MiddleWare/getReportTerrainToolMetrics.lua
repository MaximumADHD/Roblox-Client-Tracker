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

local Plugin = script.Parent.Parent.Parent
local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local reportAction = {
	[ChangeTool.name] = function(dependencies, store, action)
		dependencies.AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "TopLevelButton", {
			userId = dependencies.StudioService:GetUserId(),
			name = action.currentTool
		})
	end
}

return function(dependencies)
	return function(nextDispatch, store)
		return function(action)
			if FFlagTerrainToolMetrics then
				if reportAction[action.type] then
					reportAction[action.type](dependencies, store, action)
				end
			end
			nextDispatch(action)
		end
	end
end