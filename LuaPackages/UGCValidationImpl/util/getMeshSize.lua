local UGCValidationService = game:GetService("UGCValidationService")

local function getMeshSize(meshId: string)
	local verts = UGCValidationService:GetMeshVerts(meshId)

	local minX, maxX = math.huge, 0
	local minY, maxY = math.huge, 0
	local minZ, maxZ = math.huge, 0

	for i = 1, #verts do
		local vert = verts[i]
		minX = math.min(minX, vert.X)
		minY = math.min(minY, vert.Y)
		minZ = math.min(minZ, vert.Z)
		maxX = math.max(maxX, vert.X)
		maxY = math.max(maxY, vert.Y)
		maxZ = math.max(maxZ, vert.Z)
	end

	return Vector3.new(
		maxX - minX,
		maxY - minY,
		maxZ - minZ
	)
end

return getMeshSize
