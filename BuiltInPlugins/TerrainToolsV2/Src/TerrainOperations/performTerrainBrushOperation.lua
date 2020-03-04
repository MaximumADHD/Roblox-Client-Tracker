local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local FFlagTerrainToolsRefactorSculptOperations = game:GetFastFlag("TerrainToolsRefactorSculptOperations")

local OperationHelper = require(script.Parent.OperationHelper)
local smartLargeSculptBrush = require(script.Parent.smartLargeSculptBrush)
local smartLargeSmoothBrush = not FFlagTerrainToolsRefactorSculptOperations
	and require(script.Parent.smartLargeSmoothBrush)
local smoothBrush = not FFlagTerrainToolsRefactorSculptOperations
	and require(script.Parent.smoothBrush)
local SculptOperations = FFlagTerrainToolsRefactorSculptOperations
	and require(script.Parent.SculptOperations)

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

	bool ignoreWater

	-- TODO: Remove planePositionY when removing FFlagTerrainToolsRefactorSculptOperations
	number planePositionY
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
	local nearMaterial = nil

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
		and (tool == ToolId.Grow or tool == ToolId.Erode or tool == ToolId.Flatten
			or (FFlagTerrainToolsRefactorSculptOperations and tool == ToolId.Smooth)) then
		smartLargeSculptBrush(opSet, minBounds, maxBounds,
			readMaterials, readOccupancies, writeMaterials, writeOccupancies)
		terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, writeMaterials, writeOccupancies)
		return
	end

	if not FFlagTerrainToolsRefactorSculptOperations and tool == ToolId.Smooth then
		if selectionSize > USE_LARGE_BRUSH_MIN_SIZE then
			smartLargeSmoothBrush({
				centerPoint = centerPoint,
				selectionSize = selectionSize,
				strength = strength,
				brushShape = brushShape,
			}, minBounds, maxBounds, readMaterials, readOccupancies, writeMaterials, writeOccupancies)
		else
			smoothBrush({
				centerPoint = centerPoint,
				selectionSize = selectionSize,
				strength = strength,
				brushShape = brushShape,
			}, minBounds, maxBounds, readMaterials, readOccupancies, writeMaterials, writeOccupancies)
		end

		terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, writeMaterials, writeOccupancies)
		return
	end

	local flattenMode = opSet.flattenMode
	local planePositionY = opSet.planePositionY

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

	if FFlagTerrainToolsRefactorSculptOperations then
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

				elseif FFlagTerrainToolsRefactorSculptOperations and tool == ToolId.Smooth then
					SculptOperations.smooth(sculptSettings)
				end
			end
		end
	end

	else

	-- These are calculated for each cell in the nested for loop
	-- Brought up to this level so that erode and grow can use them
	local cellMaterial
	local cellOccupancy
	local magnitudePercent
	local brushOccupancy

	local function erode(ix, iy, iz)
		if cellOccupancy == 0 or cellMaterial == materialAir or brushOccupancy <= 0.5 then
			return
		end

		local desiredOccupancy = cellOccupancy
		local emptyNeighbor = false
		local neighborOccupancies = 6
		for i = 1, 6, 1 do
			local nx = ix + OperationHelper.xOffset[i]
			local ny = iy + OperationHelper.yOffset[i]
			local nz = iz + OperationHelper.zOffset[i]
			if nx > 0 and nx <= sizeX
				and ny > 0 and ny <= sizeY
				and nz > 0 and nz <= sizeZ then
				local neighbor = readOccupancies[nx][ny][nz]
				local neighborMaterial = readMaterials[nx][ny][nz]
				if ignoreWater and neighborMaterial == materialWater then
					neighbor = 0
				end
				if neighbor <= 0 then
					emptyNeighbor = true
				end
				neighborOccupancies = neighborOccupancies - neighbor
			end
		end

		if cellOccupancy < 1 or emptyNeighbor then
			desiredOccupancy = desiredOccupancy
				- (neighborOccupancies / 6) * (strength + 0.1) * 0.25 * brushOccupancy * magnitudePercent
		end
		if desiredOccupancy <= OperationHelper.one256th then
			writeOccupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
			writeMaterials[ix][iy][iz] = airFillerMaterial
		else
			writeOccupancies[ix][iy][iz] = desiredOccupancy
		end
	end

	local function grow(ix, iy, iz)
		if cellOccupancy == 1 or brushOccupancy < 0.5 then
			return
		end

		local desiredOccupancy = cellOccupancy
		local fullNeighbor = false
		local totalNeighbors = 0
		local neighborOccupancies = 0
		for i = 1, 6, 1 do
			local nx = ix + OperationHelper.xOffset[i]
			local ny = iy + OperationHelper.yOffset[i]
			local nz = iz + OperationHelper.zOffset[i]
			if nx > 0 and nx <= sizeX
				and ny > 0 and ny <= sizeY
				and nz > 0 and nz <= sizeZ then
				local neighbor = readOccupancies[nx][ny][nz]
				local neighborMaterial = readMaterials[nx][ny][nz]
				if ignoreWater and neighborMaterial == materialWater then
					neighbor = 0
				end
				if neighbor >= 1 then
					fullNeighbor = true
				end
				totalNeighbors = totalNeighbors + 1
				neighborOccupancies = neighborOccupancies + neighbor
			end
		end

		if cellOccupancy > 0 or fullNeighbor then
			neighborOccupancies = totalNeighbors == 0 and 0 or neighborOccupancies / totalNeighbors
			desiredOccupancy = desiredOccupancy
				+ neighborOccupancies * (strength + 0.1) * 0.25 * brushOccupancy * magnitudePercent
		end
		if cellMaterial == materialAir and desiredOccupancy > 0 then
			writeMaterials[ix][iy][iz] = desiredMaterial
		end
		if desiredOccupancy ~= cellOccupancy then
			writeOccupancies[ix][iy][iz] = desiredOccupancy
		end
	end

	for ix, vx in ipairs(readOccupancies) do
		local cellVectorX = minBoundsX + ((ix - 0.5) * Constants.VOXEL_RESOLUTION) - centerX

		for iy, vy in ipairs(vx) do
			local cellVectorY = minBoundsY + (iy - 0.5) * Constants.VOXEL_RESOLUTION - centerY
			local differenceY = minBoundsY + (iy - 0.5) * Constants.VOXEL_RESOLUTION - planePositionY

			for iz, co in ipairs(vy) do
				local cellVectorZ = minBoundsZ + (iz - 0.5) * Constants.VOXEL_RESOLUTION - centerZ

				cellOccupancy = co
				cellMaterial = readMaterials[ix][iy][iz]
				magnitudePercent = 1
				brushOccupancy = 1

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

				if cellMaterial ~= materialAir and cellMaterial ~= materialWater and cellMaterial ~= nearMaterial then
					nearMaterial = cellMaterial
					if autoMaterial then
						desiredMaterial = nearMaterial
					end
				end

				if ignoreWater and cellMaterial == materialWater then
					cellMaterial = materialAir
					cellOccupancy = 0
				end

				airFillerMaterial = waterHeight >= iy and airFillerMaterial or materialAir

				if tool == ToolId.Add then
					if brushOccupancy > cellOccupancy then
						writeOccupancies[ix][iy][iz] = brushOccupancy
					end
					if brushOccupancy >= 0.5 and cellMaterial == materialAir then
						writeMaterials[ix][iy][iz] = desiredMaterial
					end

				elseif tool == ToolId.Subtract then
					if cellMaterial ~= materialAir then
						local desiredOccupancy = 1 - brushOccupancy
						if desiredOccupancy < cellOccupancy then
							if desiredOccupancy <= OperationHelper.one256th then
								writeOccupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
								writeMaterials[ix][iy][iz] = airFillerMaterial
							else
								writeOccupancies[ix][iy][iz] = desiredOccupancy
							end
						end
					end

				elseif tool == ToolId.Grow then
					grow(ix, iy, iz)

				elseif tool == ToolId.Erode then
					erode(ix, iy, iz)

				elseif tool == ToolId.Flatten then
					if differenceY > 0.1 and flattenMode ~= FlattenMode.Grow then
						erode(ix, iy, iz)

					elseif differenceY < -0.1 and flattenMode ~= FlattenMode.Erode then
						grow(ix, iy, iz)
					end

				elseif tool == ToolId.Paint then
					if brushOccupancy > 0 and cellOccupancy > 0 then
						writeMaterials[ix][iy][iz] = desiredMaterial
					end
				end
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
