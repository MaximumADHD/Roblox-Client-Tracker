local Plugin = script.Parent.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local ToolId = TerrainEnums.ToolId

local applyPivot = require(Plugin.Src.Util.applyPivot)

local Smoother = require(script.Parent.TerrainSmoother)

-- Air and water materials are frequently referenced in terrain brush
local materialAir = Enum.Material.Air
local materialWater = Enum.Material.Water

local xOffset = {1, -1, 0,  0, 0,  0}
local yOffset = {0,  0, 1, -1, 0,  0}
local zOffset = {0,  0, 0,  0, 1, -1}

-- This should later be replaced with 0 once smooth terrain doesn't approximate 1/256 to 0.
-- This is causing small occupancies to become air
local one256th = 1 / 256

local function clampDownToVoxel(p)
	return math.floor(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

local function clampUpToVoxel(p)
	return math.ceil(p / Constants.VOXEL_RESOLUTION) * Constants.VOXEL_RESOLUTION
end

--[[
dict opSet =
	ToolId currentTool

	BrushShape brushShape
	FlattenMode flattenMode
	PivotType pivot

	number cursorSize
	number cursorHeight
	Vector3 centerPoint
	number strength

	bool autoMaterial
	Material material

	bool ignoreWater
	number planePositionY
]]
return function (terrain, opSet)
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
		clampDownToVoxel(centerPoint.x - radius),
		clampDownToVoxel(centerPoint.y - (height * 0.5)),
		clampDownToVoxel(centerPoint.z - radius))
	local maxBounds = Vector3.new(
		clampUpToVoxel(centerPoint.x + radius),
		clampUpToVoxel(centerPoint.y + (height * 0.5)),
		clampUpToVoxel(centerPoint.z + radius))

	local region = Region3.new(minBounds, maxBounds)
	local materials, occupancies = terrain:ReadVoxels(region, Constants.VOXEL_RESOLUTION)

	local nearMaterial = nil

	-- Smooth logic is handled in a different module
	if tool == ToolId.Smooth then
		if autoMaterial then
			local middle = materials[math.ceil(#materials * 0.5)]
			if middle then
				middle = middle[math.ceil(#middle * 0.5)]
				if middle then
					middle = middle[math.ceil(#middle * 0.5)]
					if middle and middle ~= materialAir and middle ~= materialWater then
						nearMaterial = middle
						desiredMaterial = autoMaterial and nearMaterial or desiredMaterial
					end
				end
			end
		end

		Smoother.BrushOperation(centerPoint, materials, occupancies,
			Constants.VOXEL_RESOLUTION, selectionSize, strength,
			desiredMaterial, brushShape,
			minBounds, maxBounds)

		-- Smoother module modifiers materials and occupancies
		-- So just apply to terrain and exit function here because smoothing is finished
		terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, materials, occupancies)
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
		-- TODO: Improve performance
		-- Perhaps iterating from size.Y down to 0 could find something faster?
		-- Then break once we've found the highest water
		for _, vx in ipairs(materials) do
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
	end

	local sizeX = table.getn(occupancies)
	local sizeY = table.getn(occupancies[1])
	local sizeZ = table.getn(occupancies[1][1])

	local radiusOfRegion = (maxBoundsX - minBoundsX) * 0.5

	-- These are calculated for each cell in the nested for loop
	-- Brought up to this level so that erode and grow can use them
	local cellMaterial
	local cellOccupancy
	local magnitudePercent
	local brushOccupancy

	local function erode(ix, iy, iz)
		if cellMaterial ~= materialAir and brushOccupancy > 0.5 then
			local desiredOccupancy = cellOccupancy
			local emptyNeighbor = false
			local neighborOccupancies = 6
			for i = 1, 6, 1 do
				local nx = ix + xOffset[i]
				local ny = iy + yOffset[i]
				local nz = iz + zOffset[i]
				if nx > 0 and nx <= sizeX
					and ny > 0 and ny <= sizeY
					and nz > 0 and nz <= sizeZ then
					local neighbor = occupancies[nx][ny][nz]
					local neighborMaterial = materials[nx][ny][nz]
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
			if desiredOccupancy <= one256th then
				occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
				materials[ix][iy][iz] = airFillerMaterial
			else
				occupancies[ix][iy][iz] = desiredOccupancy
			end
		end
	end

	local function grow(ix, iy, iz)
		if brushOccupancy >= 0.5 then
			local desiredOccupancy = cellOccupancy
			local fullNeighbor = false
			local totalNeighbors = 0
			local neighborOccupancies = 0
			for i = 1, 6, 1 do
				local nx = ix + xOffset[i]
				local ny = iy + yOffset[i]
				local nz = iz + zOffset[i]
				if nx > 0 and nx <= sizeX
					and ny > 0 and ny <= sizeY
					and nz > 0 and nz <= sizeZ then
					local neighbor = occupancies[nx][ny][nz]
					local neighborMaterial = materials[nx][ny][nz]
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
				materials[ix][iy][iz] = desiredMaterial
			end
			if desiredOccupancy ~= cellOccupancy then
				occupancies[ix][iy][iz] = desiredOccupancy
			end
		end
	end

	for ix, vx in ipairs(occupancies) do
		local cellVectorX = minBoundsX + ((ix - 0.5) * Constants.VOXEL_RESOLUTION) - centerX

		for iy, vy in ipairs(vx) do
			local cellVectorY = minBoundsY + (iy - 0.5) * Constants.VOXEL_RESOLUTION - centerY
			local differenceY = minBoundsY + (iy - 0.5) * Constants.VOXEL_RESOLUTION - planePositionY

			for iz, co in ipairs(vy) do
				local cellVectorZ = minBoundsZ + (iz - 0.5) * Constants.VOXEL_RESOLUTION - centerZ

				cellOccupancy = co
				cellMaterial = materials[ix][iy][iz]
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
						occupancies[ix][iy][iz] = brushOccupancy
					end
					if brushOccupancy >= 0.5 and cellMaterial == materialAir then
						materials[ix][iy][iz] = desiredMaterial
					end

				elseif tool == ToolId.Subtract then
					if cellMaterial ~= materialAir then
						local desiredOccupancy = 1 - brushOccupancy
						if desiredOccupancy < cellOccupancy then
							if desiredOccupancy <= one256th then
								occupancies[ix][iy][iz] = airFillerMaterial == materialWater and 1 or 0
								materials[ix][iy][iz] = airFillerMaterial
							else
								occupancies[ix][iy][iz] = desiredOccupancy
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
						materials[ix][iy][iz] = desiredMaterial
					end
				end
			end
		end
	end

	terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, materials, occupancies)
end
