local Plugin = script.Parent.Parent.Parent

local isProtectedInstance = require(Plugin.Src.Util.isProtectedInstance)
local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local Constants = require(Plugin.Src.Util.Constants)

local TerrainGenerator = require(Plugin.Src.TerrainInterfaces.TerrainGenerator)

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local CONVERT_MATERIAL_MAX_SHAPES_PER_STEP = 100
local CONVERT_MATERIAL_MAX_FILL_CALLS_PER_STEP = 100

local CONVERT_MATERIAL_WAYPOINT = "ConvertPart_Material"
local CONVERT_BIOME_WAYPOINT = "ConvertPart_Biome"

local DEBUG_LOG_WORK_TIME = false

-- Expects data.instances to be a table of instances to search through
local GetConvertibleShapesOperationDetails = {
	name = "GetConvertibleShapes",

	onStep = function(data)
		local shapes = {}
		local function getConvertibleShapes(array)
			for _, obj in ipairs(array) do
				if not isProtectedInstance(obj) then
					if PartConverterUtil.isConvertibleToTerrain(obj) then
						-- Get the necessary details about the part and save it for later
						-- This means we don't have to do these checks when actually calling :FillBlock() etc.
						-- And protects against the target part being destroyed whilst the fill is running
						local shape, cframe, size = PartConverterUtil.getPartRenderedShape(obj)

						table.insert(shapes, {
							shape, cframe, size, obj
						})

					elseif obj:IsA("Model") or obj:IsA("Folder") then
						getConvertibleShapes(obj:GetChildren())
					end
				end
			end
		end
		getConvertibleShapes(data.instances)

		data.shapes = shapes
		data.totalShapes = #data.shapes

		return false, 1
	end
}

--[[
Expects:
	data.terrain : Terrain - terrain object to call :FillBlock() etc. on
	data.shapes : { {Shape, CFrame center, Vector3 size, Instance} } - Array of shapes to fill
	data.totalShapes : number - Length of data.shapes
	data.material : Material - Material to fill the given shapes with
]]
local ConvertShapesToMaterialOperationDetails = {
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

--ConvertShapesToBiome expects a table of data in the following format
--[[
	biomeSelection = self.props.biomeSelection,
	biomeSize = self.props.biomeSize,
	haveCaves = self.props.haveCaves,

	seed = self.props.seed,
]]
local ConvertShapesToBiomesOperationDetails = {
	name = "ConvertShapesToBiome",
	timeBetweenSteps = 0.01,

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
		data.generateSettings.baseLevel = (minY + maxY) * 0.5
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
	GetConvertibleShapes = GetConvertibleShapesOperationDetails,
	ConvertShapesToMaterial = ConvertShapesToMaterialOperationDetails,
	ConvertShapesToBiomes = ConvertShapesToBiomesOperationDetails,
}
