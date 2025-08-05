--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagDebugUGCDisableSurfaceAppearanceTests = require(root.flags.getFFlagDebugUGCDisableSurfaceAppearanceTests)
local getFFlagUGCValidateMeshMin = require(root.flags.getFFlagUGCValidateMeshMin)
local getFFlagUGCValidateIndividualPartBBoxes = require(root.flags.getFFlagUGCValidateIndividualPartBBoxes)
local getEngineFeatureUGCValidateBodyPartCageMeshDistance =
	require(root.flags.getEngineFeatureUGCValidateBodyPartCageMeshDistance)
local getFFlagRefactorBodyAttachmentOrientationsCheck =
	require(root.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)
local getFFlagUGCValidateBoundsManipulation = require(root.flags.getFFlagUGCValidateBoundsManipulation)
local getFFlagCheckBodyPartMeshSize = require(root.flags.getFFlagCheckBodyPartMeshSize)

local validateBodyPartMeshBounds = require(root.validation.validateBodyPartMeshBounds)
local validateAssetBounds = require(root.validation.validateAssetBounds)
local validateAccurateBoundingBox = require(root.validation.validateAccurateBoundingBox)
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
local ValidateAssetBodyPartCages = require(root.validation.ValidateAssetBodyPartCages)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local validateBodyPartVertsSkinnedToR15 = require(root.validation.validateBodyPartVertsSkinnedToR15)
local getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15 =
	require(root.flags.getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15)

local resetPhysicsData = require(root.util.resetPhysicsData)
local Types = require(root.util.Types)

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
		local result, failureReasons = validateDependencies(inst, validationContext)
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

	if getFFlagUGCValidateMeshMin() then
		-- anything which would cause a crash later on, we check in here and exit early
		local successBlocking, errorMessageBlocking = ValidateBodyBlockingTests.validate(inst, validationContext)
		if not successBlocking then
			return false, errorMessageBlocking
		end
	end

	if getFFlagCheckBodyPartMeshSize() then
		local successValidateMeshSizeProperty, errors =
			ValidateMeshSizeProperty.validateBodyAsset(inst, validationContext)
		if not successValidateMeshSizeProperty then
			return false, errors
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, validationContext))

	if getEngineFeatureUGCValidateBodyPartCageMeshDistance() then
		reasonsAccumulator:updateReasons(ValidateAssetBodyPartCages.validateSingleBodyPart(inst, validationContext))
	end

	reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, validationContext))
	if getFFlagUGCValidateIndividualPartBBoxes() then
		reasonsAccumulator:updateReasons(validateBodyPartExtentsRelativeToParent.runValidation(inst, validationContext))
	end
	if getFFlagRefactorBodyAttachmentOrientationsCheck() then
		reasonsAccumulator:updateReasons(
			validateBodyPartChildAttachmentOrientations.runValidation(inst, validationContext)
		)
	end

	reasonsAccumulator:updateReasons(validatePose(inst, validationContext))

	reasonsAccumulator:updateReasons(validateAssetBounds(nil, inst, validationContext))

	if getFFlagUGCValidateBoundsManipulation() then
		reasonsAccumulator:updateReasons(validateAccurateBoundingBox(inst, validationContext))
	end

	reasonsAccumulator:updateReasons(validateDescendantMeshMetrics(inst, validationContext))

	reasonsAccumulator:updateReasons(validateDescendantTextureMetrics(inst, validationContext))

	reasonsAccumulator:updateReasons(validateHSR(inst, validationContext))

	local startTime = tick()
	reasonsAccumulator:updateReasons(validateAssetTransparency(inst, validationContext))
	Analytics.recordScriptTime("validateAssetTransparency", startTime, validationContext)

	reasonsAccumulator:updateReasons(validateMaterials(inst, validationContext))

	reasonsAccumulator:updateReasons(validatePropertyRequirements(inst, assetTypeEnum, validationContext))

	reasonsAccumulator:updateReasons(validateBodyPartCollisionFidelity(inst, validationContext))

	reasonsAccumulator:updateReasons(validateTags(inst, validationContext))

	reasonsAccumulator:updateReasons(validateAttributes(inst, validationContext))

	if getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15() and assetTypeEnum ~= Enum.AssetType.DynamicHead then
		reasonsAccumulator:updateReasons(validateBodyPartVertsSkinnedToR15(inst, validationContext))
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(inst, restrictedUserIds, validationContext))
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartBodyPart
