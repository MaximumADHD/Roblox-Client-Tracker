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

		useBrushTool = function(_, toolName)
			sendEvent("UseTerrainTool", {
				toolName = toolName,
			})
		end,

		importTerrain = function(_, region, heightmap, colormap)
			sendEvent("ImportTerrain", {
				regionDims = ("%d,%d,%d)"):format(region.Size.x, region.Size.y, region.Size.z),
				colorMapUrl = heightmap,
				heightMapUrl = colormap
			})
		end,
	}
end
