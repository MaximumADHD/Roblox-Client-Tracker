--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateCanLoad = require(root.validation.validateCanLoad)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateScaleType = require(root.validation.validateScaleType)

local createAccessorySchema = require(root.util.createAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getAccessoryScale = require(root.util.getAccessoryScale)

local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagUGCValidateAccessoriesScaleType = require(root.flags.getFFlagUGCValidateAccessoriesScaleType)
local FFlagLegacyAccessoryCheckAvatarPartScaleType =
	game:DefineFastFlag("LegacyAccessoryCheckAvatarPartScaleType", false)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateLegacyAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

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

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: Part
	local mesh = handle:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
	local meshInfo = {
		fullName = mesh:GetFullName(),
		fieldName = "MeshId",
		contentId = mesh.MeshId,
	} :: Types.MeshInfo

	local meshScale = mesh.Scale
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(mesh, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			return false, { "Failed to load mesh data" }
		end

		meshInfo.editableMesh = editableMesh
	end

	local textureInfo = {
		fullName = mesh:GetFullName(),
		fieldName = "TextureId",
		contentId = mesh.TextureId,
	} :: Types.TextureInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableImageSuccess, editableImage = getEditableImageFromContext(mesh, "TextureId", validationContext)
		if not getEditableImageSuccess then
			return false, { "Failed to load texture data" }
		end

		textureInfo.editableImage = editableImage
	end

	local failedReason: any = {}
	local validationResult = true
	reasons = {}
	success, failedReason = validateMaterials(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateProperties(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTags(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateAttributes(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTextureSize(textureInfo, nil, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			success, failedReason = validateScaleType(partScaleType)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if getFFlagUGCValidateThumbnailConfiguration() then
		success, failedReason = validateThumbnailConfiguration(instance, handle, meshInfo, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = validateModeration(instance, {})
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if FFlagLegacyAccessoryCheckAvatarPartScaleType and handle:FindFirstChild("AvatarPartScaleType") then
		local accessoryScale = getAccessoryScale(handle, attachment)
		boundsInfo = {
			size = boundsInfo.size / accessoryScale,
			offset = if boundsInfo.offset then boundsInfo.offset / accessoryScale else nil,
		}
	end

	success, failedReason =
		validateMeshBounds(handle, attachment, meshInfo, meshScale, boundsInfo, assetTypeEnum.Name, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateMeshTriangles(meshInfo, nil, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if game:GetFastFlag("UGCValidateMeshVertColors") then
		success, failedReason = validateMeshVertColors(meshInfo, false, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	return validationResult, reasons
end

local function DEPRECATED_validateLegacyAccessory(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

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

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: Part
	local mesh = handle:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
	local meshId = mesh.MeshId
	local meshScale = mesh.Scale
	local textureId = mesh.TextureId
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	if isServer then
		local textureSuccess
		local meshSuccess
		local _canLoadFailedReason: any = {}
		textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
		meshSuccess, _canLoadFailedReason = validateCanLoad(meshId)
		if not textureSuccess or not meshSuccess then
			-- Failure to load assets should be treated as "inconclusive".
			-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
			error("Failed to load asset")
		end
	end

	local failedReason: any = {}
	local validationResult = true
	reasons = {}
	success, failedReason = validateMaterials(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateProperties(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTags(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateAttributes(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = (validateTextureSize :: any)(textureId)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			success, failedReason = validateScaleType(partScaleType)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if getFFlagUGCValidateThumbnailConfiguration() then
		success, failedReason = validateThumbnailConfiguration(instance, handle, meshId, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = (validateModeration :: any)(instance, {})
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if meshId == "" then
		table.insert(reasons, "Mesh must contain valid MeshId")
		validationResult = false
	else
		if FFlagLegacyAccessoryCheckAvatarPartScaleType and handle:FindFirstChild("AvatarPartScaleType") then
			local accessoryScale = getAccessoryScale(handle, attachment)
			boundsInfo = {
				size = boundsInfo.size / accessoryScale,
				offset = if boundsInfo.offset then boundsInfo.offset / accessoryScale else nil,
			}
		end
		success, failedReason = (validateMeshBounds :: any)(
			handle,
			attachment,
			meshId,
			meshScale,
			boundsInfo,
			assetTypeEnum.Name
		)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		success, failedReason = (validateMeshTriangles :: any)(meshId)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if game:GetFastFlag("UGCValidateMeshVertColors") then
			success, failedReason = (validateMeshVertColors :: any)(meshId, false)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end
	return validationResult, reasons
end

return if getFFlagUseUGCValidationContext()
	then validateLegacyAccessory
	else DEPRECATED_validateLegacyAccessory :: never
