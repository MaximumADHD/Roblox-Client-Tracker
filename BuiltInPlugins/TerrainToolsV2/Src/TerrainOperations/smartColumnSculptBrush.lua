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
	Brush for flattening
	This brush spreads out in the x and z directions, ultimately processing columns of voxels rather
	than just individual voxels. This allows for fine-tuned control over how the flattening process occurs
	with regards to existing terrain features.
]]
return function(opSet, minBounds, maxBounds, readMaterials, readOccupancies, writeMaterials, writeOccupancies)
	local tool = opSet.currentTool
	local brushShape = opSet.brushShape

	local selectionSize = opSet.cursorSize
	local height = opSet.cursorHeight * Constants.VOXEL_RESOLUTION

	local centerPoint = applyPivot(opSet.pivot, opSet.centerPoint, height)

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

	local sizeX = #readOccupancies
	local sizeY = #readOccupancies[1]
	local sizeZ = #readOccupancies[1][1]

	local planeNormal = opSet.planeNormal
	local planePoint = opSet.planePoint

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

	--[[
		The following approach differs from previous approaches to processing voxels.
		As terrain is typically vertical in nature, the terrain is split up into many
		different columns which are each processed individually. This tool is mainly meant
		for use with the flatten tool.
	]]
	for voxelX = 1, sizeX do
		local worldVectorX = minBoundsX + ((voxelX - 0.5) * Constants.VOXEL_RESOLUTION)
		local cellVectorX = worldVectorX - centerX

		for voxelZ = 1, sizeZ do
			local worldVectorZ = minBoundsZ + ((voxelZ - 0.5) * Constants.VOXEL_RESOLUTION)
			local cellVectorZ = worldVectorZ - centerZ

			if tool == ToolId.Flatten then
				-- In order to get a goal for the flatten operation, get a desired occupancy at a certain voxel
				local initialVoxelY, desiredOccupancy = OperationHelper.getDesiredOccupancy(
					planePoint, planeNormal, voxelX, voxelZ, minBoundsY)
				local intersectsPlane = true

				sculptSettings.x = voxelX
				sculptSettings.z = voxelZ

				-- Make sure the initial voxel is within the provided bounds of read occupancies
				if initialVoxelY < 1 then
					initialVoxelY = 1
					intersectsPlane = false
				end

				if initialVoxelY > sizeY then
					initialVoxelY = sizeY
					intersectsPlane = false
				end

				-- If allowed to erode, then do so
				if flattenMode == FlattenMode.Erode or flattenMode == FlattenMode.Both then
					for voxelY = initialVoxelY + 1, sizeY do
						local cellOccupancy = 0
						local cellMaterial = materialAir
						local stopCondition = false

						local worldVectorY = minBoundsY + ((voxelY - 0.5) * Constants.VOXEL_RESOLUTION)
						local cellVectorY = worldVectorY - centerY
						local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
							cellVectorX, cellVectorY, cellVectorZ,
							selectionSize, brushShape, radiusOfRegion, true)

						-- If outside of the brush then stop iterating
						if brushOccupancy == 0 then
							break
						end

						-- Decide which voxel to stop at and erode depending on the selected mode
						if voxelY ~= sizeY then
							cellOccupancy = readOccupancies[voxelX][voxelY + 1][voxelZ]
							cellMaterial = readMaterials[voxelX][voxelY + 1][voxelZ]
							stopCondition = (cellOccupancy == 0 or (ignoreWater and cellMaterial == materialWater))
						end

						-- If a stop condition has been reached, or carving is enabled, erode
						if stopCondition then
							cellOccupancy = readOccupancies[voxelX][voxelY][voxelZ]
							cellMaterial = readMaterials[voxelX][voxelY][voxelZ]

							if ignoreWater and cellMaterial == materialWater then
								cellMaterial = materialAir
								cellOccupancy = 0
							end

							airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir
							
							sculptSettings.y = voxelY
							sculptSettings.brushOccupancy = brushOccupancy
							sculptSettings.magnitudePercent = magnitudePercent
							sculptSettings.cellOccupancy = cellOccupancy
							sculptSettings.cellMaterial = cellMaterial
							sculptSettings.airFillerMaterial = airFillerMaterial

							SculptOperations.erode(sculptSettings)

							break
						end
					end
				end

				-- If allowed to grow, then do so
				if flattenMode == FlattenMode.Grow or flattenMode == FlattenMode.Both then
					-- Cycle through the column, but in the downwards direction
					for voxelY = initialVoxelY - 1, 1, -1 do
						local cellOccupancy = 0
						local cellMaterial = materialAir
						local stopCondition = false

						local worldVectorY = minBoundsY + ((voxelY - 0.5) * Constants.VOXEL_RESOLUTION)
						local cellVectorY = worldVectorY - centerY
						local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
							cellVectorX, cellVectorY, cellVectorZ,
							selectionSize, brushShape, radiusOfRegion, true)

						-- If outside of the brush then stop iterating
						if brushOccupancy == 0 then
							break
						end

						-- If voxel is outside the outermost ring, check whether the next voxel is empty
						if voxelY > 1 then
							cellOccupancy = readOccupancies[voxelX][voxelY - 1][voxelZ]
							cellMaterial = readMaterials[voxelX][voxelY - 1][voxelZ]
							stopCondition = (cellOccupancy == 1 and cellMaterial ~= materialWater)
							stopCondition = stopCondition or (not ignoreWater and cellMaterial == materialWater)
						end

						-- If the stop condition has been reached, or extending is enabled, grow
						if stopCondition then
							local cellOccupancy = readOccupancies[voxelX][voxelY][voxelZ]
							local cellMaterial = readMaterials[voxelX][voxelY][voxelZ]

							if ignoreWater and cellMaterial == materialWater then
								cellMaterial = materialAir
								cellOccupancy = 0
							end

							airFillerMaterial = waterHeight >= voxelY and airFillerMaterial or materialAir

							sculptSettings.y = voxelY
							sculptSettings.brushOccupancy = brushOccupancy
							sculptSettings.magnitudePercent = magnitudePercent
							sculptSettings.cellOccupancy = cellOccupancy
							sculptSettings.cellMaterial = cellMaterial
							sculptSettings.airFillerMaterial = airFillerMaterial

							SculptOperations.grow(sculptSettings)

							break
						end
					end
				end

				-- Set the voxelY to the height where the plane would intersect
				local voxelY = initialVoxelY

				-- If the plane intersection is within the confines of the selection then perform the operation
				if intersectsPlane then
					local cellOccupancy = readOccupancies[voxelX][initialVoxelY][voxelZ]
					local cellMaterial = readMaterials[voxelX][initialVoxelY][voxelZ]

					local worldVectorY = minBoundsY + ((initialVoxelY - 0.5) * Constants.VOXEL_RESOLUTION)
					local cellVectorY = worldVectorY - centerY

					local brushOccupancy, magnitudePercent = OperationHelper.calculateBrushPowerForCell(
						cellVectorX, cellVectorY, cellVectorZ,
						selectionSize, brushShape, radiusOfRegion, true)

					sculptSettings.y = voxelY
					sculptSettings.brushOccupancy = brushOccupancy
					sculptSettings.magnitudePercent = magnitudePercent
					sculptSettings.cellOccupancy = cellOccupancy
					sculptSettings.cellMaterial = cellMaterial
					sculptSettings.airFillerMaterial = airFillerMaterial
					
					-- Check whether, or not the cell is ready to be manipulated
					local completeErode = (flattenMode == FlattenMode.Grow) or cellOccupancy < 1 
					if voxelY + 1 <= sizeY and not completeErode then
						local cellUpOccupancy = readOccupancies[voxelX][voxelY + 1][voxelZ]
						local cellUpMaterial = readMaterials[voxelX][voxelY + 1][voxelZ]
						completeErode = cellUpOccupancy == 0 or (ignoreWater and cellUpMaterial == materialWater)
					end

					local completeGrow = (flattenMode == FlattenMode.Erode) or cellOccupancy > 0
					if voxelY - 1 >= 1 and not completeGrow then
						local cellDownOccupancy = readOccupancies[voxelX][voxelY - 1][voxelZ]
						local cellDownMaterial = readMaterials[voxelX][voxelY - 1][voxelZ]
						completeGrow = (cellDownOccupancy == 1 and cellDownMaterial ~= materialWater) or
							(not ignoreWater and cellDownMaterial == materialWater)
					end

					-- Observe whether the terrain is ready to be manipulated and bring the occupancy closer
					-- to the target occupancy
					local dampen = 0.25
					if completeGrow and completeErode then
						if (flattenMode == FlattenMode.Erode or flattenMode == FlattenMode.Both) and cellOccupancy > desiredOccupancy then
							local processedOccupancy = cellOccupancy - strength * dampen * brushOccupancy * magnitudePercent
							writeOccupancies[voxelX][voxelY][voxelZ] = math.max(processedOccupancy, desiredOccupancy)
						end
					
						if (flattenMode == FlattenMode.Grow or flattenMode == FlattenMode.Both) and cellOccupancy < desiredOccupancy then
							local processedOccupancy = cellOccupancy + strength * dampen * brushOccupancy * magnitudePercent
							writeOccupancies[voxelX][voxelY][voxelZ] = math.min(processedOccupancy, desiredOccupancy) 
						end
					end
				end
			end
		end
	end
end
