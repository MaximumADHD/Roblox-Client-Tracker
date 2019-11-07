-- Terrain SeaLevel

local RESOLUTION = 4
local MAX_VOXELS_PER_SLICE = 4*1024*1024-1

-- To localized when strings are finalized
local MISSING_TERRAIN = "Could not find terrain."
local REGION_SIZE_TOO_SMALL = "Region Size is too small."
local REGION_TOO_LARGE = "Region Size is too large."
local ALREADY_GENERATING = "Already Generating"
local START_SEA_LEVEL = "Starting Sea Level"
local FINISH_SEA_LEVEL = "SeaLevel Complete: "

TerrainSeaLevel = {}
TerrainSeaLevel.__index = TerrainSeaLevel

function TerrainSeaLevel.new()
	local self = {}
	setmetatable(self, TerrainSeaLevel)

	self._generating = false
	self._seaLevelSurfaceParts = {}

	return self
end

-- position is the center of the of the targetRegion
-- size is the size of targetRegion
-- seaLevel is the y plane position to set the sea level
--   within the targetRegion
-- Note all args are expected in studs
function TerrainSeaLevel:ReplaceMaterial(position, size, sourceMaterial, targetMaterial)
	if self._generating then
		warn(ALREADY_GENERATING)
		return
	end
	self._generating = true
	print(START_SEA_LEVEL)

	local startTime = tick()
	local terrain = workspace.terrain
	if not terrain then
		warn(MISSING_TERRAIN)
		return
	end

	-- convert to voxels
	position = position / RESOLUTION
	size = size / RESOLUTION

	local offset = (size)/2
	local minExtent = position - offset
	local maxExtent = position + offset

	local surfaceVoxelY = math.floor(maxExtent.Y)
	local surfaceVoxelOccupancy = (maxExtent.Y) % 1

	local sliceZY = math.ceil(size.y) * math.ceil(size.z)
	local voxelsXPerSlice = math.floor(MAX_VOXELS_PER_SLICE / sliceZY )

	if voxelsXPerSlice == 0 then
		warn(REGION_TOO_LARGE)
		self._generating = false
		return
	end
	local slicePosIncrement = Vector3.new(voxelsXPerSlice, 0, 0) * RESOLUTION

	local minSliceExtent = Vector3.new(
		math.floor(minExtent.X),
		math.floor(minExtent.Y),
		math.floor(minExtent.Z)) * RESOLUTION

	local maxSliceExtent = Vector3.new(
		math.ceil(math.min(maxExtent.X, minExtent.X + voxelsXPerSlice)),
		math.ceil(maxExtent.Y),
		math.ceil(maxExtent.Z)) * RESOLUTION

	local extentOffset = size
	local x = minSliceExtent.X

	-- There is a bug here where the level does not generate correctly for
	-- any height%4 == 1 such as 1,5,9 etc. These heights resolve to the
	-- same mesh as height%4 == 2
	while minSliceExtent.x <= (maxExtent.x * RESOLUTION) do
		-- calculate slicing targetSlice
		local regionSlice = Region3.new(minSliceExtent, maxSliceExtent)

		terrain:ReplaceMaterial(regionSlice, RESOLUTION, Enum.Material.Air, Enum.Material.Water)
		wait()

		-- fix the surface
		if surfaceVoxelOccupancy > 0 then
			local surfaceSlice = Region3.new(
				Vector3.new(minSliceExtent.X, (surfaceVoxelY) * RESOLUTION, minSliceExtent.Z),
				Vector3.new(maxSliceExtent.X, (surfaceVoxelY + 1) * RESOLUTION, maxSliceExtent.Z)
			)
			local surfaceMat, surfaceOcc = terrain:ReadVoxels(surfaceSlice, RESOLUTION)
			for ix, vx in ipairs(surfaceOcc) do
				for iy, vy in pairs(vx) do
					for iz, cellOccupancy in pairs(vy) do
						if surfaceMat[ix][iy][iz] == targetMaterial then
							surfaceOcc[ix][iy][iz] = surfaceVoxelOccupancy
						end
					end
				end
			end
			terrain:WriteVoxels(surfaceSlice, RESOLUTION, surfaceMat, surfaceOcc)
		end


		minSliceExtent = minSliceExtent + slicePosIncrement

		if maxSliceExtent.X + slicePosIncrement.X <= maxExtent.X * RESOLUTION then
			maxSliceExtent = maxSliceExtent + slicePosIncrement
		else
			maxSliceExtent = Vector3.new(maxExtent.X * RESOLUTION, maxSliceExtent.Y, maxSliceExtent.Z)
		end
	end

	-- resolution is currently a fixed value of 4 until terrain
	-- provides that as an actual option

	local endTime = tick()
	print(FINISH_SEA_LEVEL, endTime - startTime)
	self._generating = false
end

return TerrainSeaLevel