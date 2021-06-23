local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId
local BrushShape = TerrainEnums.BrushShape

return function(operationSettings)
	local toolAnalytics = {}
	for k, v in pairs(operationSettings) do
		toolAnalytics[k] = v
	end

	if toolAnalytics.currentTool == ToolId.Flatten then
		toolAnalytics['planeLock'] = nil

		if not toolAnalytics.fixedPlane then
			toolAnalytics.planePositionY = nil
		end
	else
		toolAnalytics.flattenMode = nil
		toolAnalytics.fixedPlane = nil
		toolAnalytics.planePositionY = nil
	end

	if (toolAnalytics.currentTool ~= ToolId.Add and
		toolAnalytics.currentTool ~= ToolId.Grow and
		toolAnalytics.currentTool ~= ToolId.Paint) then
		toolAnalytics.material = nil
		toolAnalytics.autoMaterial = nil
	else
		toolAnalytics.material = toolAnalytics.material.Name

		if toolAnalytics.currentTool == ToolId.Paint then
			toolAnalytics.autoMaterial = nil
		end
	end

	if toolAnalytics.currentTool ~= ToolId.Replace then
		toolAnalytics.source = nil
		toolAnalytics.target = nil
	else
		toolAnalytics.source = toolAnalytics.source.Name
		toolAnalytics.target = toolAnalytics.target.Name
	end

	if operationSettings.brushShape == BrushShape.Sphere then
		toolAnalytics.cursorHeight = nil
	end

	return toolAnalytics
end
