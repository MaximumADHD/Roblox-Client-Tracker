local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape

local materialAir = Enum.Material.Air

--[[
	Perform a smooth operation for the given brush options

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

	for voxelX, vx in ipairs(readOccupancies) do
		local cellVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION) - centerX

		for voxelY, vy in ipairs(vx) do
			local cellVectorY = minBoundsY + (voxelY - 0.5) * Constants.VOXEL_RESOLUTION - centerY

			for voxelZ, cellOccupancy in ipairs(vy) do
				local cellVectorZ = minBoundsZ + (voxelZ - 0.5) * Constants.VOXEL_RESOLUTION - centerZ

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
		end
	end
end
