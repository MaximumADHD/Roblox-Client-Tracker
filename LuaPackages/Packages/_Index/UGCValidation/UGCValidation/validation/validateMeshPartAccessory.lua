--!strict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
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
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateScaleType = require(root.validation.validateScaleType)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagUGCValidateAccessoriesScaleType = require(root.flags.getFFlagUGCValidateAccessoriesScaleType)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateMeshPartAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateMeshPartAccessory"
	)
	local instances = validationContext.instances :: { Instance }
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createMeshPartAccessorySchema(assetInfo.attachmentNames)

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

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
	} :: Types.MeshInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			return false, { "Failed to load mesh data" }
		end

		meshInfo.editableMesh = editableMesh
	end

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableImageSuccess, editableImage
		if textureId ~= "" then
			getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
			if not getEditableImageSuccess then
				return false, { "Failed to load texture data" }
			end

			textureInfo.editableImage = editableImage
		end
	end

	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshInfo)
	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh)
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateMaterials(instance))

	reasonsAccumulator:updateReasons(validateProperties(instance))

	reasonsAccumulator:updateReasons(validateTags(instance))

	reasonsAccumulator:updateReasons(validateAttributes(instance))

	reasonsAccumulator:updateReasons(validateTextureSize(textureInfo, true, validationContext))

	if getFFlagUGCValidateThumbnailConfiguration() then
		reasonsAccumulator:updateReasons(validateThumbnailConfiguration(instance, handle, meshInfo, meshScale))
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(instance, {}))
	end

	reasonsAccumulator:updateReasons(
		validateMeshBounds(handle, attachment, meshInfo, meshScale, boundsInfo, assetTypeEnum.Name, validationContext)
	)

	reasonsAccumulator:updateReasons(validateMeshTriangles(meshInfo, nil, validationContext))

	if game:GetFastFlag("UGCValidateMeshVertColors") then
		reasonsAccumulator:updateReasons(validateMeshVertColors(meshInfo, false, validationContext))
	end

	reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance))

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			reasonsAccumulator:updateReasons(validateScaleType(partScaleType))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateMeshPartAccessory(
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

	local schema = createMeshPartAccessorySchema(assetInfo.attachmentNames)

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

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshId = handle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize :: any, meshId)
	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh)
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local textureId = handle.TextureID
	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	if isServer then
		local textureSuccess = true
		local meshSuccess
		local _canLoadFailedReason: any = {}
		if textureId ~= "" then
			textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
		end
		meshSuccess, _canLoadFailedReason = validateCanLoad(meshId)
		if not textureSuccess or not meshSuccess then
			-- Failure to load assets should be treated as "inconclusive".
			-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
			error("Failed to load asset")
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateMaterials(instance))

	reasonsAccumulator:updateReasons(validateProperties(instance))

	reasonsAccumulator:updateReasons(validateTags(instance))

	reasonsAccumulator:updateReasons(validateAttributes(instance))

	reasonsAccumulator:updateReasons((validateTextureSize :: any)(textureId, true))

	if getFFlagUGCValidateThumbnailConfiguration() then
		reasonsAccumulator:updateReasons((validateThumbnailConfiguration :: any)(instance, handle, meshId, meshScale))
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons((validateModeration :: any)(instance, {}))
	end

	if meshId == "" then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_NoMeshId)
		reasonsAccumulator:updateReasons(false, { "Mesh must contain valid MeshId" })
	else
		reasonsAccumulator:updateReasons(
			(validateMeshBounds :: any)(handle, attachment, meshId, meshScale, boundsInfo, assetTypeEnum.Name)
		)

		reasonsAccumulator:updateReasons((validateMeshTriangles :: any)(meshId))

		if game:GetFastFlag("UGCValidateMeshVertColors") then
			reasonsAccumulator:updateReasons((validateMeshVertColors :: any)(meshId, false))
		end
	end

	reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance))

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			reasonsAccumulator:updateReasons(validateScaleType(partScaleType))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return if getFFlagUseUGCValidationContext()
	then validateMeshPartAccessory
	else DEPRECATED_validateMeshPartAccessory :: never
