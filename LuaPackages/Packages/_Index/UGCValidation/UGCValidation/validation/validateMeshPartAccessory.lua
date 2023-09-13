--!nonstrict
local root = script.Parent.Parent

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local validateWithSchema = require(root.util.validateWithSchema)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local getMeshSize = require(root.util.getMeshSize)

local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)

local function validateMeshPartAccessory(specialMeshAccessory, meshPartAccessory)
	if not meshPartAccessory then
		return false, { "Unable to download MeshPart accessory" }
	end

	-- we can assume these exist from checks in UGCValidationService.validate()
	local specialMeshHandle = specialMeshAccessory:FindFirstChild("Handle")
	local specialMesh = specialMeshHandle:FindFirstChildOfClass("SpecialMesh")
	local specialMeshAttachment = specialMeshHandle:FindFirstChildOfClass("Attachment")

	local schema = createMeshPartAccessorySchema(specialMeshAttachment.Name)

	local validationResult = validateWithSchema(schema, meshPartAccessory)
	if validationResult.success == false then
		return false, { validationResult.message }
	end

	-- validateWithSchema ensures this exists as a MeshPart
	local meshPartHandle = meshPartAccessory:FindFirstChild("Handle")

	if meshPartHandle.MeshId ~= specialMesh.MeshId then
		return false, { "MeshPart.MeshId did not match SpecialMesh.MeshId" }
	end

	if meshPartHandle.TextureID ~= specialMesh.TextureId then
		return false, { "MeshPart.TextureID did not match SpecialMesh.TextureId" }
	end

	local meshId = meshPartHandle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshId)
	if not meshSizeSuccess then
		return false, { "Failed to read mesh" }
	end
	local meshScale = meshPartHandle.Size / meshSize

	if getFFlagUGCValidateThumbnailConfiguration() then
		local success, reasons = validateThumbnailConfiguration(meshPartAccessory, meshPartHandle, meshId, meshScale)
		if not success then
			return false, reasons
		end
	end

	return true
end

return validateMeshPartAccessory
