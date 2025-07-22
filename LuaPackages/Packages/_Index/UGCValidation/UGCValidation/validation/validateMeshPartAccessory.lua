local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validatePropertyRequirements = require(root.validation.validatePropertyRequirements)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateSurfaceAppearanceTextureSize = require(root.validation.validateSurfaceAppearanceTextureSize)
local validateSurfaceAppearanceTransparency = require(root.validation.validateSurfaceAppearanceTransparency)
local validateScaleType = require(root.validation.validateScaleType)
local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateRigidMeshNotSkinned = require(root.validation.validateRigidMeshNotSkinned)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagMeshPartAccessoryPBRSupport = require(root.flags.getFFlagMeshPartAccessoryPBRSupport)
local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagCheckAccessoryMeshSize = require(root.flags.getFFlagCheckAccessoryMeshSize)

local getEngineFeatureEngineUGCValidateRigidNonSkinned =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)

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

	success, reasons = validateSingleInstance(instances, validationContext)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createMeshPartAccessorySchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance, validationContext)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local hasMeshContent = meshInfo.contentId ~= nil and meshInfo.contentId ~= ""
	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		if not meshInfo.contentId then
			hasMeshContent = false
			Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_NoMeshId, nil, validationContext)
			reasonsAccumulator:updateReasons(false, {
				string.format(
					"Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again.",
					handle:GetFullName()
				),
			})
		else
			Analytics.reportFailure(
				Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
						instance.Name
					),
				}
		end
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh
	hasMeshContent = true

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	local getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
	-- if validateSurfaceAppearances is enabled, TextureId is optional
	if not getEditableImageSuccess and not getFFlagMeshPartAccessoryPBRSupport() then
		return false,
			{
				string.format(
					"Failed to load texture for accessory '%s'. Make sure texture exists and try again.",
					instance.Name
				),
			}
	end

	textureInfo.editableImage = editableImage :: EditableImage

	local meshSizeSuccess, meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)

	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
					instance.Name
				),
			}
	end

	local meshScale = getExpectedPartSize(handle, validationContext) / meshSize

	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	reasonsAccumulator:updateReasons(validateMaterials(instance, validationContext))

	reasonsAccumulator:updateReasons(validatePropertyRequirements(instance, nil, validationContext))

	reasonsAccumulator:updateReasons(validateTags(instance, validationContext))

	reasonsAccumulator:updateReasons(validateAttributes(instance, validationContext))

	reasonsAccumulator:updateReasons(
		validateTextureSize(textureInfo, getFFlagMeshPartAccessoryPBRSupport(), validationContext)
	)

	if getFFlagUGCValidateThumbnailConfiguration() then
		reasonsAccumulator:updateReasons(
			validateThumbnailConfiguration(instance, handle, meshInfo, meshScale, validationContext)
		)
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(instance, {}, validationContext))
	end

	if hasMeshContent then
		reasonsAccumulator:updateReasons(validateTotalSurfaceArea(meshInfo, meshScale, validationContext))

		if getFFlagCheckAccessoryMeshSize() then
			reasonsAccumulator:updateReasons(ValidateMeshSizeProperty.validateSingleMeshPart(handle, validationContext))
		end

		reasonsAccumulator:updateReasons(
			validateMeshBounds(
				handle,
				attachment,
				meshInfo,
				meshScale,
				boundsInfo,
				assetTypeEnum.Name,
				validationContext
			)
		)

		reasonsAccumulator:updateReasons(validateMeshTriangles(meshInfo, nil, validationContext))

		if getFFlagUGCValidateMeshVertColors() then
			reasonsAccumulator:updateReasons(validateMeshVertColors(meshInfo, false, validationContext))
		end

		reasonsAccumulator:updateReasons(validateCoplanarIntersection(meshInfo, meshScale, validationContext))
	end

	if getFFlagMeshPartAccessoryPBRSupport() then
		reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance, validationContext))
		reasonsAccumulator:updateReasons(validateSurfaceAppearanceTextureSize(instance, validationContext))
		reasonsAccumulator:updateReasons(validateSurfaceAppearanceTransparency(instance, validationContext))
	end

	if getEngineFeatureEngineUGCValidateRigidNonSkinned() and not validationContext.allowEditableInstances then
		reasonsAccumulator:updateReasons(validateRigidMeshNotSkinned(meshInfo.contentId, validationContext))
	end

	local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
	if partScaleType and partScaleType:IsA("StringValue") then
		reasonsAccumulator:updateReasons(validateScaleType(partScaleType, validationContext))
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartAccessory
