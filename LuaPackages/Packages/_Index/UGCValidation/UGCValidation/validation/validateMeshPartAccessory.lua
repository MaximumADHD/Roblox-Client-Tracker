local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)

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
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateSurfaceAppearanceTextureSize = require(root.validation.validateSurfaceAppearanceTextureSize)
local validateSurfaceAppearanceTransparency = require(root.validation.validateSurfaceAppearanceTransparency)
local validateScaleType = require(root.validation.validateScaleType)
local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateRigidMeshNotSkinned = require(root.validation.validateRigidMeshNotSkinned)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)
local validateDependencies = require(root.validation.validateDependencies)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local pcallDeferred = require(root.util.pcallDeferred)
local getAccessoryScale = require(root.util.getAccessoryScale)
local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)

local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)

local getEngineFeatureEngineUGCValidateRigidNonSkinned =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)
local getFFlagUGCValidateAccessoriesRCCOwnership = require(root.flags.getFFlagUGCValidateAccessoriesRCCOwnership)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateAccessoryAssetTextureLimit = require(root.flags.getFFlagUGCValidateAccessoryAssetTextureLimit)

local FFlagMeshpartAccessoryCheckAvatarPartScaleType =
	game:DefineFastFlag("MeshpartAccessoryCheckAvatarPartScaleType", false)

local function validateMeshPartAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateMeshPartAccessory"
	)
	local instances = validationContext.instances :: { Instance }
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	if not RigidOrLayeredAllowed.isRigidAccessoryAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing.",
					assetTypeEnum.Name
				),
			}
	end

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

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		success, reasons = ValidatePropertiesSensible.validate(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	if getFFlagUGCValidateAccessoriesRCCOwnership() then
		success, reasons = validateDependencies(instance, validationContext)
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

	if handle.DoubleSided then
		reasonsAccumulator:updateReasons(false, {
			string.format(
				"MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories.",
				handle:GetFullName()
			),
		})
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_DoubleSided, nil, validationContext)
	end

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

	-- TextureId is optional, if a SurfaceAppearance is present instead.
	local _getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
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

	local textureSizeLimit = nil
	if getFFlagUGCValidateAccessoryAssetTextureLimit() then
		textureSizeLimit = ConstantsInterface.getTextureLimit(assetTypeEnum, handle, textureInfo.fieldName)
	end
	reasonsAccumulator:updateReasons(
		validateTextureSize(textureInfo, --[[ allowNoTexture = ]] true, validationContext, textureSizeLimit)
	)

	reasonsAccumulator:updateReasons(
		validateThumbnailConfiguration(instance, handle, meshInfo, meshScale, validationContext)
	)

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(instance, {}, validationContext))
	end

	if FFlagMeshpartAccessoryCheckAvatarPartScaleType then
		if handle:FindFirstChild("AvatarPartScaleType") then
			local accessoryScale = getAccessoryScale(handle, attachment)
			boundsInfo = {
				size = boundsInfo.size / accessoryScale,
				offset = if boundsInfo.offset then boundsInfo.offset / accessoryScale else nil,
			}
		end
	end

	if hasMeshContent then
		reasonsAccumulator:updateReasons(validateTotalSurfaceArea(meshInfo, meshScale, validationContext))
		reasonsAccumulator:updateReasons(ValidateMeshSizeProperty.validateSingleMeshPart(handle, validationContext))

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

	reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance, validationContext))
	reasonsAccumulator:updateReasons(validateSurfaceAppearanceTextureSize(instance, validationContext))
	reasonsAccumulator:updateReasons(validateSurfaceAppearanceTransparency(instance, validationContext))

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
