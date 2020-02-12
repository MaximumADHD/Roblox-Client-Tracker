local OperationHelper = require(script.Parent.OperationHelper)

local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

local function grow(options)
	local readMaterials, readOccupancies = options.readMaterials, options.readOccupancies
	local writeMaterials, writeOccupancies = options.writeMaterials, options.writeOccupancies
	local voxelX, voxelY, voxelZ = options.x, options.y, options.z
	local sizeX, sizeY, sizeZ = options.sizeX, options.sizeY, options.sizeZ
	local brushOccupancy = options.brushOccupancy
	local magnitudePercent = options.magnitudePercent
	local cellOccupancy = options.cellOccupancy
	local strength = options.strength
	local ignoreWater = options.ignoreWater
	local cellMaterial = options.cellMaterial
	local desiredMaterial = options.desiredMaterial
	local maxOccupancy = options.maxOccupancy
	local autoMaterial = options.autoMaterial

	if cellOccupancy == 1 or brushOccupancy < 0.5 then
		return
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

	desiredOccupancy = math.min(desiredOccupancy, maxOccupancy)

	if cellMaterial == materialAir and desiredOccupancy > 0 then
		local targetMaterial = desiredMaterial
		if autoMaterial then
			targetMaterial = OperationHelper.getMaterialForAutoMaterial(readMaterials,
				voxelX, voxelY, voxelZ,
				sizeX, sizeY, sizeZ,
				cellMaterial)
		end
		writeMaterials[voxelX][voxelY][voxelZ] = targetMaterial
	end

	if desiredOccupancy ~= cellOccupancy then
		writeOccupancies[voxelX][voxelY][voxelZ] = desiredOccupancy
	end
end

local function erode(options)
	local readMaterials, readOccupancies = options.readMaterials, options.readOccupancies
	local writeMaterials, writeOccupancies = options.writeMaterials, options.writeOccupancies
	local voxelX, voxelY, voxelZ = options.x, options.y, options.z
	local sizeX, sizeY, sizeZ = options.sizeX, options.sizeY, options.sizeZ
	local brushOccupancy = options.brushOccupancy
	local magnitudePercent = options.magnitudePercent
	local cellOccupancy = options.cellOccupancy
	local strength = options.strength
	local ignoreWater = options.ignoreWater
	local airFillerMaterial = options.airFillerMaterial
	local maxOccupancy = options.maxOccupancy

	if cellOccupancy == 0 or brushOccupancy <= 0.5 then
		return
	end

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

	desiredOccupancy = math.min(desiredOccupancy, maxOccupancy)

	if desiredOccupancy <= OperationHelper.one256th then
		writeOccupancies[voxelX][voxelY][voxelZ] = airFillerMaterial == materialWater and 1 or 0
		writeMaterials[voxelX][voxelY][voxelZ] = airFillerMaterial
	else
		writeOccupancies[voxelX][voxelY][voxelZ] = desiredOccupancy
	end
end

local function smooth(options)
	local readMaterials, readOccupancies = options.readMaterials, options.readOccupancies
	local writeMaterials, writeOccupancies = options.writeMaterials, options.writeOccupancies
	local voxelX, voxelY, voxelZ = options.x, options.y, options.z
	local sizeX, sizeY, sizeZ = options.sizeX, options.sizeY, options.sizeZ
	local brushOccupancy = options.brushOccupancy
	local magnitudePercent = options.magnitudePercent
	local cellOccupancy = options.cellOccupancy
	local cellMaterial = options.cellMaterial
	local strength = options.strength
	local filterSize = options.filterSize

	if brushOccupancy < 0.5 then
		return
	end

	local neighbourOccupanciesSum = 0
	local totalNeighbours = 0
	local hasFullNeighbour = false
	local hasEmptyNeighbour = false

	local cellStartMaterial = readMaterials[voxelX][voxelY][voxelZ]
	local cellStartsEmpty = cellStartMaterial == materialAir or cellOccupancy <= 0

	for xo = -filterSize, filterSize, filterSize do
		for yo = -filterSize, filterSize, filterSize do
			for zo = -filterSize, filterSize, filterSize do
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

					-- This is very important. It allows cells to fully diminish or fully fill by lying to the algorithm
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

	-- If this voxel won't be be changing occupancy, then we don't need to try to change its occupancy or material
	local targetOccupancy = math.max(0, math.min(1, cellOccupancy + difference))
	if targetOccupancy ~= cellOccupancy then
		if cellStartsEmpty and targetOccupancy > 0 then
			-- Cell is becoming non-empty so give it a material
			writeMaterials[voxelX][voxelY][voxelZ] = OperationHelper.getMaterialForAutoMaterial(readMaterials,
				voxelX, voxelY, voxelZ,
				sizeX, sizeY, sizeZ,
				cellMaterial)

		elseif targetOccupancy <= 0 then
			-- Cell is becoming empty, set it to air
			writeMaterials[voxelX][voxelY][voxelZ] = materialAir
		end
		-- Else oldOccupancy > 0 and targetOccupancy > 0, leave its material unchanged

		writeOccupancies[voxelX][voxelY][voxelZ] = targetOccupancy
	end
end

return {
	grow = grow,
	erode = erode,
	smooth = smooth,
}
