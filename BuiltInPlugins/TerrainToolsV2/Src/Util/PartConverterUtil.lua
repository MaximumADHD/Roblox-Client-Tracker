local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape

local isProtectedInstance = require(script.Parent.isProtectedInstance)

local DFFlagEnableFillWedge = settings():GetFFlag("EnableFillWedge")
local FIntSmoothTerrainMaxCppRegion = tonumber(settings():GetFVariable("SmoothTerrainMaxCppRegion")) or 4*1024*1024

-- Maps to keys in the localization table under the Warning group
local ConvertPartError = {
	RegionTooLarge = "RegionTooLarge",
	UnknownShape = "UnknownShape",
	InvalidSize = "InvalidSize",
}

local function isConvertibleToTerrain(instance)
	if not instance then
		return false
	end

	if isProtectedInstance(instance) then
		return false
	end

	if not instance.Parent then
		return false
	end

	if instance:IsA("Terrain") then
		return false
	end

	if not instance:IsA("BasePart") then
		return false
	end

	return true
end

local function hasInstancesConvertibleToTerrain(instances)
	for _, obj in ipairs(instances) do
		if not isProtectedInstance(obj) then
			if isConvertibleToTerrain(obj) then
				return true

			elseif (obj:IsA("Model") or obj:IsA("Folder")) and hasInstancesConvertibleToTerrain(obj:GetChildren()) then
				return true
			end
		end
	end

	return false
end

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
		local tubeOccupancy = minRadius - math.sqrt(reorientedpoint.y*reorientedpoint.y + reorientedpoint.z*reorientedpoint.z)

		return math.min(
			size.x - math.abs(reorientedpoint.x),
			tubeOccupancy,
			1)
	end,

	-- can-shaped cylinder
	[Shape.Cylinder] = function(voxelPos, cFrame, size)
		local reorientedpoint = cFrame:VectorToObjectSpace(voxelPos)

		local minRadius = math.min(size.x, size.z) -- size converted to voxel radius
		local tubeOccupancy = minRadius - math.sqrt(reorientedpoint.x*reorientedpoint.x + reorientedpoint.z*reorientedpoint.z)

		return math.min(
			size.y - math.abs(reorientedpoint.y),
			tubeOccupancy,
			1)
	end,

	-- ClassName for Wedge
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
local function getShapeFunction(targetShape)
	return ShapeOccupancyFunc[targetShape]
end

local function getPartRenderedShape(part)
	local cframe = part.CFrame
	local size = part.Size

	-- If the part has a child that is a mesh, then use that shape instead
	for _, obj in ipairs(part:GetChildren()) do
		if obj:IsA("DataModelMesh") then
			local cframe = part.CFrame + part.CFrame:VectorToWorldSpace(obj.Offset)
			local size = part.Size * obj.Scale

			if obj:IsA("SpecialMesh") then
				if obj.MeshType == Enum.MeshType.Cylinder then
					return Shape.CylinderRotate, cframe, size
				elseif obj.MeshType == Enum.MeshType.Head then
					return Shape.Cylinder, cframe, size
				elseif obj.MeshType == Enum.MeshType.Sphere then
					return Shape.Ball, cframe, size
				elseif obj.MeshType == Enum.MeshType.Wedge then
					return Shape.Wedge, cframe, size
				end

			elseif obj:IsA("CylinderMesh") then
				return Shape.Cylinder, cframe, size
			end

			return Shape.Block, cframe, size
		end
	end

	if part:IsA("Part") then
		if part.Shape == Enum.PartType.Cylinder then
			return Shape.CylinderRotate, cframe, size
		elseif part.Shape == Enum.PartType.Ball then
			return Shape.Ball, cframe, size
		else
			return Shape.Block, cframe, size
		end

	elseif part:IsA("WedgePart") then
		return Shape.Wedge, cframe, size

	end

	return Shape.Block, cframe, size
end

-- this assumes shape is a block, but at least keeps the center position of the AABB
-- at teh same postion as the part
local function getAABBRegion(cFrame, size)
	local pos = cFrame.Position
	local halfSize = size * 0.5
	local cFrameComps = {cFrame:GetComponents()}

	-- used to finded the size of the AABB of the oriented part
	local orientedHalfSize = Vector3.new(
		math.abs(cFrameComps[4]) * halfSize.x
			+ math.abs(cFrameComps[5]) * halfSize.y
			+ math.abs(cFrameComps[6]) * halfSize.z,
		math.abs(cFrameComps[7]) * halfSize.x
			+ math.abs(cFrameComps[8]) * halfSize.y
			+ math.abs(cFrameComps[9]) * halfSize.z,
		math.abs(cFrameComps[10]) * halfSize.x
			+ math.abs(cFrameComps[11]) * halfSize.y
			+ math.abs(cFrameComps[12]) * halfSize.z)

	return Region3.new(pos - orientedHalfSize, pos + orientedHalfSize):ExpandToGrid(Constants.VOXEL_RESOLUTION)
end

local function getAABBVolume(cframe, size)
	local inv = cframe:inverse()
	local x = size * inv.rightVector
	local y = size * inv.upVector
	local z = size * inv.lookVector

	local w = math.abs(x.x) + math.abs(x.y) + math.abs(x.z)
	local h = math.abs(y.x) + math.abs(y.y) + math.abs(y.z)
	local d = math.abs(z.x) + math.abs(z.y) + math.abs(z.z)

	return w * h * d
end

local function isRegionTooLarge(cframe, size)
	local regionVolumeStuds = getAABBVolume(cframe, size)
	local regionVolumeVoxels = regionVolumeStuds / (4 * 4 * 4)
	return regionVolumeVoxels > FIntSmoothTerrainMaxCppRegion
end

-- Returns number of fill calls, or 0 and error message
-- For most instances small enough to fit within FIntSmoothTerrainMaxCppRegion, fill calls = 1
-- For large instances that have to be split up, fill calls will likely be > 1
local function fillShapeWithTerrain(terrain, material, shape, cframe, size)
	assert(terrain, "fillShapeWithTerrain requires terrain to be non-nil")

	if size.x <= 0 or size.y <= 0 or size.z <= 0 then
		return 0, ConvertPartError.InvalidSize
	end

	local regionTooLarge = isRegionTooLarge(cframe, size)

	if shape == Shape.Block then
		if regionTooLarge then
			-- TODO: Split up the area into multiple FillBlock calls
			return 0, ConvertPartError.RegionTooLarge
		else
			terrain:FillBlock(cframe, size, material)
			return 1
		end

	elseif shape == Shape.Cylinder then
		if regionTooLarge then
			-- TODO: Split up the area
			-- Possibly multiple FillCylinder() calls of the same radius, but not the full height
			-- e.g. FillCylinder(upperCframe, height / 2, radius, material)
			-- then FillCylinder(lowerCframe, height / 2, radius, material)
			-- etc.
			return 0, ConvertPartError.RegionTooLarge
		else
			local height = size.y
			local radius = math.min(size.x, size.z) / 2
			terrain:FillCylinder(cframe, height, radius, material)
			return 1
		end

	elseif shape == Shape.CylinderRotate then
		if regionTooLarge then
			-- TODO: Split up the area, likely same as above
			return 0, ConvertPartError.RegionTooLarge
		else
			-- Some cylinder types are rotated so that height is along the X axis instead of Y
			-- So use that for height+radius calculations, and rotate the CFrame
			local cframe = cframe * CFrame.Angles(0, 0, math.rad(90))
			local height = size.x
			local radius = math.min(size.y, size.z) / 2
			terrain:FillCylinder(cframe, height, radius, material)
			return 1
		end

	elseif shape == Shape.Ball then
		if regionTooLarge then
			-- Unable to split a ball up into multiple FillBall() calls
			-- Could handle it in Lua with multiple WriteVoxel() calls
			return 0, ConvertPartError.RegionTooLarge
		else
			local radius = math.min(size.x, size.y, size.z) / 2
			terrain:FillBall(cframe.p, radius, material)
			return 1
		end

	elseif shape == Shape.Wedge then
		if regionTooLarge then
			-- TODO: Split up the area
			-- Will need multiple FillWedge() and FillBlock() calls
			return 0, ConvertPartError.RegionTooLarge
		else
			if DFFlagEnableFillWedge then
				terrain:FillWedge(cframe, size, material)
			else
				terrain:FillBlock(cframe, size, material)
			end
			return 1
		end
	end

	return 0, ConvertPartError.UnknownShape
end

return {
	ConvertPartError = ConvertPartError,

	isConvertibleToTerrain = isConvertibleToTerrain,
	hasInstancesConvertibleToTerrain = hasInstancesConvertibleToTerrain,
	getPartRenderedShape = getPartRenderedShape,
	fillShapeWithTerrain = fillShapeWithTerrain,

	getAABBRegion = getAABBRegion,
	getShapeFunction = getShapeFunction,
}
