local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local function validateLegacyAccessoryMeshPartAssetFormatMatch(
	meshPartAccessory: Instance,
	specialMeshAccessory: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local meshPartHandle = meshPartAccessory:FindFirstChild("Handle") :: MeshPart
	assert(meshPartHandle and meshPartHandle:IsA("MeshPart"))

	local specialMeshHandle = specialMeshAccessory:FindFirstChild("Handle") :: Part
	assert(specialMeshHandle and specialMeshHandle:IsA("Part"))
	local specialMesh = specialMeshHandle:FindFirstChildOfClass("SpecialMesh")
	assert(specialMesh)

	if meshPartHandle.MeshId ~= specialMesh.MeshId then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Model meshId mismatch with rigid accessory SpecialMesh.MeshId for '%s'. You need to match the meshIds and try again.",
					meshPartAccessory.Name
				),
			}
	end

	local meshPartTextureId = meshPartHandle.TextureID
	if meshPartTextureId == "" then
		local surfaceAppearance = meshPartHandle:FindFirstChildOfClass("SurfaceAppearance")
		if surfaceAppearance then
			meshPartTextureId = surfaceAppearance.ColorMap
		end
	end

	if meshPartTextureId ~= specialMesh.TextureId then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch,
			nil,
			validationContext
		)
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
