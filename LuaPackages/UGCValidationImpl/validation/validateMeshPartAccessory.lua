local root = script.Parent.Parent

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local validateWithSchema = require(root.util.validateWithSchema)

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

	return true
end

return validateMeshPartAccessory
