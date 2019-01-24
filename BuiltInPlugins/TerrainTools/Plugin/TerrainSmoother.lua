--

local module = {}

module.FirstTimeSetup = function(theMouse, thePluginGui, theContentFrame)
	local terrain = game.Workspace.Terrain

	local function getCell(list, x, y, z)
		return list and list[x] and list[x][y] and list[x][y][z]
	end

	local function extendRange(x)		--This is very important. It allows cells to fully diminish or fully fill by lying to the algorithm
		return x * 1.5 - .25
	end

	function getNeighborOccupanciesFast(list, x, y, z, includeSelf)
		local fullNeighbor = false
		local emptyNeighbor = false
		local neighborOccupancies = includeSelf and extendRange(getCell(list, x, y, z)) or 0
		local totalNeighbors = includeSelf and 1 or 0
		for axis = 1, 3 do
			for offset = -1, 1, 2 do
				local neighbor = nil
				if axis == 1 then
					neighbor = list[x + offset] and list[x + offset][y][z]
				elseif axis == 2 then
					neighbor = list[x][y + offset] and list[x][y + offset][z]
				elseif axis == 3 then
					neighbor = list[x][y][z + offset]
				end
				if neighbor then
					if neighbor >= 1 then
						fullNeighbor = true
					end
					if neighbor <= 0 then
						emptyNeighbor = true
					end
					neighbor = extendRange(neighbor)
					totalNeighbors = totalNeighbors + 1
					neighborOccupancies = neighborOccupancies + neighbor
				end
			end
		end
		return neighborOccupancies / (totalNeighbors > 0 and totalNeighbors or extendRange(getCell(list, x, y, z))), fullNeighbor, emptyNeighbor
	end

	function getNeighborOccupancies(list, x, y, z, includeSelf, range)
		local fullNeighbor = false
		local emptyNeighbor = false
		local range = range or 1
		local neighborOccupancies = 0
		local totalNeighbors = 0
		local sqrt = math.sqrt
		for ix = -range, range do
			for iy = -range, range do
				for iz = -range, range do
					if includeSelf or not (ix == 0 and iy == 0 and iz == 0) then
						local neighbor = getCell(list, x + ix, y + iy, z + iz)
						if neighbor then
							local distanceScale = 1 - (sqrt(ix * ix + iy * iy + iz * iz) / (range * 2))
							if neighbor >= 1 then
								fullNeighbor = true
							end
							if neighbor <= 0 then
								emptyNeighbor = true
							end
							neighbor = extendRange(neighbor)
							totalNeighbors = totalNeighbors + 1 * distanceScale
							neighborOccupancies = neighborOccupancies + neighbor * distanceScale
						end
					end
				end
			end
		end
		return neighborOccupancies / (totalNeighbors > 0 and totalNeighbors or extendRange(getCell(list, x, y, z))), fullNeighbor, emptyNeighbor
	end


	function operation(centerPoint, materials, occupancies, resolution, selectionSize, strength, desiredMaterial, brushType, minBounds, maxBounds)
		local region = Region3.new(minBounds, maxBounds)
		local readMaterials, readOccupancies = terrain:ReadVoxels(region, resolution)

		local radius = selectionSize * .5 * resolution

		local materialAir = Enum.Material.Air

		for ix, vx in ipairs(readOccupancies) do
			local cellVectorX = minBounds.x + (ix - .5) * resolution - centerPoint.x

			for iy, vy in pairs(vx) do
				local cellVectorY = minBounds.y + (iy - .5) * resolution - centerPoint.y

				for iz, cellOccupancy in pairs(vy) do
					local cellVectorZ = minBounds.z + (iz - .5) * resolution - centerPoint.z

					local cellMaterial = materials[ix][iy][iz]
					local distance = math.sqrt(cellVectorX * cellVectorX + cellVectorY * cellVectorY + cellVectorZ * cellVectorZ)
		
					local magnitudePercent = 1
					local brushOccupancy = 1
					if brushType == 'Sphere' then
						magnitudePercent = math.cos(math.min(1, distance / (radius + resolution * .5)) * math.pi * .5)
						brushOccupancy = math.max(0, math.min(1, (radius + .5 * resolution - distance) / resolution))
					elseif brushType == 'Box' then
						--leave as default
					end

					if brushOccupancy >= .5 then
						local neighborOccupancies, fullNeighbor, emptyNeighbor = getNeighborOccupancies(readOccupancies, ix, iy, iz, true, 1)
						local difference = (neighborOccupancies - cellOccupancy) * (strength + .1) * .5 * brushOccupancy * magnitudePercent

						if not fullNeighbor and difference > 0 then
							difference = 0
						elseif not emptyNeighbor and difference < 0 then
							difference = 0
						end

						if readMaterials[ix][iy][iz] == materialAir or cellOccupancy <= 0 and difference > 0 then
							materials[ix][iy][iz] = desiredMaterial
						end
						if difference ~= 0 then
							occupancies[ix][iy][iz] = math.max(0, math.min(1, cellOccupancy + difference))
						end
					end
				end
			end
		end
	end

	module.BrushOperation = operation

end

return module

