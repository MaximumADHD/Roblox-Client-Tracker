local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function validateLayeredClothingAccessoryMeshPartAssetFormatMatch(
	meshPartAccessory: Instance,
	specialMeshAccessory: Instance
): (boolean, { string }?)
	local meshPartHandle = meshPartAccessory:FindFirstChild("Handle") :: MeshPart
	assert(meshPartHandle and meshPartHandle:IsA("MeshPart"))

	-- "specialMesh" refers to the default upload slot here, but is actually a MeshPart accessory
	-- for LC assets, both slots are the same file which is a MeshPart accessory + WrapLayer
	local specialMeshHandle = specialMeshAccessory:FindFirstChild("Handle") :: MeshPart
	assert(specialMeshHandle and specialMeshHandle:IsA("MeshPart"))

	if meshPartHandle.MeshId ~= specialMeshHandle.MeshId then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch
		)
		if getFFlagUseUGCValidationContext() then
			return false,
				{
					string.format(
						"Model meshId mismatch between MeshPart.MeshId and SpecialMesh.MeshId for %s. You need to match the meshIds and try again.",
						meshPartAccessory.Name
					),
				}
		else
			return false, { "MeshPart.MeshId did not match SpecialMesh.MeshId" }
		end
	end

	if meshPartHandle.TextureID ~= specialMeshHandle.TextureID then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch
		)
		if getFFlagUseUGCValidationContext() then
			return false,
				{
					string.format(
						"Model textureId mismatch between MeshPart.TextureID and SpecialMesh.TextureId for %s. You need to match the textureIds and try again.",
						meshPartAccessory.Name
					),
				}
		else
			return false, { "MeshPart.TextureID did not match SpecialMesh.TextureId" }
		end
	end

	return true
end

return validateLayeredClothingAccessoryMeshPartAssetFormatMatch
