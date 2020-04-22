local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local Constants = require(Plugin.Src.Util.Constants)

local ChangeHistoryService = game:GetService('ChangeHistoryService')

local MAX_VOXELS_PER_SLICE = 4*1024*1024-1

local TerrainSeaLevel = {}
TerrainSeaLevel.__index = TerrainSeaLevel

function TerrainSeaLevel.new(options)
	assert(options and type(options) == "table", "TerrainSeaLevel.new() requires an options table")

	local self = setmetatable({
		_localization = options.localization,
		_terrain = options.terrain,

		_replacing = false,
		_replacingProgress = 0,

		_progressChanged = Signal.new(),
		_stateChange = Signal.new(),
	}, TerrainSeaLevel)

	assert(self._terrain, "TerrainSeaLevel.new() requires a terrain instance")

	self._setReplacing = function(state)
		if state ~= self._replacing then
			self._replacing = state
			self._stateChange:Fire(state)
		end

		if state == false then
			self._replacingProgress = 0
		end
	end

	self._updateReplaceProgress = function(completionPercent)
		self._replaceProgress = completionPercent
		self._progressChanged:Fire(completionPercent)
		if completionPercent >= 1 then
			self._setReplacing(false)
		end
	end

	return self
end

function TerrainSeaLevel:destroy()
	-- nothing needs to be done
end

function TerrainSeaLevel:localizedWarn(...)
	if self._localization then
		warn(self._localization:getText(...))
	end
end

function TerrainSeaLevel:localizedPrint(...)
	if self._localization then
		print(self._localization:getText(...))
	end
end

function TerrainSeaLevel:subscribeToProgressChange(...)
	return self._progressChanged:Connect(...)
end

function TerrainSeaLevel:subscribeToStateChange(...)
	return self._stateChange:Connect(...)
end

function TerrainSeaLevel:isReplacing()
	return self._replacing
end

function TerrainSeaLevel:getProgress()
	return self._replacingProgress
end

function TerrainSeaLevel:cancel()
	self._setReplacing(false)
end

-- position is the center of the of the targetRegion
-- size is the size of targetRegion
-- seaLevel is the y plane position to set the sea level
--   within the targetRegion
-- Note all args are expected in studs
function TerrainSeaLevel:replaceMaterial(position, size, sourceMaterial, targetMaterial)
	if self._replacing then
		self:localizedWarn("Warning", "AlreadyGeneratingTerrain")
		return
	end
	self._updateReplaceProgress(0)
	self._setReplacing(true)

	self:localizedPrint("SeaLevel", "Start")

	local startTime = tick()
	local terrain = self._terrain
	if not terrain then
		self:localizedWarn("Warning", "MissingTerrain")
		return
	end

	assert(size.x >= 4,"")
	assert(size.y >= 4,"")
	assert(size.z >= 4,"")

	-- convert to voxels
	position = position / Constants.VOXEL_RESOLUTION
	size = size / Constants.VOXEL_RESOLUTION

	local offset = (size)/2
	local minExtent = position - offset
	local maxExtent = position + offset

	local surfaceVoxelY = math.floor(maxExtent.Y)
	local surfaceVoxelOccupancy = (maxExtent.Y) % 1

	local sliceZY = math.ceil(size.y) * math.ceil(size.z)
	local voxelsXPerSlice = math.floor(MAX_VOXELS_PER_SLICE / sliceZY )

	if voxelsXPerSlice == 0 then
		self:localizedWarn("Warning", "RegionTooLarge")
		self._setReplacing(false)
		return
	end

	local slicePosIncrement = Vector3.new(voxelsXPerSlice, 0, 0) * Constants.VOXEL_RESOLUTION

	local minSliceExtent = Vector3.new(
		math.floor(minExtent.X),
		math.floor(minExtent.Y),
		math.floor(minExtent.Z)) * Constants.VOXEL_RESOLUTION

	local maxSliceExtent = Vector3.new(
		math.ceil(math.min(maxExtent.X, minExtent.X + voxelsXPerSlice)),
		math.ceil(maxExtent.Y),
		math.ceil(maxExtent.Z)) * Constants.VOXEL_RESOLUTION

	-- There is a bug here where the level does not generate correctly for
	-- any height%4 == 1 such as 1,5,9 etc. These heights resolve to the
	-- same mesh as height%4 == 2
	local maxSliceX = maxExtent.x * Constants.VOXEL_RESOLUTION
	local minSliceX = minExtent.x * Constants.VOXEL_RESOLUTION

	while minSliceExtent.x <= (maxSliceX) and self._replacing do
		-- output progress metric
		self._updateReplaceProgress(1 - ((maxSliceX - minSliceExtent.X) / (maxSliceX-minSliceX)))

		-- calculate slicing targetSlice
		local regionSlice = Region3.new(minSliceExtent, maxSliceExtent)
		regionSlice = regionSlice:ExpandToGrid(Constants.VOXEL_RESOLUTION)

		pcall(function()
			terrain:ReplaceMaterial(regionSlice, Constants.VOXEL_RESOLUTION, sourceMaterial, targetMaterial)
		end)
		wait()

		-- fix the surface
		if surfaceVoxelOccupancy > 0 then
			local surfaceSlice = Region3.new(
				Vector3.new(minSliceExtent.X, (surfaceVoxelY) * Constants.VOXEL_RESOLUTION, minSliceExtent.Z),
				Vector3.new(maxSliceExtent.X, (surfaceVoxelY + 1) * Constants.VOXEL_RESOLUTION, maxSliceExtent.Z)
			)
			surfaceSlice = surfaceSlice:ExpandToGrid(Constants.VOXEL_RESOLUTION)
			local surfaceMat, surfaceOcc = terrain:ReadVoxels(surfaceSlice, Constants.VOXEL_RESOLUTION)
			for ix, vx in ipairs(surfaceOcc) do
				for iy, vy in pairs(vx) do
					for iz, _ in pairs(vy) do
						if surfaceMat[ix][iy][iz] == targetMaterial then
							surfaceOcc[ix][iy][iz] = surfaceVoxelOccupancy
						end
					end
				end
			end
			terrain:WriteVoxels(surfaceSlice, Constants.VOXEL_RESOLUTION, surfaceMat, surfaceOcc)
		end


		minSliceExtent = minSliceExtent + slicePosIncrement

		if maxSliceExtent.X + slicePosIncrement.X <= maxExtent.X * Constants.VOXEL_RESOLUTION then
			maxSliceExtent = maxSliceExtent + slicePosIncrement
		else
			maxSliceExtent = Vector3.new(maxExtent.X * Constants.VOXEL_RESOLUTION, maxSliceExtent.Y, maxSliceExtent.Z)
		end
	end

	ChangeHistoryService:SetWaypoint('TerrainReplace')

	-- resolution is currently a fixed value of 4 until terrain
	-- provides that as an actual option
	self._updateReplaceProgress(1)
	local endTime = tick()
	self:localizedPrint("SeaLevel", "End", endTime - startTime)
	self._setReplacing(false)
end

return TerrainSeaLevel
