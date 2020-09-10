local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or require(Plugin.Src.Util.Signal)

local MockTerrain = {}
MockTerrain.__index = MockTerrain

function MockTerrain.new()
	return setmetatable({
		TerrainProgressUpdate = Signal.new(),
	}, MockTerrain)
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

function MockTerrain:ImportHeightmap(heightmapUrl, colormapUrl, region)
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

