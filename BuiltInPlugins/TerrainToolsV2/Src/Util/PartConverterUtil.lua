local ShapeFiller = require(script.Parent.ShapeFiller)

local Constants = require(script.Parent.Constants)
local TerrainEnums = require(script.Parent.TerrainEnums)
local ConvertPartError = TerrainEnums.ConvertPartError
local ConvertPartWarning = TerrainEnums.ConvertPartWarning
local Shape = TerrainEnums.Shape

local getAABBRegion = require(script.Parent.getAABBRegion)
local isProtectedInstance = require(script.Parent.isProtectedInstance)

-- BasePart => boolean
-- Throws error on protected instances or non-baseparts
local function isTooSmallToConvert(instance)
	return instance.Size.x < Constants.VOXEL_RESOLUTION
	    or instance.Size.y < Constants.VOXEL_RESOLUTION
	    or instance.Size.z < Constants.VOXEL_RESOLUTION
end

local function isConvertibleToTerrain(instance)
	if not instance or isProtectedInstance(instance) or not instance.Parent then
		return false
	end

	-- Terrain inherits BasePart but converting terrain->terrain doesn't make sense
	-- So explicitly don't allow Terrain
	if instance:IsA("Terrain") then
		return false
	end

	if not instance:IsA("BasePart") then
		return false
	end

	-- Don't allow Meshes or CSG parts as we can't fill them accurately
	if instance:IsA("MeshPart") or instance:IsA("PartOperation") then
		return false
	end

	if isTooSmallToConvert(instance) then
		return false
	end

	return true
end

-- Takes array : { [number] : Instance }
-- Returns set of convertible instances { [Instance] : boolean }
-- And a set of warning messages
-- Throws if param array is not an array
local function getValidInstancesAndWarnings(array)
	assert(type(array) == "table", "getValidInstancesAndWarnings() expects an array")
	local valid = {}
	local warnings = {}

	local function recurse(arr)
		for _, obj in pairs(arr) do
			if obj then
				if isProtectedInstance(obj) then
					warnings[ConvertPartWarning.HasProtected] = true

				elseif isConvertibleToTerrain(obj) then
					valid[obj] = true

				elseif obj:IsA("Model") or obj:IsA("Folder") then
					recurse(obj:GetChildren())

				elseif obj:IsA("BasePart") and isTooSmallToConvert(obj) then
					warnings[ConvertPartWarning.HasTooSmall] = true

				else
					warnings[ConvertPartWarning.HasOtherInstance] = true
				end
			end
		end
	end

	recurse(array)

	return valid, warnings
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
				-- else other SpecialMesh MeshTypes (e.g. block, torso, file) use fallback
				end

			elseif obj:IsA("CylinderMesh") then
				return Shape.Cylinder, cframe, size

			-- else other DataModelMeshes (e.g. BlockMesh) use fallback
			end

			-- Fallback to a block
			return Shape.Block, cframe, size
		end
	end

	if part:IsA("Part") then
		if part.Shape == Enum.PartType.Cylinder then
			return Shape.CylinderRotate, cframe, size
		elseif part.Shape == Enum.PartType.Ball then
			return Shape.Ball, cframe, size
		else
			-- If any new Part Shapes are added, treat them as block for now
			return Shape.Block, cframe, size
		end

	elseif part:IsA("WedgePart") then
		return Shape.Wedge, cframe, size

	end

	-- Other part types (e.g. Truss, CornerWedgePart, etc.) fallback to a block
	return Shape.Block, cframe, size
end

local function getInstanceSetAABBExtents(instances)
	local minX = math.huge
	local minY = math.huge
	local minZ = math.huge
	local maxX = -math.huge
	local maxY = -math.huge
	local maxZ = -math.huge

	for instance,_ in pairs(instances) do
		local region = getAABBRegion(instance.CFrame, instance.Size)

		local partPos = region.CFrame.Position
		local halfSize = region.Size * 0.5

		local minExtent = partPos - halfSize
		local maxExtents = partPos + halfSize
		minX = math.min(minExtent.x, minX)
		maxX = math.max(maxExtents.x, maxX)

		minY = math.min(minExtent.y, minY)
		maxY = math.max(maxExtents.y, maxY)

		minZ = math.min(minExtent.z, minZ)
		maxZ = math.max(maxExtents.z, maxZ)
	end

	local minExtent = Vector3.new(minX, minY, minZ)
	local maxExtent = Vector3.new(maxX, maxY, maxZ)

	return minExtent, maxExtent
end

-- Returns number of fill calls, or 0 and error message
-- For most instances small enough to fit within FIntSmoothTerrainMaxCppRegion, fill calls = 1
-- For large instances that have to be split up, fill calls will likely be > 1
local function fillShapeWithTerrain(terrain, material, shape, cframe, size)
	assert(terrain, "fillShapeWithTerrain requires terrain to be non-nil")

	if size.x <= 0 or size.y <= 0 or size.z <= 0 then
		return 0, ConvertPartError.InvalidSize
	end

	local fills, errorCode = (function()
		if shape == Shape.Block then
			return ShapeFiller.fillBlock(terrain, material, cframe, size)

		elseif shape == Shape.Cylinder then
			local height = size.y
			local radius = math.min(size.x, size.z) / 2
			return ShapeFiller.fillCylinder(terrain, material, cframe, height, radius)

		elseif shape == Shape.CylinderRotate then
			-- Some cylinder types are rotated so that height is along the X axis instead of Y
			-- So use that for height+radius calculations, and rotate the CFrame
			local cframe = cframe * CFrame.Angles(0, 0, math.rad(90))
			local height = size.x
			local radius = math.min(size.y, size.z) / 2
			return ShapeFiller.fillCylinder(terrain, material, cframe, height, radius)

		elseif shape == Shape.Ball then
			local radius = math.min(size.x, size.y, size.z) / 2
			return ShapeFiller.fillBall(terrain, material, cframe, radius)

		elseif shape == Shape.Wedge then
			return ShapeFiller.fillWedge(terrain, material, cframe, size)
		end

		return 0, ConvertPartError.UnknownShape
	end)()

	if errorCode == ConvertPartError.RegionTooLarge then
		fills, errorCode = ShapeFiller.fillShapeSlow(terrain, material, shape, cframe, size)
	end

	return fills, errorCode
end

-- instance : BasePart
-- Returns originalVisuals : { [string]: any } - Map of properties to their original values
local function applyVisualsToInstance(instance)
	if not instance or not instance:IsA("BasePart") then
		return nil
	end

	local originalVisuals = {
		Archivable = instance.Archivable,
		Color = instance.Color,
		Transparency = instance.Transparency
	}

	-- Set Archivable *before* the other properties so ChangeHistoryService doesn't track these changes
	instance.Archivable = false

	instance.Color = Color3.fromRGB(255, 255, 255)
	instance.Transparency = 0.8

	return originalVisuals
end

-- instance : BasePart
-- originalVisuals : { [string]: any } - Map of props for instance, likely from originalVisualsPerInstance[instance]
local function resetVisualsOnInstance(originalVisuals, instance)
	if not instance or not instance:IsA("BasePart") or not originalVisuals then
		return
	end

	-- Ensure the Archivable is reset *after* restoring the other properties
	-- So that once ChangeHistoryService starts tracking the instance again
	-- it's in the same state as it was before applyVisualsToInstance()
	local oldArchivable = originalVisuals.Archivable
	-- Clear Archivable from the props table so we don't set it in the loop
	originalVisuals.Archivable = nil

	for prop, value in pairs(originalVisuals) do
		instance[prop] = value
	end

	-- Explicitly set Archivable if we know what the original state was
	if oldArchivable ~= nil then
		instance.Archivable = oldArchivable
	end
end

return {
	isConvertibleToTerrain = isConvertibleToTerrain,
	getValidInstancesAndWarnings = getValidInstancesAndWarnings,

	getPartRenderedShape = getPartRenderedShape,

	applyVisualsToInstance = applyVisualsToInstance,
	resetVisualsOnInstance = resetVisualsOnInstance,

	fillShapeWithTerrain = fillShapeWithTerrain,

	getInstanceSetAABBExtents = getInstanceSetAABBExtents,
}
