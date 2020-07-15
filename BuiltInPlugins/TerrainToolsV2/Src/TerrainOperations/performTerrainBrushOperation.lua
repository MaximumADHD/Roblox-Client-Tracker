local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local OperationHelper = require(script.Parent.OperationHelper)
local smartLargeSculptBrush = require(script.Parent.smartLargeSculptBrush)
local SculptOperations = require(script.Parent.SculptOperations)

-- Air and water materials are frequently referenced in terrain brush
local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

-- Once the brush size > this, use the floodfill based large brush implementation
local USE_LARGE_BRUSH_MIN_SIZE = 32

local DEBUG_LOG_OPERATION_TIME = false

--[[
dict opSet =
	ToolId currentTool

	BrushShape brushShape
	FlattenMode flattenMode
	PivotType pivot

	Vector3 centerPoint
	Vector3 planePoint
	Vector3 planeNormal

	number cursorSize
	number cursorHeight
	number strength

	bool autoMaterial
	Material material

	Material sourceMaterial
	Material targetMaterial
]]

local function performOperation(terrain, opSet)
	local tool = opSet.currentTool
	local brushShape = opSet.brushShape
	local selectionSize = opSet.cursorSize

	local size = selectionSize * Constants.VOXEL_RESOLUTION
	local height = opSet.cursorHeight * Constants.VOXEL_RESOLUTION
	local radius = size * 0.5

	local centerPoint = opSet.centerPoint
	centerPoint = applyPivot(opSet.pivot, centerPoint, height)

	local autoMaterial = opSet.autoMaterial
	local desiredMaterial = opSet.material
	local sourceMaterial = opSet.source
	local targetMaterial = opSet.target

	local ignoreWater = opSet.ignoreWater

	assert(terrain ~= nil, "performTerrainBrushOperation requires a terrain instance")
	assert(tool ~= nil and type(tool) == "string", "performTerrainBrushOperation requires a currentTool parameter")

	-- Might be able to do a quick operation through an API call
	if (tool == ToolId.Add or (tool == ToolId.Subtract and not ignoreWater)) and not autoMaterial then
		if tool == ToolId.Subtract then
			desiredMaterial = materialAir
		end

		if brushShape == BrushShape.Sphere then
			terrain:FillBall(centerPoint, radius, desiredMaterial)
			return
		elseif brushShape == BrushShape.Cube then
			terrain:FillBlock(CFrame.new(centerPoint), Vector3.new(size, height, size), desiredMaterial)
			return
		elseif brushShape == BrushShape.Cylinder then
			terrain:FillCylinder(CFrame.new(centerPoint), height, radius, desiredMaterial)
			return
		end

		assert(false, "Invalid brush shape in performTerrainBrushOperation quick path")
		return
	end

	local strength = opSet.strength

	local minBounds = Vector3.new(
		OperationHelper.clampDownToVoxel(centerPoint.x - radius),
		OperationHelper.clampDownToVoxel(centerPoint.y - (height * 0.5)),
		OperationHelper.clampDownToVoxel(centerPoint.z - radius))
	local maxBounds = Vector3.new(
		OperationHelper.clampUpToVoxel(centerPoint.x + radius),
		OperationHelper.clampUpToVoxel(centerPoint.y + (height * 0.5)),
		OperationHelper.clampUpToVoxel(centerPoint.z + radius))

	local region = Region3.new(minBounds, maxBounds)
	local readMaterials, readOccupancies = terrain:ReadVoxels(region, Constants.VOXEL_RESOLUTION)

	-- As we update a voxel, we don't want to interfere with its neighbours
	-- So we want a readonly copy of all the data
	-- And a writeable copy
	local writeMaterials, writeOccupancies = terrain:ReadVoxels(region, Constants.VOXEL_RESOLUTION)

	if selectionSize > USE_LARGE_BRUSH_MIN_SIZE
		and (tool == ToolId.Grow or tool == ToolId.Erode or tool == ToolId.Flatten or tool == ToolId.Smooth) then
		smartLargeSculptBrush(opSet, minBounds, maxBounds,
			readMaterials, readOccupancies, writeMaterials, writeOccupancies)
		terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, writeMaterials, writeOccupancies)
		return
	end

	local flattenMode = opSet.flattenMode

	local centerX = centerPoint.x
	local centerY = centerPoint.y
	local centerZ = centerPoint.z

	local minBoundsX = minBounds.x
	local minBoundsY = minBounds.y
	local minBoundsZ = minBounds.z

	local maxBoundsX = maxBounds.x

	local airFillerMaterial = materialAir
	local waterHeight = 0

	if ignoreWater and (tool == ToolId.Erode or tool == ToolId.Subtract) then
		waterHeight, airFillerMaterial = OperationHelper.getWaterHeightAndAirFillerMaterial(readMaterials)
	end

	local sizeX = table.getn(readOccupancies)
	local sizeY = table.getn(readOccupancies[1])
	local sizeZ = table.getn(readOccupancies[1][1])

	local radiusOfRegion = (maxBoundsX - minBoundsX) * 0.5

	local planeNormal = opSet.planeNormal
	local planeNormalX = planeNormal.x
	local planeNormalY = planeNormal.y
	local planeNormalZ = planeNormal.z

	local planePoint = opSet.planePoint
	local planePointX = planePoint.x
	local planePointY = planePoint.y
	local planePointZ = planePoint.z

	-- Many of the sculpt settings are the same for each voxel, so precreate the table
	-- Then for each voxel, set the voxel-specific properties
	local sculptSettings = {
		readMaterials = readMaterials,
		readOccupancies = readOccupancies,
		writeMaterials = writeMaterials,
		writeOccupancies = writeOccupancies,
		sizeX = sizeX,
		sizeY = sizeY,
		sizeZ = sizeZ,
		strength = strength,
		ignoreWater = ignoreWater,
		desiredMaterial = desiredMaterial,
		autoMaterial = autoMaterial,
		filterSize = 1,
		maxOccupancy = 1,
	}

	-- "planeDifference" is the distance from the voxel to the plane defined by planePoint and planeNormal
	-- Calculated as (voxelPosition - planePoint):Dot(planeNormal)
	for voxelX, occupanciesX in ipairs(readOccupancies) do
		local worldVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION)
		local cellVectorX = worldVectorX - centerX
		local planeDifferenceX = (worldVectorX - planePointX) * planeNormalX

		for voxelY, occupanciesY in ipairs(occupanciesX) do
			local worldVectorY = minBoundsY + (voxelY - 0.5) * Constants.VOXEL_RESOLUTION
			local cellVectorY = worldVectorY - centerY
			local planeDifferenceXY = planeDifferenceX + ((worldVectorY - planePointY) * planeNormalY)

			for voxelZ, occupancy in ipairs(occupanciesY) do
				local worldVectorZ = minBoundsZ + (voxelZ - 0.5) * Constants.VOXEL_RESOLUTION
				local cellVectorZ = worldVectorZ - centerZ
				local planeDifference = planeDifferenceXY + ((worldVectorZ - planePointZ) * planeNormalZ)

				local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
					cellVectorX, cellVectorY, cellVectorZ,
					selectionSize, brushShape, radiusOfRegion, not (tool == ToolId.Smooth))

				local cellOccupancy = occupancy
				local cellMaterial = readMaterials[voxelX][voxelY][voxelZ]

				if ignoreWater and cellMaterial == materialWater then
					cellMaterial = materialAir
					cellOccupancy = 0
				end

				airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir

				sculptSettings.x = voxelX
				sculptSettings.y = voxelY
				sculptSettings.z = voxelZ
				sculptSettings.brushOccupancy = brushOccupancy
				sculptSettings.magnitudePercent = magnitudePercent
				sculptSettings.cellOccupancy = cellOccupancy
				sculptSettings.cellMaterial = cellMaterial
				sculptSettings.airFillerMaterial = airFillerMaterial

				if tool == ToolId.Add then
					if brushOccupancy > cellOccupancy then
						writeOccupancies[voxelX][voxelY][voxelZ] = brushOccupancy
					end
					if brushOccupancy >= 0.5 and cellMaterial == materialAir then
						local targetMaterial = desiredMaterial
						if autoMaterial then
							targetMaterial = OperationHelper.getMaterialForAutoMaterial(readMaterials,
								voxelX, voxelY, voxelZ,
								sizeX, sizeY, sizeZ,
								cellMaterial)
						end
						writeMaterials[voxelX][voxelY][voxelZ] = targetMaterial
					end

				elseif tool == ToolId.Subtract then
					if cellMaterial ~= materialAir then
						local desiredOccupancy = 1 - brushOccupancy
						if desiredOccupancy < cellOccupancy then
							if desiredOccupancy <= OperationHelper.one256th then
								writeOccupancies[voxelX][voxelY][voxelZ] = airFillerMaterial == materialWater and 1 or 0
								writeMaterials[voxelX][voxelY][voxelZ] = airFillerMaterial
							else
								writeOccupancies[voxelX][voxelY][voxelZ] = desiredOccupancy
							end
						end
					end

				elseif tool == ToolId.Grow then
					SculptOperations.grow(sculptSettings)

				elseif tool == ToolId.Erode then
					SculptOperations.erode(sculptSettings)

				elseif tool == ToolId.Flatten then
					sculptSettings.maxOccupancy = math.abs(planeDifference)
					if planeDifference > Constants.FLATTEN_PLANE_TOLERANCE and flattenMode ~= FlattenMode.Grow then
						SculptOperations.erode(sculptSettings)

					elseif planeDifference < -Constants.FLATTEN_PLANE_TOLERANCE and flattenMode ~= FlattenMode.Erode then
						SculptOperations.grow(sculptSettings)
					end

				elseif tool == ToolId.Paint then
					if brushOccupancy > 0 and cellOccupancy > 0 then
						writeMaterials[voxelX][voxelY][voxelZ] = desiredMaterial
					end

				elseif tool == ToolId.Replace then
					--Using cellMaterial and cellOccupancy creates quirky behaviour with Air Material
					local rawMaterial = readMaterials[voxelX][voxelY][voxelZ]
					if brushOccupancy > 0 and rawMaterial == sourceMaterial then
					    writeMaterials[voxelX][voxelY][voxelZ]  = targetMaterial
					    if rawMaterial == materialAir then
					        writeOccupancies[voxelX][voxelY][voxelZ]  = brushOccupancy
					    end
					end

				elseif tool == ToolId.Smooth then
					SculptOperations.smooth(sculptSettings)
				end
			end
		end
	end

	terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, writeMaterials, writeOccupancies)
end

if DEBUG_LOG_OPERATION_TIME then
	return function(...)
		local startTime = tick()
		performOperation(...)
		local endTime = tick()
		print("Operation took", endTime - startTime)
	end
else
	return performOperation
end
