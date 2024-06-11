local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateLegacyAccessoryMeshPartAssetFormatMatch(
	meshPartAccessory: Instance,
	specialMeshAccessory: Instance
): (boolean, { string }?)
	local meshPartHandle = meshPartAccessory:FindFirstChild("Handle") :: MeshPart
	assert(meshPartHandle and meshPartHandle:IsA("MeshPart"))

	local specialMeshHandle = specialMeshAccessory:FindFirstChild("Handle") :: Part
	assert(specialMeshHandle and specialMeshHandle:IsA("Part"))
	local specialMesh = specialMeshHandle:FindFirstChildOfClass("SpecialMesh")
	assert(specialMesh)

	if meshPartHandle.MeshId ~= specialMesh.MeshId then
		Analytics.reportFailure(Analytics.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch)
		return false,
			{
				string.format(
					"Model meshId mismatch with rigid accessory SpecialMesh.MeshId for '%s'. You need to match the meshIds and try again.",
					meshPartAccessory.Name
				),
			}
	end

	if meshPartHandle.TextureID ~= specialMesh.TextureId then
		Analytics.reportFailure(Analytics.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch)
		return false,
			{
				string.format(
					"Model textureId mismatch with rigid accessory SpecialMesh.TextureId for '%s'. You need to match the textureIds and try again.",
					meshPartAccessory.Name
				),
			}
	end

	return true
end

return validateLegacyAccessoryMeshPartAssetFormatMatch
