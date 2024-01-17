local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function getMeshSize(editableMesh: EditableMesh)
	local verts = UGCValidationService:GetEditableMeshVerts(editableMesh)

	local minX, maxX = math.huge, -math.huge
	local minY, maxY = math.huge, -math.huge
	local minZ, maxZ = math.huge, -math.huge

	for i = 1, #verts do
		local vert = verts[i]
		minX = math.min(minX, vert.X)
		minY = math.min(minY, vert.Y)
		minZ = math.min(minZ, vert.Z)
		maxX = math.max(maxX, vert.X)
		maxY = math.max(maxY, vert.Y)
		maxZ = math.max(maxZ, vert.Z)
	end

	return Vector3.new(maxX - minX, maxY - minY, maxZ - minZ)
end

local function DEPRECATED_getMeshSize(meshId: string)
	local verts = UGCValidationService:GetMeshVerts(meshId)

	local minX, maxX = math.huge, -math.huge
	local minY, maxY = math.huge, -math.huge
	local minZ, maxZ = math.huge, -math.huge

	for i = 1, #verts do
		local vert = verts[i]
		minX = math.min(minX, vert.X)
		minY = math.min(minY, vert.Y)
		minZ = math.min(minZ, vert.Z)
		maxX = math.max(maxX, vert.X)
		maxY = math.max(maxY, vert.Y)
		maxZ = math.max(maxZ, vert.Z)
	end

	return Vector3.new(maxX - minX, maxY - minY, maxZ - minZ)
end

if getFFlagUseUGCValidationContext() then
	return getMeshSize :: any
else
	return DEPRECATED_getMeshSize :: any
end
