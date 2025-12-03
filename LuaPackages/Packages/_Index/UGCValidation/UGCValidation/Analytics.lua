local root = script.Parent

local Types = require(root.util.Types)

local RunService = game:GetService("RunService")
local UGCValidationService = game:GetService("UGCValidationService")
local StudioService = if RunService:IsStudio() then game:GetService("StudioService") else nil
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local getEngineFeatureEngineUGCValidationReportScriptTime =
	require(root.flags.getEngineFeatureEngineUGCValidationReportScriptTime)
local getEngineFeatureUGCValidateCageMeshDistance = require(root.flags.getEngineFeatureUGCValidateCageMeshDistance)
local getEngineFeatureEngineUGCValidationIECTelemetry =
	require(root.flags.getEngineFeatureEngineUGCValidationIECTelemetry)

local getEngineFeatureEngineUGCValidationCageUVDuplicates =
	require(root.flags.getEngineFeatureEngineUGCValidationCageUVDuplicates)

local getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity =
	require(root.flags.getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity)

local getEngineFeatureEngineUGCValidateLCCagingRelevancy =
	require(root.flags.getEngineFeatureEngineUGCValidateLCCagingRelevancy)

local getEngineFeatureEngineUGCValidateRigidNonSkinned =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)

local getFFlagUGCValidatePartSizeWithinRenderSizeLimits =
	require(root.flags.getFFlagUGCValidatePartSizeWithinRenderSizeLimits)

local getFFlagUGCValidateMeshBBoxIsCentered = require(root.flags.getFFlagUGCValidateMeshBBoxIsCentered)
local getFFlagUGCValidateLCHandleScale = require(root.flags.getFFlagUGCValidateLCHandleScale)
local getFFlagUGCValidatePartMass = require(root.flags.getFFlagUGCValidatePartMass)
local getFFlagUGCValidateIndividualPartBBoxes = require(root.flags.getFFlagUGCValidateIndividualPartBBoxes)
local getFFlagRefactorBodyAttachmentOrientationsCheck =
	require(root.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)
local getFFlagValidateDeformedLayeredClothingIsInBounds =
	require(root.flags.getFFlagValidateDeformedLayeredClothingIsInBounds)
local getFFlagReportVisibilityAndIslandTelemetry = require(root.flags.getFFlagReportVisibilityAndIslandTelemetry)

local getEngineFeatureUGCValidationFullBodyFacs = require(root.flags.getEngineFeatureUGCValidationFullBodyFacs)
local getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15 =
	require(root.flags.getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15)
local getEngineUGCValidateRelativeSkinningTransfer = require(root.flags.getEngineUGCValidateRelativeSkinningTransfer)
local getEngineFeatureEngineUGCIsValidR15AnimationRigCheck =
	require(root.flags.getEngineFeatureEngineUGCIsValidR15AnimationRigCheck)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateCheckHSRFileDataFix = require(root.flags.getFFlagUGCValidateCheckHSRFileDataFix)

local getFFlagUGCValidationEyebrowEyelashSupport = require(root.flags.getFFlagUGCValidationEyebrowEyelashSupport)
local getFFlagUGCValidateCurveAnimRotationSpeed = require(root.flags.getFFlagUGCValidateCurveAnimRotationSpeed)

local function joinTables(...)
	local result = {}
	for i = 1, select("#", ...) do
		for k, v in select(i, ...) do
			result[k] = v
		end
	end
	return result
end

local Analytics = {}

Analytics.ErrorType = {
	resetPhysicsData_FailedToLoadMesh = "resetPhysicsData_FailedToLoadMesh",
	validateAccurateBoundingBox = if getFFlagReportVisibilityAndIslandTelemetry()
		then "validateAccurateBoundingBox"
		else nil,
	validateAssetBounds_AssetSizeTooBig = "validateAssetBounds_AssetSizeTooBig",
	validateAssetBounds_AssetSizeTooSmall = "validateAssetBounds_AssetSizeTooSmall",
	validateAssetBounds_InconsistentAvatarPartScaleType = "validateAssetBounds_InconsistentAvatarPartScaleType",
	validateScaleType_InvalidAvatarPartScaleType = "validateScaleType_InvalidAvatarPartScaleType",
	validateAssetCreator_DependencyNotOwnedByCreator = "validateAssetCreator_DependencyNotOwnedByCreator",
	validateAssetCreator_FailedToLoad = "validateAssetCreator_FailedToLoad",
	validateAssetCreator_TooManyDependencies = "validateAssetCreator_TooManyDependencies",
	validateAssetTransparency_AssetTransparencyThresholds = if getFFlagReportVisibilityAndIslandTelemetry()
		then "validateAssetTransparency_AssetTransparencyThresholds"
		else nil,
	validateAttributes = "validateAttributes",
	validateBodyPartChildAttachmentBounds_AttachmentRotated = if getFFlagRefactorBodyAttachmentOrientationsCheck()
		then nil
		else "validateBodyPartChildAttachmentBounds_AttachmentRotated",
	validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition = "validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition",
	validateBodyPartCollisionFidelity = "validateBodyPartCollisionFidelity",
	validateBodyPartMeshBounds_FailedToLoadMesh = "validateBodyPartMeshBounds_FailedToLoadMesh",
	validateCageUVs_TestExecutedSuccessfully = "validateCageUVs_TestExecutedSuccessfully",
	validateCageUVs_TestPassed = "validateCageUVs_TestPassed",
	validateCageUVTriangleArea_FailedToLoadMesh = "validateCageUVTriangleArea_FailedToLoadMesh",
	validateCageUVTriangleArea_ZeroAreaTriangle = "validateCageUVTriangleArea_ZeroAreaTriangle",
	validateCageUVValues_FailedToLoadMesh = "validateCageUVValues_FailedToLoadMesh",
	validateCageUVValues_UnexpectedUVValue = "validateCageUVValues_UnexpectedUVValue",
	validateCanLoad = "validateCanLoad",
	validateDependencies_IsNotApproved = "validateDependencies_IsNotApproved",
	validateDependencies_IsRestrictedUserId = "validateDependencies_IsRestrictedUserId",
	validateDependencies_IsReviewing = "validateDependencies_IsReviewing",
	validateDependencies_ParseFailure = "validateDependencies_ParseFailure",
	validateDescendantMeshMetrics_FailedToCalculateTriangles = "validateDescendantMeshMetrics_FailedToCalculateTriangles",
	validateDescendantMeshMetrics_FailedToLoadMesh = "validateDescendantMeshMetrics_FailedToLoadMesh",
	validateDescendantMeshMetrics_HasSkinnedMeshMismatch = "validateDescendantMeshMetrics_HasSkinnedMeshMismatch",
	validateDescendantMeshMetrics_NoSkinningInfo = "validateDescendantMeshMetrics_NoSkinningInfo",
	validateDescendantMeshMetrics_TooFarFromOrigin = "validateDescendantMeshMetrics_TooFarFromOrigin",
	validateDescendantMeshMetrics_TooManyTriangles = "validateDescendantMeshMetrics_TooManyTriangles",
	validateDynamicHeadMeshPartFormat_FailedToLoadMesh = "validateDynamicHeadMeshPartFormat_FailedToLoadMesh",
	validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh = "validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh",
	validateFullBody_IncorrectAssetTypeSet = "validateFullBody_IncorrectAssetTypeSet",
	validateFullBody_InstancesMissing = "validateFullBody_InstancesMissing",
	validateFullBody_MeshIdsMissing = "validateFullBody_MeshIdsMissing",
	validateHSR_HSRDataNotReady = "validateHSR_HSRDataNotReady",
	validateHSR_NoWrapLayer = "validateHSR_NoWrapLayer",
	validateInstanceTree = "validateInstanceTree",
	validateInstanceTree_InvalidDescendants = "validateInstanceTree_InvalidDescendants",
	validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing = "validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing",
	validateLayeredClothingAccessory_FailedToLoadMesh = "validateLayeredClothingAccessory_FailedToLoadMesh",
	validateLayeredClothingAccessory_NoInnerCageId = "validateLayeredClothingAccessory_NoInnerCageId",
	validateLayeredClothingAccessory_NoMeshId = "validateLayeredClothingAccessory_NoMeshId",
	validateLayeredClothingAccessory_NoOuterCageId = "validateLayeredClothingAccessory_NoOuterCageId",
	validateLayeredClothingAccessory_NoWrapLayer = "validateLayeredClothingAccessory_NoWrapLayer",
	validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch = "validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch",
	validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch = "validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch",
	validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory = "validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory",
	validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch = "validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch",
	validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch = "validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch",
	validateLimbsAndTorso_FolderInfoMismatch = "validateLimbsAndTorso_FolderInfoMismatch",
	validateLimbsAndTorso_R6FolderHasChildren = "validateLimbsAndTorso_R6FolderHasChildren",
	validateLimbsAndTorso_TopLevelFolders = "validateLimbsAndTorso_TopLevelFolders",
	validateMaterials = "validateMaterials",
	validateMeshBounds_FailedToExecute = "validateMeshBounds_FailedToExecute",
	validateMeshBounds_FailedToLoadMesh = "validateMeshBounds_FailedToLoadMesh",
	validateMeshBounds_TooLarge = "validateMeshBounds_TooLarge",
	validateMeshComparison = "validateMeshComparison",
	validateMeshPartAccessory_DoubleSided = "validateMeshPartAccessory_DoubleSided",
	validateMeshPartAccessory_FailedToLoadMesh = "validateMeshPartAccessory_FailedToLoadMesh",
	validateMeshPartAccessory_NoMeshId = "validateMeshPartAccessory_NoMeshId",
	validateMeshPartBodyPart_ValidateWithSchema = "validateMeshPartBodyPart_ValidateWithSchema",
	validateMeshTriangleArea_FailedToLoadMesh = "validateMeshTriangleArea_FailedToLoadMesh",
	validateMeshTriangleArea_NoArea = "validateMeshTriangleArea_NoArea",
	validateMeshTriangles_FailedToExecute = "validateMeshTriangles_FailedToExecute",
	validateMeshTriangles_FailedToLoadMesh = "validateMeshTriangles_FailedToLoadMesh",
	validateMeshTriangles_TooManyTriangles = "validateMeshTriangles_TooManyTriangles",
	validateMeshVertexColors_FailedToLoadMesh = "validateMeshVertexColors_FailedToLoadMesh",
	validateMeshVertexColors_NonNeutralVertexColors = "validateMeshVertexColors_NonNeutralVertexColors",
	validateModeration_AssetsHaveNotPassedModeration = "validateModeration_AssetsHaveNotPassedModeration",
	validateModeration_CouldNotFetchModerationDetails = "validateModeration_CouldNotFetchModerationDetails",
	validateModeration_FailedToParse = "validateModeration_FailedToParse",
	validateModeration_ValidateUser = "validateModeration_ValidateUser",
	validatePackage_FailedToParse = "validatePackage_FailedToParse",
	validateProperties_PropertyDoesNotExist = "validateProperties_PropertyDoesNotExist",
	validateProperties_PropertyMismatch = "validateProperties_PropertyMismatch",
	validateSingleInstance_MultipleInstances = "validateSingleInstance_MultipleInstances",
	validateSingleInstance_ZeroInstances = "validateSingleInstance_ZeroInstances",
	validateSurfaceAppearances_InvalidAlphaMode = "validateSurfaceAppearances_InvalidAlphaMode",
	validateSurfaceAppearances_MeshPartHasTexture = "validateSurfaceAppearances_MeshPartHasTexture",
	validateSurfaceAppearances_MissingSurfaceAppearance = "validateSurfaceAppearances_MissingSurfaceAppearance",
	validateTags = "validateTags",
	validateTextureSize_FailedToExecute = "validateTextureSize_FailedToExecute",
	validateTextureSize_FailedToLoadTexture = "validateTextureSize_FailedToLoadTexture",
	validateTextureSize_InvalidTextureId = "validateTextureSize_InvalidTextureId",
	validateTextureSize_TextureTooBig = "validateTextureSize_TextureTooBig",
	validateTextureTransparency_InvalidTextureId = "validateTextureTransparency_InvalidTextureId",
	validateTextureTransparency_TransparentTexture = "validateTextureTransparency_TransparentTexture",
	validateThumbnailConfiguration_InvalidTarget = "validateThumbnailConfiguration_InvalidTarget",
	validateThumbnailConfiguration_OutsideView = "validateThumbnailConfiguration_OutsideView",
	validateVertexDensity_FailedToExecute = "validateVertexDensity_FailedToExecute",
	validateVertexDensity_MaxDensityExceeded = "validateVertexDensity_MaxDensityExceeded",
	validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls = "validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls",
	validateRenderMeshInsideOuterCageMesh_FailedToExecute = "validateRenderMeshInsideOuterCageMesh_FailedToExecute",
	validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded = "validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded",
	validateLayeredClothingAccessory_CageOriginOutOfBounds = "validateLayeredClothingAccessory_CageOriginOutOfBounds",
	validateBodyPart_CageOriginOutOfBounds = "validateBodyPart_CageOriginOutOfBounds",
	validateTotalSurfaceArea_FailedToExecute = "validateTotalSurfaceArea_FailedToExecute",
	validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded = "validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded",
	validateCoplanarIntersection_FailedToExecute = "validateCoplanarIntersection_FailedToExecute",
	validateCoplanarIntersection_CoplanarIntersection = "validateCoplanarIntersection_CoplanarIntersection",
	validateExcludedModifiedCageUVs_FailedToExecute = "validateExcludedModifiedCageUVs_FailedToExecute",
	validateExcludedModifiedCageUVs_UnexpectedUVValue = "validateExcludedModifiedCageUVs_UnexpectedUVValue",
	validateMainModifiedCageUVs_FailedToExecute = "validateMainModifiedCageUVs_FailedToExecute",
	validateMainModifiedCageUVs_TooFewModifiedUVsFound = "validateMainModifiedCageUVs_TooFewModifiedUVsFound",
	validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute = "validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute",
	validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly = "validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly",
	validateBodyPartCage_FailedToExecute = "validateBodyPartCage_FailedToExecute",
	validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh = "validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh",
	validateCurveAnimation_IncorrectNumericalData = "validateCurveAnimation_IncorrectNumericalData",
	validateCurveAnimation_PositionalMovement = "validateCurveAnimation_PositionalMovement",
}

if getFFlagUGCValidateMeshBBoxIsCentered() then
	Analytics.ErrorType.validateMeshBounds_Shifted = "validateMeshBounds_Shifted"
end

if getEngineFeatureUGCValidationFullBodyFacs() then
	Analytics.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute =
		"validateEachBodyPartFacsBounds_FailedToExecute"
	Analytics.ErrorType.validateEachBodyPartFacsBounds_ExtendedBounds = "validateEachBodyPartFacsBounds_ExtendedBounds"
end

if getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity() then
	Analytics.ErrorType.validateVerticesSimilarity_FailedToExecute = "validateVerticesSimilarity_FailedToExecute"
	Analytics.ErrorType.validateVerticesSimilarity_MaxSimilarityExceeded =
		"validateVerticesSimilarity_MaxSimilarityExceeded"
end

if getEngineFeatureEngineUGCValidateLCCagingRelevancy() then
	Analytics.ErrorType.validateCagingRelevancy_FailedToExecute = "validateCagingRelevancy_FailedToExecute"
	Analytics.ErrorType.validateCagingRelevancy_IrrelevantCaging = "validateCagingRelevancy_IrrelevantCaging"
end

if getEngineFeatureUGCValidateCageMeshDistance() then
	Analytics.ErrorType.validateCageMeshDistance_FailedToExecute = "validateCageMeshDistance_FailedToExecute"
	Analytics.ErrorType.validateCageMeshDistance_OuterCageToMeshDistance =
		"validateCageMeshDistance_OuterCageToMeshDistance"
end

if getEngineFeatureEngineUGCValidationCageUVDuplicates() then
	Analytics.ErrorType.validateCageUVDuplicate_FailedToExecute = "validateCageUVDuplicate_FailedToExecute"
	Analytics.ErrorType.validateCageUVDuplicate_UnexpectedUVValue = "validateCageUVDuplicate_UnexpectedUVValue"
end

if getFFlagUGCValidatePartSizeWithinRenderSizeLimits() then
	Analytics.ErrorType.validatePartSizeWithinRenderSizeLimits_SizeExceeded =
		"validatePartSizeWithinRenderSizeLimits_SizeExceeded"
end

if getFFlagUGCValidateLCHandleScale() then
	Analytics.ErrorType.validateLayeredClothingAccessory_HandleIsScaled =
		"validateLayeredClothingAccessory_HandleIsScaled"
end

if getFFlagUGCValidatePartMass() then
	Analytics.ErrorType.resetPhysicsData_LargeMass = "resetPhysicsData_LargeMass"
end

if getEngineFeatureEngineUGCValidateRigidNonSkinned() then
	Analytics.ErrorType.validateRigidMeshSkinning_FailedToDownload = "validateRigidMeshSkinning_FailedToDownload"
	Analytics.ErrorType.validateRigidMeshSkinning_BonesFoundInMesh = "validateRigidMeshSkinning_BonesFoundInMesh"
end

Analytics.ErrorType.validateBodyBlockingTests_ZeroMeshSize = "validateBodyBlockingTests_ZeroMeshSize"
Analytics.ErrorType.validateFullBody_ZeroMeshSize = "validateFullBody_ZeroMeshSize"

if getFFlagUGCValidateIndividualPartBBoxes() then
	Analytics.ErrorType.validateBodyAttPosRelativeToParent_PartAboveParent =
		"validateBodyAttPosRelativeToParent_PartAboveParent"
	Analytics.ErrorType.validateBodyAttPosRelativeToParent_ParentBelowPart =
		"validateBodyAttPosRelativeToParent_ParentBelowPart"
end

if getFFlagRefactorBodyAttachmentOrientationsCheck() then
	Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedRig =
		"validateBodyPartChildAttachmentOrientations_RotatedRig"
	Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedGrip =
		"validateBodyPartChildAttachmentOrientations_RotatedGrip"
	Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedBasic =
		"validateBodyPartChildAttachmentOrientations_RotatedBasic"
end

if getFFlagValidateDeformedLayeredClothingIsInBounds() then
	Analytics.ErrorType.validateDeformedLayeredClothingInRenderBounds_FailedToExecute =
		"validateDeformedLayeredClothingInRenderBounds_FailedToExecute"
	Analytics.ErrorType.validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds =
		"validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"
end

Analytics.ErrorType.validateEmoteAnimation_FailedToDownloadCurveAnimation =
	"validateEmoteAnimation_FailedToDownloadCurveAnimation"
Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect =
	"validateCurveAnimation_AnimationHierarchyIsIncorrect"
Analytics.ErrorType.validateCurveAnimation_AnimationContainsNoJointManipulation =
	"validateCurveAnimation_AnimationContainsNoJointManipulation"
Analytics.ErrorType.validateCurveAnimation_UnacceptableLength = "validateCurveAnimation_UnacceptableLength"
Analytics.ErrorType.validateCurveAnimation_UnacceptableSizeBounds = "validateCurveAnimation_UnacceptableSizeBounds"
Analytics.ErrorType.validateCurveAnimation_UnacceptableFrameDelta = "validateCurveAnimation_UnacceptableFrameDelta"

if getFFlagUGCValidateCurveAnimRotationSpeed() then
	Analytics.ErrorType.validateCurveAnimation_UnacceptableFrameRotationDelta =
		"validateCurveAnimation_UnacceptableFrameRotationDelta"
end

if getEngineFeatureEngineUGCIsValidR15AnimationRigCheck() then
	Analytics.ErrorType.validateCurveAnimation_IncorrectAnimationRigData =
		"validateCurveAnimation_IncorrectAnimationRigData"
end

Analytics.ErrorType.validateMeshSizeProperty_FailedToLoadMesh = "validateMeshSizeProperty_FailedToLoadMesh"
Analytics.ErrorType.validateMeshSizeProperty_Mismatch = "validateMeshSizeProperty_Mismatch"

if getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15() then
	Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning =
		"validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"
	Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints =
		"validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"
end

if getEngineUGCValidateRelativeSkinningTransfer() then
	Analytics.ErrorType.validateSkinningTransfer_FailedToExecute = "validateSkinningTransfer_FailedToExecute"
	Analytics.ErrorType.validateSkinningTransfer_BodyPartsWithSpecialJoints =
		"validateSkinningTransfer_BodyPartsWithSpecialJoints"
	Analytics.ErrorType.validateSkinningTransfer_SkinningTransferOverride =
		"validateSkinningTransfer_SkinningTransferOverride"
	Analytics.ErrorType.validateSkinningTransfer_Weights = "validateSkinningTransfer_Weights"
end

if getFFlagUGCValidationEyebrowEyelashSupport() then
	Analytics.ErrorType.validateSkinningTransfer_RequiredAssetTypes = "validateSkinningTransfer_RequiredAssetTypes"
end

if getEngineFeatureEngineUGCValidatePropertiesSensible() then
	Analytics.ErrorType.validatePropertiesSensible_IncorrectPropertiesFound =
		"validatePropertiesSensible_IncorrectPropertiesFound"
end

if getFFlagUGCValidateCheckHSRFileDataFix() then
	Analytics.ErrorType.validateHSR_FileDataInvalid = "validateHSR_FileDataInvalid"
end

setmetatable(Analytics.ErrorType, {
	__index = function(_, index)
		return `UNREGISTERED_{index}`
	end,
})

Analytics.metadata = {}

function Analytics.setMetadata(metadata: { [string]: any })
	local result = {}
	for k, v in metadata do
		result[k] = tostring(v)
	end
	Analytics.metadata = result
end

function Analytics.shouldReportIECTelemetry(validationContext: Types.ValidationContext)
	if not getEngineFeatureEngineUGCValidationIECTelemetry() then
		return false
	end

	if not validationContext then
		return false
	end

	if RunService:IsStudio() or not validationContext.allowEditableInstances or not validationContext.isServer then
		return false
	end

	return true
end

function Analytics.reportCounter(success, validationType, validationContext)
	if Analytics.shouldReportIECTelemetry(validationContext) then
		UGCValidationService:ReportUGCValidationCounter(success, validationType)
	end
end

function Analytics.reportFailure(
	errorType: string,
	extraArgs: { [string]: string }?,
	validationContext: Types.ValidationContext
)
	local target = if RunService:IsStudio() then "studio" else "rcc"
	local args = joinTables(Analytics.metadata, extraArgs or {}, {
		errorType = errorType,
		studioSid = RbxAnalyticsService:GetSessionId(),
		clientId = RbxAnalyticsService:GetClientId(),
		placeId = game.PlaceId,
		userId = if StudioService then StudioService:GetUserId() else 0,
	})
	RbxAnalyticsService:SendEventDeferred(target, "ugcValidation", "failure", args)

	if Analytics.shouldReportIECTelemetry(validationContext) then
		UGCValidationService:ReportUGCValidationFailureTelemetry(errorType)
	end
end

function Analytics.reportThumbnailing(time: number, extraArgs: { [string]: string }?)
	local target = if RunService:IsStudio() then "studio" else "rcc"
	local args = joinTables(Analytics.metadata, extraArgs or {}, {
		time = time,
		studioSid = RbxAnalyticsService:GetSessionId(),
		clientId = RbxAnalyticsService:GetClientId(),
		placeId = game.PlaceId,
		userId = if StudioService then StudioService:GetUserId() else 0,
	})
	RbxAnalyticsService:SendEventDeferred(target, "ugcValidation", "thumbnailing", args)
end

function Analytics.recordScriptTime(label: string, startTime: number, validationContext: Types.ValidationContext)
	if not getEngineFeatureEngineUGCValidationReportScriptTime() then
		return
	end

	if not validationContext.scriptTimes then
		validationContext.scriptTimes = {}
	end

	local scriptTimes = validationContext.scriptTimes :: Types.ScriptTimes
	if not scriptTimes[label] then
		scriptTimes[label] = 0
	end

	local elapsed = tick() - startTime
	scriptTimes[label] += elapsed
end

function Analytics.reportScriptTimes(validationContext: Types.ValidationContext)
	if not getEngineFeatureEngineUGCValidationReportScriptTime() then
		return
	end

	if validationContext.isServer and not RunService:IsStudio() and validationContext.scriptTimes then
		assert(Analytics.metadata, "Metadata is never nil")
		local entrypoint = (Analytics.metadata :: any).entrypoint

		local typeForTelemetry = "FullBody"
		if validationContext.assetTypeEnum then
			typeForTelemetry = validationContext.assetTypeEnum.Name
		elseif entrypoint and "string" == type(entrypoint) and #entrypoint > 0 then
			typeForTelemetry = entrypoint
		end

		(UGCValidationService :: any):ReportUGCValidationTelemetry(
			typeForTelemetry,
			validationContext.scriptTimes :: Types.ScriptTimes
		)
	end
end

return Analytics
