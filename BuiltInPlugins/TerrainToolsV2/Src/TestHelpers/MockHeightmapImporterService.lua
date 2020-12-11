local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = Framework.Util
local Signal = FrameworkUtil.Signal

local MockHeightmapImporterService = {}
MockHeightmapImporterService.__index = MockHeightmapImporterService

function MockHeightmapImporterService.new()
	return setmetatable({
		ProgressUpdate = Signal.new(),
	}, MockHeightmapImporterService)
end

function MockHeightmapImporterService:IsA(str)
	return str == "HeightmapImporterService"
end

function MockHeightmapImporterService:ImportHeightmap(region, heightmapAssetId, colormapAssetId, defaultMaterial)
end

function MockHeightmapImporterService:SetImportHeightmapPaused(paused)
end

function MockHeightmapImporterService:CancelImportHeightmap()
end

function MockHeightmapImporterService:IsValidHeightmap(heightmapAssetId)
	-- Success, status, width, height, channels, bytes per channel
	return true, "Ok", 1024, 1024, 3, 1
end

function MockHeightmapImporterService:IsValidColormap(colormapAssetId)
	-- Success, status, width, height, channels
	return true, "Ok", 1024, 1024, 3
end

return MockHeightmapImporterService
