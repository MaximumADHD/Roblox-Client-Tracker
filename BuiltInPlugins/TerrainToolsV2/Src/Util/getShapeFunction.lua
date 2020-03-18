local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape

-- NOTE:
-- 		size and cframe is in studs
-- 		voxelPos is in voxel
-- so these functions make some assumptions based on voxels being 4,4,4 studs
local ShapeOccupancyFunc = {
	[Shape.Block] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)

		local occupancy = math.min(
			size.x - math.abs(reorientedpoint.x),
			size.y - math.abs(reorientedpoint.y),
			size.z - math.abs(reorientedpoint.z),
			1)

		return occupancy
	end,

	[Shape.Ball] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)

		local sphereOccupancy = math.min(size.x, size.y, size.z) - reorientedpoint.Magnitude
		return math.min(
			size.x - math.abs(reorientedpoint.x),
			sphereOccupancy,
			1)
	end,

	-- roller shaped cylinder
	[Shape.CylinderRotate] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)

		local minRadius = math.min(size.y, size.z) -- size converted to voxel radius
		local tubeOccupancy = minRadius
			- math.sqrt(reorientedpoint.y*reorientedpoint.y + reorientedpoint.z*reorientedpoint.z)

		return math.min(
			size.x - math.abs(reorientedpoint.x),
			tubeOccupancy,
			1)
	end,

	-- can-shaped cylinder
	[Shape.Cylinder] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)

		local minRadius = math.min(size.x, size.z) -- size converted to voxel radius
		local tubeOccupancy = minRadius
			- math.sqrt(reorientedpoint.x*reorientedpoint.x + reorientedpoint.z*reorientedpoint.z)

		return math.min(
			size.y - math.abs(reorientedpoint.y),
			tubeOccupancy,
			1)
	end,

	[Shape.Wedge] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)
		local ratio = size.y / size.z

		local occupancy = math.min(
			size.x - math.abs(reorientedpoint.x),
			size.y - math.abs(reorientedpoint.y),
			size.z - math.abs(reorientedpoint.z),
			1)

		return reorientedpoint.z * ratio - reorientedpoint.y > 1 and occupancy or 0
	end,
}

return function (targetShape)
	assert(ShapeOccupancyFunc[targetShape], ("getShapeFunction() got invalid shape \"%s\""):format(tostring(targetShape)))
	return ShapeOccupancyFunc[targetShape]
end
