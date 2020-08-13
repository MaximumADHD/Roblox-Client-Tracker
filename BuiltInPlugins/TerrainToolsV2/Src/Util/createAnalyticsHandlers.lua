local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local StudioService = game:GetService("StudioService")

return function(analyticsService)
	local function sendEvent(eventName, additionalArgs)
		additionalArgs = additionalArgs or {}

		local args = Cryo.Dictionary.join({
			studioSid = analyticsService:GetSessionId(),
			clientId = analyticsService:GetClientId(),
			placeId = game.PlaceId,
			userId = StudioService:GetUserId(),
		}, additionalArgs)

		analyticsService:SendEventDeferred("studio", "Terrain", eventName, args)
	end

	local function reportCounter(counterName, count)
		analyticsService:ReportCounter(counterName, count or 1)
	end

	return {
		changeTool = function(action)
			sendEvent("ToolSelected", {
				name = action.currentTool,
			})
		end,

		changeTab = function(action)
			sendEvent("TabSelected", {
				name = action.tabName,
			})
		end,

		toggleWidget = function()
			reportCounter("TerrainToolsToggleButton")
			sendEvent("ToggleWidget")
		end,

		openWidget = function()
			reportCounter("TerrainToolsOpenWidget")
			sendEvent("OpenWidget")
		end,

		closeWidget = function()
			reportCounter("TerrainToolsCloseWidget")
			sendEvent("CloseWidget")
		end,

		generateTerrain = function(numVoxels, biomeSize, seed)
			sendEvent("GenerateTerrain", {
				numVoxels = numVoxels,
				biomesize = biomeSize,
				seed = seed,
			})
		end,

		useBrushTool = function(toolName)
			sendEvent("UseTerrainTool", {
				toolName = toolName,
			})
		end,

		importTerrain = function(region, heightmap, colormap)
			sendEvent("ImportTerrain", {
				regionDims = ("%d,%d,%d)"):format(region.Size.x, region.Size.y, region.Size.z),
				colorMapUrl = heightmap,
				heightMapUrl = colormap
			})
		end,
	}
end
