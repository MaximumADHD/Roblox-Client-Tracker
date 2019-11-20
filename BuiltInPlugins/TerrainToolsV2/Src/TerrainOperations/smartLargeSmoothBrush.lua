local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape

local materialAir = Enum.Material.Air

--[[
	Perform a floodfill from the center voxel, to find surface voxels that can be smoothed
	Should only be used for larger brush sizes due to the overheard from the floodfill algorithm

dict options =
	Vector3 centerPoint (after pivot has been applied elsewhere)
	number selectionSize
	number strength
	Material desiredMaterial
	BrushShape brushShape
	number filterSize = 1
]]
return function(options, minBounds, maxBounds, readMaterials, readOccupancies, writeMaterials, writeOccupancies)
	local centerPoint = options.centerPoint
	local selectionSize = options.selectionSize
	local strength = options.strength
	local desiredMaterial = options.desiredMaterial
	local brushShape = options.brushShape

	-- TODO: There's no UI to configure this
	local filterSize = options.filterSize or 1

	local radius = selectionSize * 0.5 * Constants.VOXEL_RESOLUTION

	local centerX = centerPoint.x
	local centerY = centerPoint.y
	local centerZ = centerPoint.z

	local minBoundsX = minBounds.x
	local minBoundsY = minBounds.y
	local minBoundsZ = minBounds.z

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

	-- Continuously pop from the to-consider list until it's empty
	while #voxelsToConsider > 0 do
		local voxel = table.remove(voxelsToConsider)
		local voxelX, voxelY, voxelZ = voxel[1], voxel[2], voxel[3]

		local myOccupancy = readOccupancies[voxelX][voxelY][voxelZ]

		-- Smooth the current voxel
		do
			local cellOccupancy = myOccupancy

			-- Below code in this block is the same as the rewritten smooth tool
			local cellVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION) - centerX
			local cellVectorY = minBoundsY + ((voxelY - 0.5) * Constants.VOXEL_RESOLUTION) - centerY
			local cellVectorZ = minBoundsZ + ((voxelZ - 0.5) * Constants.VOXEL_RESOLUTION) - centerZ

			local magnitudePercent = 1
			local brushOccupancy = 1
			if brushShape == BrushShape.Sphere or brushShape == BrushShape.Cylinder then
				local distance = math.sqrt(cellVectorX * cellVectorX
					+ cellVectorY * cellVectorY
					+ cellVectorZ * cellVectorZ)
				magnitudePercent = math.cos(math.min(1, distance / (radius + Constants.VOXEL_RESOLUTION * 0.5))
					* math.pi * 0.5)
				brushOccupancy = math.max(0, math.min(1,
					(radius + 0.5 * Constants.VOXEL_RESOLUTION - distance) / Constants.VOXEL_RESOLUTION))
			end

			if brushOccupancy >= 0.5 then
				local neighbourOccupanciesSum = 0
				local totalNeighbours = 0
				local hasFullNeighbour = false
				local hasEmptyNeighbour = false

				for xo = -filterSize, filterSize, 1 do
					for yo = -filterSize, filterSize, 1 do
						for zo = -filterSize, filterSize, 1 do
							local checkX = voxelX + xo
							local checkY = voxelY + yo
							local checkZ = voxelZ + zo

							if checkX > 0 and checkX <= sizeX
								and checkY > 0 and checkY <= sizeY
								and checkZ > 0 and checkZ <= sizeZ then
								local occupancy = readOccupancies[checkX][checkY][checkZ]
								local distanceScale = 1 - (math.sqrt(xo * xo + yo * yo + zo * zo) / (filterSize * 2))

								if occupancy >= 1 then
									hasFullNeighbour = true
								end

								if occupancy <= 0 then
									hasEmptyNeighbour = true
								end

								--This is very important. It allows cells to fully diminish or fully fill by lying to the algorithm
								occupancy = occupancy * 1.5 - 0.25

								totalNeighbours = totalNeighbours + 1 * distanceScale
								neighbourOccupanciesSum = neighbourOccupanciesSum + occupancy * distanceScale
							end
						end
					end
				end

				local neighbourOccupancies = neighbourOccupanciesSum / (totalNeighbours > 0 and totalNeighbours
					or (cellOccupancy * 1.5 - 0.25))

				local difference = (neighbourOccupancies - cellOccupancy)
					* (strength + 0.1)
					* 0.5
					* brushOccupancy
					* magnitudePercent

				if not hasFullNeighbour and difference > 0 then
					difference = 0
				elseif not hasEmptyNeighbour and difference < 0 then
					difference = 0
				end

				if readMaterials[voxelX][voxelY][voxelZ] == materialAir or cellOccupancy <= 0 and difference > 0 then
					writeMaterials[voxelX][voxelY][voxelZ] = desiredMaterial
				end

				if difference ~= 0 then
					writeOccupancies[voxelX][voxelY][voxelZ] = math.max(0, math.min(1, cellOccupancy + difference))
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
			local continueCondition = true

			-- Stop when either I and all my neighbours are empty
			-- Or I and all my neighbours are full
			-- Either case implies we've gone too deep away from or too high above the surface
			if myOccupancy == 0 and allMyNeighboursEmpty then
				continueCondition = false
			elseif myOccupancy == 1 and allMyNeighboursFull then
				continueCondition = false
			end

			if continueCondition then
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
								if not seenVoxels[nx + REGION_SIZE*(ny + REGION_SIZE*nz)] then
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
