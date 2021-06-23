local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local HttpService = game:GetService("HttpService")
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

		if DebugFlags.LogAnalytics() then
			print(("Terrain SendEvent eventName=%s args=%s"):format(
				tostring(eventName), HttpService:JSONEncode(args)))
		end

		analyticsService:SendEventDeferred("studio", "Terrain", eventName, args)
	end

	local function reportCounter(counterName, count)
		count = count or 1
		if DebugFlags.LogAnalytics() then
			print(("Terrain ReportCounter counterName=%s count=%s"):format(
				tostring(counterName), tostring(count)))
		end
		analyticsService:ReportCounter(counterName, count)
	end

	return {
		changeTool = function(_, tool)
			sendEvent("ToolSelected", {
				name = tool,
			})
		end,

		changeTab = function(_, tab)
			sendEvent("TabSelected", {
				name = tab,
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

		generateTerrain = function(_, numVoxels, biomeSize, seed)
			sendEvent("GenerateTerrain", {
				numVoxels = numVoxels,
				biomesize = biomeSize,
				seed = seed,
			})
		end,

		convertTerrain = function(_, partNumber)
			sendEvent("ConvertTerrain", {
				partNumber = partNumber,
			})
		end,

		useBrushTool = function(_, toolName)
			sendEvent("UseTerrainTool", {
				toolName = toolName,
			})
		end,

		useBrushToolExtended = function(_, toolAnalytics)
			sendEvent("UseTerrainTool", {
				toolName = toolAnalytics.currentTool,
				brushShape = toolAnalytics.brushShape,
				cursorSize = toolAnalytics.cursorSize,
				cursorHeight = toolAnalytics.cursorHeight,
				strength = toolAnalytics.strength,
				material = toolAnalytics.material,
				autoMaterial = toolAnalytics.autoMaterial,
				flattenMode = toolAnalytics.flattenMode,
				pivot = toolAnalytics.pivot,
				ignoreWater = toolAnalytics.ignoreWater,
				ignoreParts = toolAnalytics.ignoreParts,
				planeLock = toolAnalytics.planeLock,
				fixedPlane = toolAnalytics.fixedPlane,
				snapToGrid = toolAnalytics.snapToGrid,
				planePositionY = toolAnalytics.planePositionY,
				source = toolAnalytics.source,
				target = toolAnalytics.target,
			})
		end,

		importTerrain = function(_, region, heightmap, colormap)
			sendEvent("ImportTerrain", {
				regionDims = ("%d,%d,%d)"):format(region.Size.x, region.Size.y, region.Size.z),
				heightMapUrl = heightmap,
				colorMapUrl = colormap,
			})
		end,

		importTerrainLocal = function(_, region, material, heightmapTable, colormapTable, guid)
			local args = {
				regionDims = ("%d,%d,%d)"):format(region.Size.x, region.Size.y, region.Size.z), 
				heightMapImgDims = ("%d, %d"):format(heightmapTable.width, heightmapTable.height),
				heightMapChannels = heightmapTable.channels,
				material = material, 
				guid = guid,
			}

			if next(colormapTable) then
				args.colorMapImgDims = ("%d, %d"):format(colormapTable.width, colormapTable.height)
				args.colorMapChannels = colormapTable.channels
			end

			sendEvent("ImportTerrainLocal", args)
		end,

		importTerrainLocalHeightMap = function(_, assetId, guid)
			sendEvent("ImportTerrainHeightmapMapping", {
				assetId = assetId,
				guid = guid,
			})
		end, 

		importTerrainLocalColorMap = function(_, assetId, guid)
			sendEvent("ImportTerrainColormapMapping", {
				assetId = assetId,
				guid = guid,
			})
		end,
	}
end
