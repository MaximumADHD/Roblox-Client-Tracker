local function validateLegacyAccessoryMeshPartAssetFormatMatch(meshPartAccessory: Instance, specialMeshAccessory: Instance): (boolean, {string}?)
	local meshPartHandle = meshPartAccessory:FindFirstChild("Handle") :: MeshPart
	assert(meshPartHandle and meshPartHandle:IsA("MeshPart"))

	local specialMeshHandle = specialMeshAccessory:FindFirstChild("Handle") :: Part
	assert(specialMeshHandle and specialMeshHandle:IsA("Part"))
	local specialMesh = specialMeshHandle:FindFirstChildOfClass("SpecialMesh")
	assert(specialMesh)

	if meshPartHandle.MeshId ~= specialMesh.MeshId then
		return false, { "MeshPart.MeshId did not match SpecialMesh.MeshId" }
	end

	if meshPartHandle.TextureID ~= specialMesh.TextureId then
		return false, { "MeshPart.TextureID did not match SpecialMesh.TextureId" }
	end

	return true
end

return validateLegacyAccessoryMeshPartAssetFormatMatch
