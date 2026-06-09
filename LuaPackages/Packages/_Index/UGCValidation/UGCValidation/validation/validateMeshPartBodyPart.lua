--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagDebugUGCDisableSurfaceAppearanceTests = require(root.flags.getFFlagDebugUGCDisableSurfaceAppearanceTests)

local validateBodyPartMeshBounds = require(root.validation.validateBodyPartMeshBounds)
local validateAssetBounds = require(root.validation.validateAssetBounds)
local validateAccurateBoundingBoxRasterMethod = require(root.validation.validateAccurateBoundingBoxRasterMethod)
local validateBodyPartChildAttachmentBounds = require(root.validation.validateBodyPartChildAttachmentBounds)
local validateBodyPartChildAttachmentOrientations = require(root.validation.validateBodyPartChildAttachmentOrientations)
local validateBodyPartExtentsRelativeToParent = require(root.validation.validateBodyPartExtentsRelativeToParent)
local validateDependencies = require(root.validation.validateDependencies)
local validateDescendantMeshMetrics = require(root.validation.validateDescendantMeshMetrics)
local validateDescendantTextureMetrics = require(root.validation.validateDescendantTextureMetrics)
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validatePropertyRequirements = require(root.validation.validatePropertyRequirements)
local validateAttributes = require(root.validation.validateAttributes)
local validateHSR = require(root.validation.validateHSR)
local validateBodyPartCollisionFidelity = require(root.validation.validateBodyPartCollisionFidelity)
local validateModeration = require(root.validation.validateModeration)
local validateAssetTransparency = require(root.validation.validateAssetTransparency)
local validatePose = require(root.validation.validatePose)
local ValidateBodyBlockingTests = require(root.util.ValidateBodyBlockingTests)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)
local ValidateLegsSeparation = require(root.validation.ValidateLegsSeparation)
local ValidateTexturePack = require(root.validation.ValidateTexturePack)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ValidateMeshPartOnlySkinnedToR15 = require(root.validation.ValidateMeshPartOnlySkinnedToR15)
local BodyAssetMasksRenderer = require(root.util.bodyAssetMasksRenderer)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateTexturePack = require(root.flags.getFFlagUGCValidateTexturePack)
local getFFlagUGCValidationEnableR15plusSkinning = require(root.flags.getFFlagUGCValidationEnableR15plusSkinning)

local resetPhysicsData = require(root.util.resetPhysicsData)
local Types = require(root.util.Types)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)

type BodyAssetMasksRenderer = BodyAssetMasksRenderer.BodyAssetMasksRenderer

local function validateMeshPartBodyPart(
	inst: Instance,
	schema: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets
	local restrictedUserIds = validationContext.restrictedUserIds

	local validationResult = validateWithSchema(schema, inst, validationContext)
	if not validationResult.success then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartBodyPart_ValidateWithSchema, nil, validationContext)
		return false,
			{
				string.format("Body part '%s' does not follow R15 schema. The specific issues are: ", inst.Name),
				validationResult.message,
			}
	end

	if not getFFlagDebugUGCDisableSurfaceAppearanceTests() then
		local result, failureReasons = validateSurfaceAppearances(inst, validationContext)
		if not result then
			return result, failureReasons
		end
	end

	do
		local skipFlags = {
			skipExistenceCheck = getFFlagUGCValidateMigrateSchemaProperties()
				and getFFlagUGCValidationCombineEntrypointResults(),
			skipOwnershipCheck = getFFlagUGCValidateMigrateSchemaProperties()
				and getFFlagUGCValidationCombineEntrypointResults(),
		}
		local result, failureReasons = validateDependencies(inst, validationContext, skipFlags)
		if not result then
			return result, failureReasons
		end
	end

	--[[
		call resetPhysicsData() after checks above which are making sure mesh ids exist (as resetPhysicsData() uses meshIds) but before any checks
		for mesh size happen, as this removes physics data to ensure those size checks return accurate results
	]]
	local success, errorMessage = resetPhysicsData({ inst }, validationContext)
	if not success then
		return false, { errorMessage :: string }
	end

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		local sensibleSuccess, sensibleErrorMessages = ValidatePropertiesSensible.validate(inst, validationContext)
		if not sensibleSuccess then
			return false, sensibleErrorMessages
		end
	end

	do
		-- anything which would cause a crash later on, we check in here and exit early
		local successBlocking, errorMessageBlocking = ValidateBodyBlockingTests.validate(inst, validationContext)
		if not successBlocking then
			return false, errorMessageBlocking
		end
	end

	do
		local successValidateMeshSizeProperty, errors =
			ValidateMeshSizeProperty.validateBodyAsset(inst, validationContext)
		if not successValidateMeshSizeProperty then
			return false, errors
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, validationContext))

	if getFFlagUGCValidateTexturePack() then
		reasonsAccumulator:updateReasons(ValidateTexturePack.validate(inst, true, validationContext))
	end

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, validationContext))
	end
	reasonsAccumulator:updateReasons(validateBodyPartExtentsRelativeToParent.runValidation(inst, validationContext))

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(
			validateBodyPartChildAttachmentOrientations.runValidation(inst, validationContext)
		)
	end

	reasonsAccumulator:updateReasons(validatePose(inst, validationContext))

	reasonsAccumulator:updateReasons(validateAssetBounds(nil, inst, validationContext))
	reasonsAccumulator:updateReasons(ValidateLegsSeparation.validateAsset(inst, validationContext))
	local viewsForAsset = validateAccurateBoundingBoxRasterMethod.getBoundsViewsForAssetType(assetTypeEnum)
	local result = nil
	success, result = BodyAssetMasksRenderer.new(inst, viewsForAsset, validationContext)
	if success then
		local bodyAssetMasksWrapper = result :: BodyAssetMasksRenderer
		reasonsAccumulator:updateReasons(
			validateAccurateBoundingBoxRasterMethod.validate(inst, bodyAssetMasksWrapper, validationContext)
		)
	else
		reasonsAccumulator:updateReasons(success, result)
	end

	reasonsAccumulator:updateReasons(validateDescendantMeshMetrics(inst, validationContext))

	reasonsAccumulator:updateReasons(validateDescendantTextureMetrics(inst, validationContext))

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(validateHSR(inst, validationContext))
	end

	local startTime = tick()

	reasonsAccumulator:updateReasons(validateAssetTransparency(inst, validationContext))
	Analytics.recordScriptTime("validateAssetTransparency", startTime, validationContext)

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(validateMaterials(inst, validationContext))

		reasonsAccumulator:updateReasons(validatePropertyRequirements(inst, assetTypeEnum, validationContext))

		reasonsAccumulator:updateReasons(validateBodyPartCollisionFidelity(inst, validationContext))

		reasonsAccumulator:updateReasons(validateAttributes(inst, validationContext))
	end

	reasonsAccumulator:updateReasons(validateTags(inst, validationContext))

	if not getFFlagUGCValidationEnableR15plusSkinning() then
		if assetTypeEnum ~= Enum.AssetType.DynamicHead then
			reasonsAccumulator:updateReasons(
				ValidateMeshPartOnlySkinnedToR15.validateBodyParts(inst, validationContext)
			)
		end
	end

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		local checkModeration = not isServer
		if allowUnreviewedAssets then
			checkModeration = false
		end
		if checkModeration then
			reasonsAccumulator:updateReasons(validateModeration(inst, restrictedUserIds, validationContext))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartBodyPart
