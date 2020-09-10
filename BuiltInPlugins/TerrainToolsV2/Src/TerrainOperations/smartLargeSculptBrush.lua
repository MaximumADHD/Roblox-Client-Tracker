local FFlagTerrainToolsFixLargeSmoothAirFillerMaterial = game:GetFastFlag("TerrainToolsFixLargeSmoothAirFillerMaterial")

local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local OperationHelper = require(script.Parent.OperationHelper)
local SculptOperations = require(script.Parent.SculptOperations)

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

--[[
	Brush for grow, erode, flatten and smooth
	Performs a floodfill from the center point to find "surface" voxels that a brush operation could be applied too
	For large brush sizes, this can be more efficient because we'll consider a lot less voxels
	However the floodfill algorithm adds some overhead that makes this less efficient for smaller brushes
	And in some cases with large brushes too (e.g. if most of the space in the brush is "surface" voxels)
	This can also miss some voxels if there isn't a path along the surface from the center point
]]
return function(opSet, minBounds, maxBounds, readMaterials, readOccupancies, writeMaterials, writeOccupancies)
	local tool = opSet.currentTool
	local brushShape = opSet.brushShape

	local selectionSize = opSet.cursorSize
	local height = opSet.cursorHeight * Constants.VOXEL_RESOLUTION

	local centerPoint = opSet.centerPoint
	centerPoint = applyPivot(opSet.pivot, centerPoint, height)

	local autoMaterial = opSet.autoMaterial
	local desiredMaterial = opSet.material

	local flattenMode = opSet.flattenMode

	local ignoreWater = opSet.ignoreWater

	local strength = opSet.strength

	local centerX = centerPoint.x
	local centerY = centerPoint.y
	local centerZ = centerPoint.z

	local minBoundsX = minBounds.x
	local minBoundsY = minBounds.y
	local minBoundsZ = minBounds.z

	local maxBoundsX = maxBounds.x

	local airFillerMaterial = materialAir
	local waterHeight = 0

	if ignoreWater then
		waterHeight, airFillerMaterial = OperationHelper.getWaterHeightAndAirFillerMaterial(readMaterials)
	end

	local radiusOfRegion = (maxBoundsX - minBoundsX) * 0.5

	local sizeX = table.getn(readOccupancies)
	local sizeY = table.getn(readOccupancies[1])
	local sizeZ = table.getn(readOccupancies[1][1])

	local REGION_SIZE = sizeX
	-- 1D array of booleans for voxels we've seen
	-- Use with voxel coordinates x, y z as seenVoxels[x + REGION_SIZE*(y + REGION_SIZE*z)]
	local seenVoxels = {}

	-- List of voxel coordinates {x, y, z} to flood into
	local voxelsToConsider = {}

	-- Add the 3x3x3 block of voxels in the middle of brush to the to-consider list
	local centerVoxelX = math.floor(((centerPoint.x - minBoundsX) / Constants.VOXEL_RESOLUTION) + 0.5)
	local centerVoxelY = math.floor(((centerPoint.y - minBoundsY) / Constants.VOXEL_RESOLUTION) + 0.5)
	local centerVoxelZ = math.floor(((centerPoint.z - minBoundsZ) / Constants.VOXEL_RESOLUTION) + 0.5)

	for xo = -1, 1, 1 do
		for yo = -1, 1, 1 do
			for zo = -1, 1, 1 do
				local x = centerVoxelX + xo
				local y = centerVoxelY + yo
				local z = centerVoxelZ + zo
				if x > 0 and x <= sizeX
					and y > 0 and y <= sizeY
					and z > 0 and z <= sizeZ then
					seenVoxels[x + REGION_SIZE*(y + REGION_SIZE*z)] = true
					table.insert(voxelsToConsider, {x, y, z})
				end
			end
		end
	end

	-- Each sculpt tool floods slightly differently
	-- We only want to use the flood logic for the correct tool
	local considerErode = tool == ToolId.Erode or tool == ToolId.Flatten
	local considerGrow = tool == ToolId.Grow or tool == ToolId.Flatten
	local considerSmooth = tool == ToolId.Smooth

	local planeNormal = opSet.planeNormal
	local planeNormalX = planeNormal.x
	local planeNormalY = planeNormal.y
	local planeNormalZ = planeNormal.z

	local planePoint = opSet.planePoint
	local planePointX = planePoint.x
	local planePointY = planePoint.y
	local planePointZ = planePoint.z

	local sculptSettings = {
		readMaterials = readMaterials,
		readOccupancies = readOccupancies,
		writeMaterials = writeMaterials,
		writeOccupancies = writeOccupancies,
		sizeX = sizeX,
		sizeY = sizeY,
		sizeZ = sizeZ,
		strength  = strength,
		ignoreWater = ignoreWater,
		desiredMaterial = desiredMaterial,
		autoMaterial = autoMaterial,
		filterSize = 1,
		maxOccupancy = 1
	}

	-- Continuously pop from the to-consider list until it's empty
	while #voxelsToConsider > 0 do
		local voxel = table.remove(voxelsToConsider)
		local voxelX, voxelY, voxelZ = voxel[1], voxel[2], voxel[3]

		local myOccupancy = readOccupancies[voxelX][voxelY][voxelZ]
		local myMaterial = readMaterials[voxelX][voxelY][voxelZ]

		local treatCurrentVoxelAsEmptyFromWater = ignoreWater and myMaterial == materialWater

		local worldVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION)
		local cellVectorX = worldVectorX - centerX
		local planeDifferenceX = (worldVectorX - planePointX) * planeNormalX

		local worldVectorY = minBoundsY + (voxelY - 0.5) * Constants.VOXEL_RESOLUTION
		local cellVectorY = worldVectorY - centerY
		local planeDifferenceXY = planeDifferenceX + ((worldVectorY - planePointY) * planeNormalY)

		local worldVectorZ = minBoundsZ + (voxelZ - 0.5) * Constants.VOXEL_RESOLUTION
		local cellVectorZ = worldVectorZ - centerZ
		local planeDifference = planeDifferenceXY + ((worldVectorZ - planePointZ) * planeNormalZ)

		-- Sculpt the current voxel
		do
			-- Choose which sculpt function to use
			local attemptToErodeVoxel = tool == ToolId.Erode
			local attemptToGrowVoxel = tool == ToolId.Grow
			local attemptToSmoothVoxel = tool == ToolId.Smooth

			-- Flatten tool does either a grow or erode depending on voxel position and flatten mode
			if tool == ToolId.Flatten then
				sculptSettings.maxOccupancy = math.abs(planeDifference)

				-- Do an erode if the voxel is above the target plane, and we're not growing up
				if planeDifference > Constants.FLATTEN_PLANE_TOLERANCE and flattenMode ~= FlattenMode.Grow then
					attemptToErodeVoxel = true

				-- Do a grow if the voxel is below the target plane, and we're not eroding down
				elseif planeDifference < -Constants.FLATTEN_PLANE_TOLERANCE and flattenMode ~= FlattenMode.Erode then
					attemptToGrowVoxel = true
				end
			end

			if FFlagTerrainToolsFixLargeSmoothAirFillerMaterial then
				airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir
				sculptSettings.airFillerMaterial = airFillerMaterial
			end

			-- If the voxel we're looking at can erode
			if attemptToErodeVoxel and (myOccupancy > 0 and not treatCurrentVoxelAsEmptyFromWater) then
				local cellOccupancy = myOccupancy
				local cellMaterial = myMaterial

				-- Below code in this block is the same as the original erode tool

				local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
					cellVectorX, cellVectorY, cellVectorZ,
					selectionSize, brushShape, radiusOfRegion, true)

				if ignoreWater and cellMaterial == materialWater then
					cellOccupancy = 0
				end

				if not FFlagTerrainToolsFixLargeSmoothAirFillerMaterial then
					airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir
				end

				sculptSettings.x = voxelX
				sculptSettings.y = voxelY
				sculptSettings.z = voxelZ
				sculptSettings.brushOccupancy = brushOccupancy
				sculptSettings.magnitudePercent = magnitudePercent
				sculptSettings.cellOccupancy = cellOccupancy
				sculptSettings.cellMaterial = cellMaterial
				if not FFlagTerrainToolsFixLargeSmoothAirFillerMaterial then
					sculptSettings.airFillerMaterial = airFillerMaterial
				end

				SculptOperations.erode(sculptSettings)
			end

			-- If the voxel we're looking at can grow
			if attemptToGrowVoxel and (myOccupancy < 1 or treatCurrentVoxelAsEmptyFromWater) then
				local cellOccupancy = myOccupancy
				local cellMaterial = myMaterial

				-- Below code in this block is the same as the original grow tool

				local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
					cellVectorX, cellVectorY, cellVectorZ,
					selectionSize, brushShape, radiusOfRegion, true)

				if ignoreWater and cellMaterial == materialWater then
					cellMaterial = materialAir
					cellOccupancy = 0
				end

				sculptSettings.x = voxelX
				sculptSettings.y = voxelY
				sculptSettings.z = voxelZ
				sculptSettings.brushOccupancy = brushOccupancy
				sculptSettings.magnitudePercent = magnitudePercent
				sculptSettings.cellOccupancy = cellOccupancy
				sculptSettings.cellMaterial = cellMaterial
				sculptSettings.desiredMaterial = desiredMaterial

				SculptOperations.grow(sculptSettings)
			end

			if attemptToSmoothVoxel then
				local cellOccupancy = myOccupancy
				local cellMaterial = myMaterial

				local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
					cellVectorX, cellVectorY, cellVectorZ,
					selectionSize, brushShape, radiusOfRegion, false)

				if brushOccupancy >= 0.5 then
					if ignoreWater and cellMaterial == materialWater then
						cellOccupancy = 0
					end

					sculptSettings.x = voxelX
					sculptSettings.y = voxelY
					sculptSettings.z = voxelZ
					sculptSettings.brushOccupancy = brushOccupancy
					sculptSettings.magnitudePercent = magnitudePercent
					sculptSettings.cellOccupancy = cellOccupancy
					sculptSettings.cellMaterial = cellMaterial
					SculptOperations.smooth(sculptSettings)
				end
			end
		end

		-- Later we decide whether to check neighbouring voxels or stop this flood path
		-- Depending on the state of all the voxels around me
		local allMyNeighboursEmpty = true
		local allMyNeighboursFull = true

		-- Look at voxel's neighbours to get information
		do
			-- We can stop searching once we've found a non empty and a non full voxel
			local finishedSearching = false

			for xo = -1, 1, 1 do
				for yo = -1, 1, 1 do
					for zo = -1, 1, 1 do
						local checkX = voxelX + xo
						local checkY = voxelY + yo
						local checkZ = voxelZ + zo

						if checkX > 0 and checkX <= sizeX
							and checkY > 0 and checkY <= sizeY
							and checkZ > 0 and checkZ <= sizeZ
							-- Ignore the center voxel as we only care about neighbours
							and (xo ~= 0 or yo ~= 0 or zo ~= 0) then
							local cellOccupancy = readOccupancies[checkX][checkY][checkZ]

							-- If we're ignoring water and this cell is water, then treat it as a fully empty air cell
							if ignoreWater and readMaterials[checkX][checkY][checkZ] == materialWater then
								cellOccupancy = 0
							end

							-- Cell isn't completely empty, so we know we have at least one not-empty neighbour
							if cellOccupancy > 0 then
								allMyNeighboursEmpty = false
							end

							-- Cell isn't completely full, so we know we have at least one not-full neighbour
							if cellOccupancy < 1 then
								allMyNeighboursFull = false
							end

							-- No point in looking further once we've found both
							if not allMyNeighboursEmpty and not allMyNeighboursFull then
								finishedSearching = true
								break
							end
						end
					end
					if finishedSearching then
						break
					end
				end
				if finishedSearching then
					break
				end
			end
		end

		-- Floodfill into neighbours
		do
			-- Use a different stop condition for this flood path depending on tool
			local stopCondition = true

			-- For erode, stop when all neighbours are empty (can't erode empty voxels)
			-- Or me and all my neighbours are completely full (gone too deep into the terrain from the surface)
			-- For grow, stop when all my neighbours are full (can't grow full voxels)
			-- Or me and all my neighbours are completely empty (gone too far into air from the surface)
			-- Flatten uses either erode or grow depending on if we're above or below the plane
			if tool == ToolId.Erode or (tool == ToolId.Flatten and planeDifference > Constants.FLATTEN_PLANE_TOLERANCE) then
				stopCondition = allMyNeighboursEmpty
					or ((myOccupancy == 1 and not treatCurrentVoxelAsEmptyFromWater) and allMyNeighboursFull)

			elseif tool == ToolId.Grow or (tool == ToolId.Flatten and planeDifference < -Constants.FLATTEN_PLANE_TOLERANCE) then
				stopCondition = allMyNeighboursFull
					or ((myOccupancy == 0 or treatCurrentVoxelAsEmptyFromWater) and allMyNeighboursEmpty)

			elseif tool == ToolId.Flatten
				and planeDifference > -Constants.FLATTEN_PLANE_TOLERANCE
				and planeDifference < Constants.FLATTEN_PLANE_TOLERANCE then
				stopCondition = false

			elseif tool == ToolId.Smooth then
				-- Stop when either I and all my neighbours are empty
				-- Or I and all my neighbours are full
				-- Either case implies we've gone too deep away from or too high above the surface
				if myOccupancy == 0 and allMyNeighboursEmpty then
					stopCondition = true
				elseif myOccupancy == 1 and allMyNeighboursFull then
					stopCondition = true
				else
					stopCondition = false
				end
			end

			if not stopCondition then
				-- Sculpt the 3x3x3 neighbours
				for xo = -1, 1, 1 do
					for yo = -1, 1, 1 do
						for zo = -1, 1, 1 do
							local nx = voxelX + xo
							local ny = voxelY + yo
							local nz = voxelZ + zo
							if nx > 0 and nx <= sizeX
								and ny > 0 and ny <= sizeY
								and nz > 0 and nz <= sizeZ
								-- Ignore the center voxel as we only care about neighbours
								and (xo ~= 0 or yo ~= 0 or zo ~= 0) then
								local cellOccupancy = readOccupancies[nx][ny][nz]

								-- If we're ignoring water and this cell is water, then treat it as a fully empty air cell
								if ignoreWater and readMaterials[nx][ny][nz] == materialWater then
									cellOccupancy = 0
								end

								local canErodeInto = false
								local canGrowInto = false
								-- Smooth modifies every voxel around it until stopCondition is true
								local canSmoothInto = considerSmooth

								if considerErode then
									-- Can only erode voxels that are not completely empty
									canErodeInto = cellOccupancy > 0

									-- And only if both of us are not full
									-- This stops us flooding into completely full space
									if (myOccupancy == 1 and not treatCurrentVoxelAsEmptyFromWater) and cellOccupancy == 1 then
										canErodeInto = false
									end
								end

								if considerGrow then
									-- Can only grow voxels that are not completely full
									canGrowInto = cellOccupancy < 1

									-- And only if both of us are not empty
									-- This stops us flooding into completely empty space
									if (myOccupancy == 0 or treatCurrentVoxelAsEmptyFromWater) and cellOccupancy == 0 then
										canGrowInto = false
									end
								end

								if (canErodeInto or canGrowInto or canSmoothInto)
									and not seenVoxels[nx + REGION_SIZE*(ny + REGION_SIZE*nz)] then
									seenVoxels[nx + REGION_SIZE*(ny + REGION_SIZE*nz)] = true
									table.insert(voxelsToConsider, {nx, ny, nz})
								end
							end
						end
					end
				end
			end
		end
	end
end
