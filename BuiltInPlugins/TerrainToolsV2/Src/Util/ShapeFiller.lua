local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

assert(not convertToolRemoval)

local Constants = require(script.Parent.Constants)

local TerrainEnums = require(script.Parent.TerrainEnums)
local ConvertPartError = TerrainEnums.ConvertPartError

local getAABBRegion = require(script.Parent.getAABBRegion)
local getShapeFunction = require(script.Parent.getShapeFunction)
local quickWait = require(script.Parent.quickWait)

local FIntSmoothTerrainMaxCppRegion = tonumber(settings():GetFVariable("SmoothTerrainMaxCppRegion")) or 4*1024*1024
local FIntSmoothTerrainMaxLuaRegion = tonumber(settings():GetFVariable("SmoothTerrainMaxLuaRegion")) or 64*1024*1024

local function getRegionVolumeVoxels(cframe, size)
	local region = getAABBRegion(cframe, size)
	local res = Constants.VOXEL_RESOLUTION
	return (region.Size.x / res)
	     * (region.Size.y / res)
	     * (region.Size.z / res)
end

-- FillBlock, FillCylinder, etc. throw an error if the region passed to them is too large
-- Use this to check before calling those methods instead of catching the error
local function isRegionTooLarge(cframe, size)
	return getRegionVolumeVoxels(cframe, size) > FIntSmoothTerrainMaxCppRegion
end

-- WriteVoxels uses a different maximum region size to the other methods
local function isRegionTooLargeWriteVoxels(cframe, size)
	-- The WriteVoxels API can handle large material+occupancy maps
	-- However it means sending more data at a time over the Lua-C++ bridge
	-- And more time in fillShapeSlow() between waits() as each block will be larger
	-- So here we artificially cap how big each block can be
	return getRegionVolumeVoxels(cframe, size) > FIntSmoothTerrainMaxLuaRegion / 6
end

local MIN_BLOCK_SIZE = Constants.VOXEL_RESOLUTION
local MIN_DISC_HEIGHT = Constants.VOXEL_RESOLUTION

-- When looking for amount of slices+steps, don't consider wedges smaller than this
-- Else we can end up with 1 slice and 100s of (X, 4, 4) steps
local MIN_TRIANGLE_SIZE = 16 * Constants.VOXEL_RESOLUTION

-- Check the blocks we're splitting up into aren't too small
-- This could happen if the original part is really long on one axis, but really small on another
local function isBlockSizeTooSmall(blockSize)
	return blockSize.x <= MIN_BLOCK_SIZE
			or blockSize.y <= MIN_BLOCK_SIZE
			or blockSize.z <= MIN_BLOCK_SIZE
end

local function isDiscTooSmall(discHeight)
	return discHeight <= MIN_DISC_HEIGHT
end

local function isWedgeTooSmall(wedgeHeight, wedgeDepth)
	return wedgeHeight <= MIN_TRIANGLE_SIZE
		or wedgeDepth <= MIN_TRIANGLE_SIZE
end

local function isWedgeTooThin(wedgeWidth)
	return wedgeWidth <= MIN_TRIANGLE_SIZE
end

-- Splits the given region up into multiple blockSize
-- Returns amount of blocks per axis, the size of each block, and the adjusted size of each block
-- If there's an error (e.g. can't find a valid size), then returns false and error code
-- Each block is the same size, and there is the same number of blocks in each axis
-- i.e. total number = (amount per axis)^3
local function splitIntoBlocks(cframe, size, adjustAmountPerAxis, isTooLarge)
	-- To ensure that each block overlaps correctly, we add a little in each direction
	-- Then adjust the CFrame we render the edge blocks at so they still fit within the target size
	-- Without this, then there are many not-quite-full voxels in the middle of large cubes
	-- With this, all those voxels get set to full occupancy as they should
	local adjustAmount = Vector3.new(adjustAmountPerAxis, adjustAmountPerAxis, adjustAmountPerAxis)

	local blockCountPerAxis = 0
	local blockSize
	local adjustedBlockSize

	-- Keep increasing number of blocks until we find a valid size that we can render in 1 :FillBlock() call
	repeat
		blockCountPerAxis = blockCountPerAxis + 1
		blockSize = size / blockCountPerAxis
		adjustedBlockSize = blockSize + adjustAmount
	until not isTooLarge(cframe, adjustedBlockSize) or isBlockSizeTooSmall(blockSize)

	if isTooLarge(cframe, adjustedBlockSize) then
		return 0, ConvertPartError.RegionTooLarge
	end

	if isBlockSizeTooSmall(blockSize) then
		return 0, ConvertPartError.InvalidSize
	end

	return blockCountPerAxis, blockSize, adjustedBlockSize
end

local function fillBlock(terrain, material, cframe, size)
	-- If we can do this in 1 fill call then take the shortcut
	-- This is the most common case
	if not isRegionTooLarge(cframe, size) then
		terrain:FillBlock(cframe, size, material)
		return 1
	end

	local adjustAmountPerAxis = 2 * Constants.VOXEL_RESOLUTION
	local offsetPerAxis = adjustAmountPerAxis / 2
	local blockCountPerAxis, blockSize, adjustedBlockSize = splitIntoBlocks(cframe, size, adjustAmountPerAxis,
		isRegionTooLarge)
	if blockCountPerAxis == 0 then
		local err = blockSize
		return 0, err
	end

	-- Corner to start rendering the blocks from
	local blockCorner = cframe - cframe:VectorToWorldSpace(size / 2)

	local fills = 0

	for x = 0, blockCountPerAxis - 1, 1 do
		-- Offset the block location if we're on the edge so the adjust amount is kept within bounds
		local offsetX = x == 0 and offsetPerAxis or x == blockCountPerAxis - 1 and -offsetPerAxis or 0

		for y = 0, blockCountPerAxis - 1, 1 do
			local offsetY = y == 0 and offsetPerAxis or y == blockCountPerAxis- 1 and -offsetPerAxis or 0

			for z = 0, blockCountPerAxis - 1, 1 do
				local offsetZ = z == 0 and offsetPerAxis or z == blockCountPerAxis - 1 and -offsetPerAxis or 0

				local blockCenterScaled = Vector3.new(x + 0.5, y + 0.5, z + 0.5) * blockSize
				blockCenterScaled = blockCenterScaled + Vector3.new(offsetX, offsetY, offsetZ)
				local cf = blockCorner + blockCorner:VectorToWorldSpace(blockCenterScaled)

				terrain:FillBlock(cf, adjustedBlockSize, material)
				fills = fills + 1
			end
			quickWait()
		end
	end

	return fills
end

local function fillCylinder(terrain, material, cframe, height, radius)
	-- Helper function because the AABB requires diameter, but we have radius
	local function isDiscTooLarge(height)
		local diameter = radius*2
		return isRegionTooLarge(cframe, Vector3.new(diameter, height, diameter))
	end

	-- If we can do this in 1 fill call then take the shortcut
	-- This is the most common case
	if not isDiscTooLarge(height) then
		terrain:FillCylinder(cframe, height, radius, material)
		return 1
	end

	-- Split the length of the cylinder up into individual discs
	-- And call FillCylinder() for each disc

	-- If we can't render 1 disc at the smallest valid height, then the cylinder is too big
	if isDiscTooLarge(MIN_DISC_HEIGHT) then
		return 0, ConvertPartError.RegionTooLarge
	end

	-- "adjusted" height is for the middle (i.e. not first and last) discs to be slightly longer
	-- This ensures that they overlap each other correctly and won't leave a seam
	local adjustAmount = 2 * Constants.VOXEL_RESOLUTION

	-- Start discs at 1 so the minimum we'll use will be 2
	-- The adjust logic fails in the case of 1 disc
	-- Cases which would use 1 disc should have been caught by the shortcut above
	local discs = 1
	local heightPerDisc
	local adjustedHeightPerDisc
	repeat
		discs = discs + 1
		heightPerDisc = height / discs
		adjustedHeightPerDisc = heightPerDisc + adjustAmount
	until not isDiscTooLarge(adjustedHeightPerDisc) or isDiscTooSmall(heightPerDisc)

	-- If we didn't find a valid disc height, then we can't use the disc method on this cylinder
	if isDiscTooLarge(adjustedHeightPerDisc) then
		return 0, ConvertPartError.RegionTooLarge
	end

	if isDiscTooSmall(heightPerDisc) then
		return 0, ConvertPartError.InvalidSize
	end

	local alignVector = cframe.UpVector
	local cylinderBottom = cframe - (alignVector * (height / 2))

	for i = 0, discs - 1, 1 do
		-- +0.5 because we want the middle of the disc
		local discAlongAlignVector = (heightPerDisc * (i + 0.5))

		-- Ensure that when using the adjusted height we still render within the original cylinder bounds
		if i == 0 then
			discAlongAlignVector = discAlongAlignVector + (adjustAmount / 2)
		elseif i == discs - 1 then
			discAlongAlignVector = discAlongAlignVector - (adjustAmount / 2)
		end

		local cf = cylinderBottom + (alignVector * discAlongAlignVector)
		local h = adjustedHeightPerDisc

		terrain:FillCylinder(cf, h, radius, material)
		quickWait()
	end

	return discs
end

local function fillBall(terrain, material, cframe, radius)
	local diameter = radius * 2
	if not isRegionTooLarge(cframe, Vector3.new(diameter, diameter, diameter)) then
		terrain:FillBall(cframe.p, radius, material)
		return 1
	end

	-- Unable to split a ball up into multiple FillBall() calls
	return 0, ConvertPartError.RegionTooLarge
end

local function fillWedge(terrain, material, cframe, size)
	-- If we can do this in 1 fill call then take the shortcut
	-- This is the most common case
	if not isRegionTooLarge(cframe, size) then
		terrain:FillWedge(cframe, size, material)
		return 1
	end

	-- The triangle part is along the Y and Z axes
	-- With X being how wide the triangle is

	-- Split the large wedge up into smaller wedges and blocks making a staircase
	-- Might also split into repeating slices along the width of the wedge

	-- "slice" is how many times to repeat along the x
	local slices = 0
	-- "steps" is how many wedges+blocks vertically
	local steps

	local blockWidth = size.x

	local sliceWidth
	local sliceAdjustAmount
	local adjustedSliceWidth

	local wedgeHeight
	local wedgeDepth
	local triangleAdjustScale
	local adjustedWedgeHeight
	local adjustedWedgeDepth

	-- Size of the smaller wedges we :FillWedge() with
	-- Same as (adjustedSliceWidth, adjustedWedgeHeight, adjustedWedgeDepth)
	local adjustedTriangleSize

	local function isWedgeTooLarge()
		return isRegionTooLarge(cframe, adjustedTriangleSize)
	end
	repeat
		slices = slices + 1
		steps = 0
		repeat
			steps = steps + 1

			sliceWidth = size.x / slices
			-- Only apply the adjust logic when there are 2 or more wedges next to each other
			sliceAdjustAmount = slices > 1 and 2 * Constants.VOXEL_RESOLUTION or 0
			adjustedSliceWidth = sliceWidth + sliceAdjustAmount

			wedgeHeight = size.y / steps
			wedgeDepth = size.z / steps

			triangleAdjustScale = steps > 1 and 0.05 or 0
			adjustedWedgeHeight = wedgeHeight * (1 + triangleAdjustScale)
			adjustedWedgeDepth = wedgeDepth * (1 + triangleAdjustScale)

			adjustedTriangleSize = Vector3.new(adjustedSliceWidth, adjustedWedgeHeight, adjustedWedgeDepth)

			-- If we have so many steps that the wedge ends up really small, increase number of slices and start again
		until not isWedgeTooLarge() or isWedgeTooSmall(wedgeHeight, wedgeDepth)
	until not isWedgeTooLarge() or isWedgeTooThin(sliceWidth)

	if isWedgeTooLarge() then
		return 0, ConvertPartError.RegionTooLarge
	end

	if isWedgeTooSmall(wedgeHeight, wedgeDepth) or isWedgeTooThin(sliceWidth) then
		return 0, ConvertPartError.InvalidSize
	end

	-- Corner to start :FillWedges() from
	local corner = cframe - cframe:VectorToWorldSpace(size / 2)
	-- Center point on the bottom front edge to start :FillBlock() from
	local frontEdge = cframe - cframe:VectorToWorldSpace((size / 2) * Vector3.new(0, 1, 1))

	local fills = 0

	for step = 0, steps - 1, 1 do
		for slice = 0, slices - 1, 1 do
			-- Offset the position of the wedge to account for the adjust above
			local xOffset = 0
			local yOffset = 0
			local zOffset = 0

			if slice == 0 then
				xOffset = sliceAdjustAmount / 2
			elseif slice == slices - 1 then
				xOffset = -(sliceAdjustAmount / 2)
			end

			if step == 0 then
				yOffset = wedgeHeight * triangleAdjustScale / 2
				zOffset = wedgeDepth * triangleAdjustScale / 2
			elseif step == steps - 1 then
				yOffset = -(wedgeHeight * triangleAdjustScale / 2)
				zOffset = -(wedgeDepth * triangleAdjustScale / 2)
			end

			local cf = corner + cframe:VectorToWorldSpace(
				Vector3.new(
					((slice + 0.5) * sliceWidth) + xOffset,
					((step + 0.5) * wedgeHeight) + yOffset,
					((step + 0.5) * wedgeDepth) + zOffset
				)
			)
			local sz = adjustedTriangleSize
			terrain:FillWedge(cf, sz, material)
			fills = fills + 1
		end

		quickWait()

		-- Render the rest of the step as a block
		-- If the block's size is 0, then we can skip it (and :FillBlock() would throw an error)
		local blockLength = size.z - (wedgeDepth * (step + 1))
		if blockLength > 0 then
			local cf = frontEdge + cframe:VectorToWorldSpace(
				Vector3.new(
					0,
					(step + 0.5) * wedgeHeight,
					((step + 1) * wedgeDepth) + (blockLength / 2)
				)
			)
			local sz = Vector3.new(blockWidth, wedgeHeight, blockLength)
			-- Because the block might be larger than the :FillBlock() limit, use our large fill block function
			local fillCalls, err = fillBlock(terrain, material, cf, sz)
			if fillCalls == 0 then
				return err
			end
			fills = fills + fillCalls

			quickWait()
		end
	end

	return fills
end

local function fillShapeSlow(terrain, material, shape, cframe, size)
	local shapeFunc = getShapeFunction(shape)
	assert(type(shapeFunc) == "function", ("fillShapeSlow() got invalid shape function for shape %s"):format(
		tostring(shape)))

	local region = getAABBRegion(cframe, size)
	local corner = region.CFrame.p - region.Size / 2

	local cframeNoRotation = cframe - cframe.p
	local halfVoxelExtents = (size / 4) / 2

	local blockCountPerAxis, blockSize, _ = splitIntoBlocks(cframe, region.Size, 0, isRegionTooLargeWriteVoxels)
	if blockCountPerAxis == 0 then
		local err = blockSize
		return 0, err
	end

	local blockCount = Vector3.new(blockCountPerAxis, blockCountPerAxis, blockCountPerAxis)

	local blockRegionCorner
	local function getOccupancyForVoxelInBlock(x, y, z)
		local worldCoord = blockRegionCorner + (Vector3.new(
			x + 0.5,
			y + 0.5,
			z + 0.5
		) * Constants.VOXEL_RESOLUTION)

		local occupancy = shapeFunc(
			(worldCoord - cframe.p) / Constants.VOXEL_RESOLUTION,
			cframeNoRotation,
			halfVoxelExtents)
		return math.max(occupancy, 0)
	end

	local fills = 0

	-- Cache for a solid block
	-- Only create when necessary
	local solidMat
	local solidOcc

	for xBlock = 0, blockCount.x - 1, 1 do
		for yBlock = 0, blockCount.y - 1, 1 do
			for zBlock = 0, blockCount.z - 1, 1 do
				local blockRegion = Region3.new(
					corner + (Vector3.new(xBlock,     yBlock,     zBlock    ) * blockSize),
					corner + (Vector3.new(xBlock + 1, yBlock + 1, zBlock + 1) * blockSize)
				):ExpandToGrid(Constants.VOXEL_RESOLUTION)

				blockRegionCorner = blockRegion.CFrame.p - (blockRegion.Size / 2)

				local w = (blockRegion.Size.x / Constants.VOXEL_RESOLUTION) - 1
				local h = (blockRegion.Size.y / Constants.VOXEL_RESOLUTION) - 1
				local d = (blockRegion.Size.z / Constants.VOXEL_RESOLUTION) - 1

				-- If a block is completely solid, then we can take a shortcut of just :WriteVoxels() with cached arrays
				-- Assume a block is solid if all 8 corner voxels are solid
				local isSolid = true
				local corners = {
					{0, 0, 0},
					{w, 0, 0},
					{0, h, 0},
					{w, h, 0},
					{0, 0, d},
					{w, 0, d},
					{0, h, d},
					{w, h, d}
				}

				for _, coords in ipairs(corners) do
					if getOccupancyForVoxelInBlock(unpack(coords)) < 1 then
						isSolid = false
						break
					end
				end

				local mat, occ

				if isSolid then
					-- Create and cache material and occupancy arrays
					if not solidMat then
						local structWidth = w + 1
						local structHeight = h + 1
						local structDepth = d + 1

						solidMat = table.create(structWidth)
						solidOcc = table.create(structWidth)
						for x = 1, structWidth, 1 do
							solidMat[x] = table.create(structHeight)
							solidOcc[x] = table.create(structHeight)
							for y = 1, structHeight, 1 do
								solidMat[x][y] = table.create(structDepth, material)
								solidOcc[x][y] = table.create(structDepth, 1)
							end
						end
					end

					mat = solidMat
					occ = solidOcc
				else
					mat, occ = terrain:ReadVoxels(blockRegion, Constants.VOXEL_RESOLUTION)

					for xInBlock = 0, w, 1 do
						local matX = mat[xInBlock + 1]
						local occX = occ[xInBlock + 1]
						for yInBlock = 0, h, 1 do
							local matY = matX[yInBlock + 1]
							local occY = occX[yInBlock + 1]
							for zInBlock = 0, d, 1 do
								local occupancy = getOccupancyForVoxelInBlock(xInBlock, yInBlock, zInBlock)
								if occupancy > 0 then
									matY[zInBlock + 1] = material
									occY[zInBlock + 1] = occupancy
								end
							end
						end
					end
				end

				terrain:WriteVoxels(blockRegion, Constants.VOXEL_RESOLUTION, mat, occ)
				quickWait()
				fills = fills + 1

			end
			quickWait(0.1)
		end
		quickWait(0.5)
	end

	return fills
end

return {
	fillBlock = fillBlock,
	fillCylinder = fillCylinder,
	fillBall = fillBall,
	fillWedge = fillWedge,
	fillShapeSlow = fillShapeSlow,
}
