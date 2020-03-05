local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local TerrainGenerator = require(Plugin.Src.TerrainInterfaces.TerrainGenerator)

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local CONVERT_MATERIAL_MAX_SHAPES_PER_STEP = 100
local CONVERT_MATERIAL_MAX_FILL_CALLS_PER_STEP = 100

local CONVERT_MATERIAL_WAYPOINT = "ConvertPart_Material"
local CONVERT_BIOME_WAYPOINT = "ConvertPart_Biome"

local DEBUG_LOG_WORK_TIME = false

--[[
Expects
	data.targetInstances : { [Instance]: true } - Set of instances
Outputs
	data.shapes : { {Shape, CFrame center, Vector3 size, Instance} } - Array of shapes to fill
	data.totalShapes : number - Same as #data.shapes
]]
local GetTargetShapes = {
	name = "GetTargetShapes",

	onStep = function(data)
		local shapes = {}

		for instance in pairs(data.targetInstances) do
			local shape, cframe, size = PartConverterUtil.getPartRenderedShape(instance)
			local shapeStruct = {
				shape, cframe, size, instance
			}
			table.insert(shapes, shapeStruct)
		end

		data.shapes = shapes
		data.totalShapes = #shapes
	end,
}

--[[
Expects
	data.targetInstances : { [Instance]: any }
	data.originalVisualsPerInstance : { [Instance]: { [string]: any } } optional
		- Map of instances to map of properties to values
		  If one is provided, it will be mutated, else new one is added
Outputs
	data.originalValues - See above
]]
local UpdateInstanceVisuals = {
	name = "UpdateInstanceVisuals",

	onStep = function(data)
		if not data.originalVisualsPerInstance then
			data.originalVisualsPerInstance = {}
		end

		for instance in pairs(data.targetInstances) do
			-- Check we haven't already applied visuals to this instance as we don't want to overwrite our saved originalVisuals
			if not data.originalVisualsPerInstance[instance] then
				data.originalVisualsPerInstance[instance] = PartConverterUtil.applyVisualsToInstance(instance)
			end
		end
	end,
}

--[[
Expects:
	data.terrain : Terrain - terrain object to call :FillBlock() etc. on
	data.localization : Localization
	data.shapes : { {Shape, CFrame center, Vector3 size, Instance} } - Array of shapes to fill
	data.totalShapes : number - Same as #data.shapes
	data.material : Material - Material to fill the given shapes with
]]
local ConvertShapesToMaterial = {
	name = "ConvertShapesToMaterial",
	timeBetweenSteps = 0.1,

	onStart = function(data)
		data.currentIndex = 0
		data.totalFillCalls = 0
	end,

	onStep = function(data)
		-- currentIndex is last filled shape, so start from the next one
		local nextIndexToFill = data.currentIndex + 1

		local fillCallsThisStep = 0
		local shapesThisStep = 0

		-- Stop once we've hit the end of the list (nextIndexToFill is out of the range of shapes)
		-- Or we've done enough work this step
		while nextIndexToFill <= data.totalShapes
			and shapesThisStep < CONVERT_MATERIAL_MAX_SHAPES_PER_STEP
			and fillCallsThisStep < CONVERT_MATERIAL_MAX_FILL_CALLS_PER_STEP do

			local fillData = data.shapes[nextIndexToFill]
			local fillCalls, err = PartConverterUtil.fillShapeWithTerrain(data.terrain, data.material,
				fillData[1], -- Shape
				fillData[2], -- CFrame
				fillData[3]  -- Size
			)

			if fillCalls == 0 then
				local instance = fillData[4]
				local message = data.localization:getText("ConvertPart", "ConvertFailed",
					instance and instance:GetFullName() or "nil")

				if err then
					message = message .. ": " .. data.localization:getText("Warning", err)
				end

				warn(message)
			end

			fillCallsThisStep = fillCallsThisStep + fillCalls
			shapesThisStep = shapesThisStep + 1
			nextIndexToFill = nextIndexToFill + 1
		end

		-- Sub 1 because currentIndex is the last shape we filled
		-- But nextIndexToFill at this time points to an shape we haven't fill
		data.currentIndex = nextIndexToFill - 1
		data.totalFillCalls = data.totalFillCalls + fillCallsThisStep

		if data.currentIndex >= data.totalShapes then
			return false, 1
		else
			return true, data.currentIndex / data.totalShapes
		end
	end,

	onFinish = function(data, operation)
		ChangeHistoryService:SetWaypoint(CONVERT_MATERIAL_WAYPOINT)

		local totalTime = operation:getTimeTaken()
		local totalInstances = data.currentIndex

		print(data.localization:getText("ConvertPart", "ConvertFinished",
			totalTime, totalInstances))

		if DEBUG_LOG_WORK_TIME then
			local totalFillCalls = data.totalFillCalls
			local yieldTime = operation:getYieldTime()
			local workTime = operation:getWorkTime()
			print(("Yielded for %.2f seconds; Did work for %.2f; Total fill calls: %i"):format(
				yieldTime, workTime, totalFillCalls))
		end
	end,
}

--[[
Expects:
	data.terrain : Terrain - terrain object to call :WriteVoxels() on
	data.localization : Localization
	data.shapes : { {Shape, CFrame center, Vector3 size, Instance} } - Array of shapes to fill
	data.totalShapes : number - Same as #data.shapes
	data.generateSettings : {
		biomeSelection : {[string]: boolean},
		biomeSize : number,
		haveCaves : boolean,
		seed : string,
	}
]]
local ConvertShapesToBiomes = {
	name = "ConvertShapesToBiome",
	timeBetweenSteps = 0.01,

	-- onStart should be refactored to utilize 
	-- getInstanceSetAABBExtents but this will require
	-- changing the long operation to support it. 
	-- Once we know where PartToBiome will exist, we can
	-- handle the refactor there.
	onStart = function(data)
		data.currentIndex = 0
		data.totalFillCalls = 0
		--[[ Append the current AABB for each part
			table.insert(shapes, {
				1 = shape,
				2 = cframe,
				3 = size,
				4 = obj,
				5 = aabb,
			})
		]]--
		for ind = 1, data.totalShapes do
			local shape = data.shapes[ind]
			local partPos = shape[2].Position
			local oldHalfSize = shape[3] * 0.5
			local cFrameComps = {shape[2]:GetComponents()}

			-- used to finded the size of the AABB of the oriented part
			local orientedHalfSize = Vector3.new(
				math.abs(cFrameComps[4]) * oldHalfSize.x
					+ math.abs(cFrameComps[5]) * oldHalfSize.y
					+ math.abs(cFrameComps[6]) * oldHalfSize.z,
				math.abs(cFrameComps[7]) * oldHalfSize.x
					+ math.abs(cFrameComps[8]) * oldHalfSize.y
					+ math.abs(cFrameComps[9]) * oldHalfSize.z,
				math.abs(cFrameComps[10]) * oldHalfSize.x
					+ math.abs(cFrameComps[11]) * oldHalfSize.y
					+ math.abs(cFrameComps[12]) * oldHalfSize.z)

			-- insert calculated aabb into shape data
			data.shapes[ind][5] = Region3.new(partPos - orientedHalfSize, partPos + orientedHalfSize)
				:ExpandToGrid(Constants.VOXEL_RESOLUTION)
		end

		local maxLimits = 99999999
		local minX = maxLimits
		local minY = maxLimits
		local minZ = maxLimits
		local maxX = -maxLimits
		local maxY = -maxLimits
		local maxZ = -maxLimits

		for ind = 1, data.totalShapes do
			local shape = data.shapes[ind]

			local halfSize = shape[3] * 0.5
			local minExtent = shape[2].Position - halfSize
			local maxExtents = shape[2].Position + halfSize
			minX = math.min(minExtent.x, minX)
			maxX = math.max(maxExtents.x, maxX)

			minY = math.min(minExtent.y, minY)
			maxY = math.max(maxExtents.y, maxY)

			minZ = math.min(minExtent.z, minZ)
			maxZ = math.max(maxExtents.z, maxZ)
		end

		data.generateSettings.genMinY = minY
		data.generateSettings.genMaxY = maxY
		if not data.generateSettings.baseLevel then
			data.generateSettings.baseLevel = (minY + maxY) * 0.5
		end
	end,

	onStep = function(data)
		if not data.generator then
			local nextIndex = data.currentIndex + 1
			local currInstanceData = data.shapes[nextIndex]
			if not currInstanceData then
				-- completed generation
				return false, 1
			end
			data.currentIndex = nextIndex
			--	data.generateSettings needs to have its size and position updated to the
			--	new instances size and position
			--[[
				data.generateSettings = {
					position = positionV3,
					size = sizeV3,
					biomeSelection = biomesCopy,
					biomeSize = options.biomeSize,
					haveCaves = options.haveCaves,
					seed = seed,
				}
			]]
			data.generateSettings.shape = currInstanceData[1] 	-- shape
			data.generateSettings.cframe = currInstanceData[2] 	-- cframe contains position and oritentation
			data.generateSettings.size = currInstanceData[3]	-- vector3 size

			data.generator = TerrainGenerator.create(data.generateSettings)
		end

		local mat, occ = TerrainGenerator.nextSlice(data.generator, data.terrain)
		local region = TerrainGenerator.regionForCurrentSlice(data.generator)

		local success, result = xpcall(function()
			data.terrain:WriteVoxels(region, Constants.VOXEL_RESOLUTION, mat, occ)
		end, function()
			-- noOpt to run the xpcall
		end)

		data.totalFillCalls = data.totalFillCalls + 1
		if not success then
			warn(result)
			return false, 1
		end


		local progress = data.currentIndex - 1
		if TerrainGenerator.isLastSlice(data.generator) then
			data.generator = nil
			progress = progress + 1
		else
			progress = progress + TerrainGenerator.generationProgress(data.generator)
		end

		return true, progress / data.totalShapes
	end,

	onFinish = function(data, operation)
		ChangeHistoryService:SetWaypoint(CONVERT_BIOME_WAYPOINT)

		local totalTime = operation:getTimeTaken()
		local totalInstances = data.currentIndex

		print(data.localization:getText("ConvertPart", "ConvertFinished",
			totalTime, totalInstances))

		if DEBUG_LOG_WORK_TIME then
			local totalFillCalls = data.totalFillCalls
			local yieldTime = operation:getYieldTime()
			local workTime = operation:getWorkTime()
			print(("Yielded for %.2f seconds; Did work for %.2f; Total fill calls: %i"):format(
				yieldTime, workTime, totalFillCalls))
		end
	end,
}

return {
	GetTargetShapes = GetTargetShapes,
	UpdateInstanceVisuals = UpdateInstanceVisuals,
	ConvertShapesToMaterial = ConvertShapesToMaterial,
	ConvertShapesToBiomes = ConvertShapesToBiomes,
}
