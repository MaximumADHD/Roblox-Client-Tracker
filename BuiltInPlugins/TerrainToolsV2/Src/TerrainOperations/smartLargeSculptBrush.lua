local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local OperationHelper = require(script.Parent.OperationHelper)

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

--[[
	Brush for grow, erode and flatten
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
	local nearMaterial = nil

	local flattenMode = opSet.flattenMode
	local planePositionY = opSet.planePositionY

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

	-- Erode and grow decide whether to flood into a voxel differently
	-- We don't want to use the erode logic when in the grow tool etc.
	local considerErode = tool == ToolId.Erode or tool == ToolId.Flatten
	local considerGrow = tool == ToolId.Grow or tool == ToolId.Flatten

	-- Continuously pop from the to-consider list until it's empty
	while #voxelsToConsider > 0 do
		local voxel = table.remove(voxelsToConsider)
		local voxelX, voxelY, voxelZ = voxel[1], voxel[2], voxel[3]

		local myOccupancy = readOccupancies[voxelX][voxelY][voxelZ]
		local myMaterial = readMaterials[voxelX][voxelY][voxelZ]

		local treatCurrentVoxelAsEmptyFromWater = ignoreWater and myMaterial == materialWater

		local differenceY = minBoundsY + (voxelY - 0.5) * Constants.VOXEL_RESOLUTION - planePositionY

		-- Grow or erode the current voxel
		do
			-- Whether we erode or grow a voxel depends on which tool we're using, or whether we're above/below the target plane
			local attemptToErodeVoxel = tool == ToolId.Erode
			local attemptToGrowVoxel = tool == ToolId.Grow

			-- Flatten tool does either a grow or erode depending on voxel position and flatten mode
			if tool == ToolId.Flatten then
				-- Do an erode if the voxel is above the target plane, and we're not growing up
				if differenceY > 0.1 and flattenMode ~= FlattenMode.Grow then
					attemptToErodeVoxel = true

				-- Do a grow if the voxel is below the target plane, and we're not eroding down
				elseif differenceY < -0.1 and flattenMode ~= FlattenMode.Erode then
					attemptToGrowVoxel = true
				end
			end

			assert(not (attemptToErodeVoxel and attemptToGrowVoxel), "Can't erode and grow the same voxel")

			-- If the voxel we're looking at can erode
			if attemptToErodeVoxel and (myOccupancy > 0 and not treatCurrentVoxelAsEmptyFromWater) then
				local cellOccupancy = myOccupancy
				local cellMaterial = myMaterial

				-- Below code in this block is the same as the original erode tool
				local cellVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION) - centerX
				local cellVectorY = minBoundsY + ((voxelY - 0.5) * Constants.VOXEL_RESOLUTION) - centerY
				local cellVectorZ = minBoundsZ + ((voxelZ - 0.5) * Constants.VOXEL_RESOLUTION) - centerZ

				local magnitudePercent = 1
				local brushOccupancy = 1

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

				if ignoreWater and cellMaterial == materialWater then
					cellOccupancy = 0
				end

				airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir

				local desiredOccupancy = cellOccupancy
				local emptyNeighbor = false
				local neighborOccupancies = 6

				for i = 1, 6, 1 do
					local nx = voxelX + OperationHelper.xOffset[i]
					local ny = voxelY + OperationHelper.yOffset[i]
					local nz = voxelZ + OperationHelper.zOffset[i]

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
					writeOccupancies[voxelX][voxelY][voxelZ] = airFillerMaterial == materialWater and 1 or 0
					writeMaterials[voxelX][voxelY][voxelZ] = airFillerMaterial
				else
					writeOccupancies[voxelX][voxelY][voxelZ] = desiredOccupancy
				end
			end

			-- If the voxel we're looking at can grow
			if attemptToGrowVoxel and (myOccupancy < 1 or treatCurrentVoxelAsEmptyFromWater) then
				local cellOccupancy = myOccupancy
				local cellMaterial = myMaterial

				-- Below code in this block is the same as the original grow tool
				local cellVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION) - centerX
				local cellVectorY = minBoundsY + ((voxelY - 0.5) * Constants.VOXEL_RESOLUTION) - centerY
				local cellVectorZ = minBoundsZ + ((voxelZ - 0.5) * Constants.VOXEL_RESOLUTION) - centerZ

				local magnitudePercent = 1
				local brushOccupancy = 1

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

				local desiredOccupancy = cellOccupancy
				local fullNeighbor = false
				local totalNeighbors = 0
				local neighborOccupancies = 0

				for i = 1, 6, 1 do
					local nx = voxelX + OperationHelper.xOffset[i]
					local ny = voxelY + OperationHelper.yOffset[i]
					local nz = voxelZ + OperationHelper.zOffset[i]

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
					writeMaterials[voxelX][voxelY][voxelZ] = desiredMaterial
				end

				if desiredOccupancy ~= cellOccupancy then
					writeOccupancies[voxelX][voxelY][voxelZ] = desiredOccupancy
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
			-- For erode, stop when all neighbours are empty (can't erode empty voxels)
			-- Or me and all my neighbours are completely full (gone too deep into the terrain from the surface)
			-- For grow, stop when all my neighbours are full (can't grow full voxels)
			-- Or me and all my neighbours are completely empty (gone too far into air from the surface)
			-- Flatten uses either erode or grow depending on if we're above or below the plane
			local stopCondition = true
			if tool == ToolId.Erode or (tool == ToolId.Flatten and differenceY > 0.1) then
				stopCondition = allMyNeighboursEmpty
					or ((myOccupancy == 1 and not treatCurrentVoxelAsEmptyFromWater) and allMyNeighboursFull)

			elseif tool == ToolId.Grow or (tool == ToolId.Flatten and differenceY < -0.1) then
				stopCondition = allMyNeighboursFull
					or ((myOccupancy == 0 or treatCurrentVoxelAsEmptyFromWater) and allMyNeighboursEmpty)

			elseif tool == ToolId.Flatten and differenceY > -0.1 and differenceY < 0.1 then
				stopCondition = false
			end

			if not stopCondition then
				-- Erode or grow into the 3x3x3 neighbours
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

								if (canErodeInto or canGrowInto) and not seenVoxels[nx + REGION_SIZE*(ny + REGION_SIZE*nz)] then
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
