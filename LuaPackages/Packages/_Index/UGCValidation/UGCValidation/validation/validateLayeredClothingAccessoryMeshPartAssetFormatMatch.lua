local root = script.Parent.Parent

local Analytics = require(root.Analytics)

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
		return false, { "MeshPart.MeshId did not match SpecialMesh.MeshId" }
	end

	if meshPartHandle.TextureID ~= specialMeshHandle.TextureID then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch
		)
		return false, { "MeshPart.TextureID did not match SpecialMesh.TextureId" }
	end

	return true
end

return validateLayeredClothingAccessoryMeshPartAssetFormatMatch
