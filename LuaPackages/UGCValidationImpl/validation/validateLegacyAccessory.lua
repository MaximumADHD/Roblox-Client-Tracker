local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateHandleSize = require(root.validation.validateHandleSize)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)

local createAccessorySchema = require(root.util.createAccessorySchema)
local getAttachment = require(root.util.getAttachment)

local function validateLegacyAccessory(instances: {Instance}, assetTypeEnum: Enum.AssetType, isServer: boolean): (boolean, {string}?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: {string}?

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createAccessorySchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance)
	if not success then
		return false, reasons
	end

	local handle = instance:FindFirstChild("Handle") :: Part
	local mesh = handle:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
	local meshId = mesh.MeshId
	local meshScale = mesh.Scale
	local textureId = mesh.TextureId
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	success, reasons = validateMaterials(instance)
	if not success then
		return false, reasons
	end

	success, reasons = validateProperties(instance)
	if not success then
		return false, reasons
	end

	success, reasons = validateTags(instance)
	if not success then
		return false, reasons
	end

	if game:GetFastFlag("UGCValidateAttributes") then
		success, reasons = validateAttributes(instance)
		if not success then
			return false, reasons
		end
	end

	if game:GetFastFlag("UGCValidateMeshBounds") then
		success, reasons = validateMeshBounds(handle, attachment, meshId, meshScale, assetTypeEnum, boundsInfo)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateTextureSize(textureId)
	if not success then
		return false, reasons
	end

	if game:GetFastFlag("UGCValidateHandleSize") then
		success, reasons = validateHandleSize(handle, meshId, meshScale)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateMeshTriangles(meshId)
	if not success then
		return false, reasons
	end

	if game:GetFastFlag("UGCValidateMeshVertColors") then
		success, reasons = validateMeshVertColors(meshId)
		if not success then
			return false, reasons
		end
	end

	if not isServer then
		success, reasons = validateModeration(instance)
		if not success then
			return false, reasons
		end
	end

	return true
end

return validateLegacyAccessory
