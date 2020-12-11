local FFlagTerrainImportUseService = game:GetFastFlag("TerrainImportUseService")
local FFlagTerrainImportNewYieldMethod = game:GetFastFlag("TerrainImportNewYieldMethod")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = Framework.Util
local Signal = FrameworkUtil.Signal

local MockTerrain = {}
MockTerrain.__index = MockTerrain

function MockTerrain.new()
	local self = {}
	if not FFlagTerrainImportUseService then
		self.TerrainProgressUpdate = Signal.new()
	end
	return setmetatable(self, MockTerrain)
end

-- TODO: More robust "IsA" methods for our mock instances
function MockTerrain:IsA(str)
	return str == "Terrain"
end

function MockTerrain:WriteVoxels(region, resolution, materialMap, occupancyMap)
end

function MockTerrain:ReadVoxels(region, resolution)
	return {size = Vector3.new(0, 0, 0)}, {size = Vector3.new(0, 0, 0)}
end

function MockTerrain:FillBall(center, radius, material)
end

function MockTerrain:FillBlock(center, size, material)
end

function MockTerrain:FillCylinder(center, height, radius, material)
end

if not FFlagTerrainImportUseService then
	if FFlagTerrainImportNewYieldMethod then
		function MockTerrain:ImportHeightmap(region, heightmapAssetId, colormapAssetId, defaultMaterial)
		end

		function MockTerrain:SetImportHeightmapPaused(paused)
		end

		function MockTerrain:CancelImportHeightmap()
		end
	else
		function MockTerrain:ImportHeightMap(heightmapUrl, colormapUrl, region)
		end
	end
end

function MockTerrain:Clear()
end

function MockTerrain:PasteRegion(terrainRegion, position, fillEmpty)
end

function MockTerrain:CopyRegion(region)
	-- TODO: Mock TerrainRegion instance
	return {}
end

function MockTerrain:ReplaceMaterial(region, resolution, sourceMaterial, targeTMaterial)
end

return MockTerrain

