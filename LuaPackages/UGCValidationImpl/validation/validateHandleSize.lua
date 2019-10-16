local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local valueToString = require(root.util.valueToString)

local MARGIN_OF_ERROR = 0.1

local function validateHandleSize(isAsync, instance)
	-- these are guaranteed to exist thanks to validateInstanceTree being called beforehand
	local handle = instance.Handle
	local mesh = handle:FindFirstChildOfClass("SpecialMesh")

	local success, verts = pcall(function()
		if isAsync then
			return UGCValidationService:GetMeshVerts(mesh.MeshId)
		else
			return UGCValidationService:GetMeshVertsSync(mesh.MeshId)
		end
	end)

	if not success then
		return false, { "Failed to read mesh" }
	end

	local minX, maxX = math.huge, 0
	local minY, maxY = math.huge, 0
	local minZ, maxZ = math.huge, 0

	for i = 1, #verts do
		local vert = verts[i] * mesh.Scale
		minX = math.min(minX, vert.X)
		minY = math.min(minY, vert.Y)
		minZ = math.min(minZ, vert.Z)
		maxX = math.max(maxX, vert.X)
		maxY = math.max(maxY, vert.Y)
		maxZ = math.max(maxZ, vert.Z)
	end

	local meshSize = Vector3.new(
		maxX - minX,
		maxY - minY,
		maxZ - minZ
	)

	-- allow handle.Size to be within MARGIN_OF_ERROR of meshSize or larger
	-- this is necessary since we're comparing floats
	-- the size only needs to be a rough equivalent for thumbnailing
	if handle.Size.X + MARGIN_OF_ERROR < meshSize.X
	or handle.Size.Y + MARGIN_OF_ERROR < meshSize.Y
	or handle.Size.Z + MARGIN_OF_ERROR < meshSize.Z then
		return false, {
			string.format("Accessory Handle size should be at least the size of the mesh ( %s )", valueToString(meshSize))
		}
	end

	return true
end

return validateHandleSize