local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape

local DFFlagEnableFillWedge = settings():GetFFlag("EnableFillWedge")
local FIntSmoothTerrainMaxCppRegion = tonumber(settings():GetFVariable("SmoothTerrainMaxCppRegion")) or 4*1024*1024

-- Maps to keys in the localization table
local ConvertPartError = {
	RegionTooLarge = "RegionTooLarge",
	UnknownShape = "UnknownShape",
	TerrainNil = "TerrainIsNil",
}

local function isConvertibleToTerrain(instance)
	return instance and instance.Parent and instance:IsA("BasePart")
end

local function hasInstancesConvertibleToTerrain(instances)
	for _, obj in ipairs(instances) do
		if isConvertibleToTerrain(obj) then
			return true

		elseif (obj:IsA("Model") or obj:IsA("Folder")) and hasInstancesConvertibleToTerrain(obj:GetChildren()) then
			return true
		end
	end

	return false
end

local function getPartRenderedShape(part)
	local cframe = part.CFrame
	local size = part.Size

	-- If the part has a child that is a mesh, then use that shape instead
	for _, obj in ipairs(part:GetChildren()) do
		if obj:IsA("DataModelMesh") then
			local cframe = part.CFrame + obj.Offset
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
}
