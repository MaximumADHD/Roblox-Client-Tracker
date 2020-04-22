game:DefineFastFlag("TerrainToolsTweakBrushPower", false)

local FFlagTerrainToolsTweakBrushPower = game:GetFastFlag("TerrainToolsTweakBrushPower")

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

local OperationHelper = {}

OperationHelper.xOffset = {1, -1, 0,  0, 0,  0}
OperationHelper.yOffset = {0,  0, 1, -1, 0,  0}
OperationHelper.zOffset = {0,  0, 0,  0, 1, -1}

-- This should later be replaced with 0 once smooth terrain doesn't approximate 1/256 to 0.
-- This is causing small occupancies to become air
OperationHelper.one256th = 1 / 256

function OperationHelper.clampDownToVoxel(p)
	return math.floor(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

function OperationHelper.clampUpToVoxel(p)
	return math.ceil(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

function OperationHelper.getWaterHeightAndAirFillerMaterial(readMaterials)
	local airFillerMaterial = materialAir
	local waterHeight = 0

	for _, vx in ipairs(readMaterials) do
		for y, vy in ipairs(vx) do
			for _, vz in ipairs(vy) do
				if vz == materialWater then
					airFillerMaterial = materialWater
					if y > waterHeight then
						waterHeight = y
					end
				end
			end
		end
	end

	return waterHeight, airFillerMaterial
end

function OperationHelper.calculateBrushPowerForCell(cellVectorX, cellVectorY, cellVectorZ,
	selectionSize, brushShape, radiusOfRegion, scaleMagnitudePercent)
	local brushOccupancy = 1
	local magnitudePercent = 1

	if selectionSize > 2 then
		if brushShape == BrushShape.Sphere then
			local distance = math.sqrt(cellVectorX * cellVectorX
				+ cellVectorY * cellVectorY
				+ cellVectorZ * cellVectorZ)
			magnitudePercent = math.cos(math.min(1, distance / radiusOfRegion) * math.pi * 0.5)
			brushOccupancy = math.max(0, math.min(1, (radiusOfRegion - distance) / Constants.VOXEL_RESOLUTION))
		elseif brushShape == BrushShape.Cylinder then
			local distance = math.sqrt(cellVectorX * cellVectorX
				+ cellVectorZ * cellVectorZ)
			magnitudePercent = math.cos(math.min(1, distance / radiusOfRegion) * math.pi * 0.5)
			brushOccupancy = math.max(0, math.min(1, (radiusOfRegion - distance) / Constants.VOXEL_RESOLUTION))
		end
	end

	if scaleMagnitudePercent then
		if FFlagTerrainToolsTweakBrushPower then
			-- When brush size is less than this, we don't change brush power
			-- If it's larger than this, then we scale brush power
			local cutoffSize = 20
			local denominator = 5

			if selectionSize > cutoffSize then
				magnitudePercent = magnitudePercent * ((selectionSize - cutoffSize) / denominator)
			end
		else
			magnitudePercent = magnitudePercent * math.max(1, selectionSize / 5)
		end
	end

	return brushOccupancy, magnitudePercent
end

function OperationHelper.getMaterialForAutoMaterial(readMaterials,
	voxelX, voxelY, voxelZ,
	sizeX, sizeY, sizeZ, initialMaterial)
	local materialsAroundCell = {}
	for x = -1, 1, 1 do
		for y = -1, 1, 1 do
			for z = -1, 1, 1 do
				local nx = voxelX + x
				local ny = voxelY + y
				local nz = voxelZ + z
				if nx > 0 and nx <= sizeX
					and ny > 0 and ny <= sizeY
					and nz > 0 and nz <= sizeZ then
					local m = readMaterials[nx][ny][nz]
					if m ~= materialAir then
						materialsAroundCell[m] = (materialsAroundCell[m] or 0) + 1
					end
				end
			end
		end
	end

	local cellDesiredMaterial = initialMaterial
	local mostCommonNum = 0
	for mat, freq in pairs(materialsAroundCell) do
		if freq > mostCommonNum then
			mostCommonNum = freq
			cellDesiredMaterial = mat
		end
	end

	if cellDesiredMaterial ~= materialAir then
		return cellDesiredMaterial
	end

	return initialMaterial
end

return OperationHelper
