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
local validateHSR = require(root.validation.validateHSR)

local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)

local function buildAllowedAssetTypeIdSet()
	local allowedAssetTypeIdSet = {}
	for match in string.gmatch(game:GetFastString("UGCLCAllowedAssetTypeIds"), "[^,]+") do
		local value: number? = tonumber(match)
		if value ~= nil then
			allowedAssetTypeIdSet[value] = true
		end
	end
	return allowedAssetTypeIdSet
end

local function validateLayeredClothingAccessory(instances: {Instance}, assetTypeEnum: Enum.AssetType, isServer: boolean): (boolean, {string}?)
	if game:GetFastFlag("UGCLCAssetTypeIdsGuard") then
		local allowedAssetTypeIdSet = buildAllowedAssetTypeIdSet()
		if not allowedAssetTypeIdSet[assetTypeEnum.Value] then
			return false, { "Asset type cannot be validated as Layered Clothing" }
		end
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: {string}?

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createLayeredClothingSchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance)
	if not success then
		return false, reasons
	end

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshId = handle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshId)
	if not meshSizeSuccess then
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local textureId = handle.TextureID
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

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
		success, reasons = validateMeshBounds(handle, attachment, meshId, meshScale, assetTypeEnum, Constants.LC_BOUNDS)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateTextureSize(textureId, true)
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

	if game:GetFastFlag("UGCValidateHSR") then
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
		success, reasons = validateHSR(wrapLayer)
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

return validateLayeredClothingAccessory
