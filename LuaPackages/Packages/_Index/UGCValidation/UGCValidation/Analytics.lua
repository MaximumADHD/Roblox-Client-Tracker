local root = script.Parent

local Types = require(root.util.Types)

local RunService = game:GetService("RunService")
local UGCValidationService = game:GetService("UGCValidationService")
local StudioService = if RunService:IsStudio() then game:GetService("StudioService") else nil
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local getEngineFeatureEngineUGCValidationReportScriptTime =
	require(root.flags.getEngineFeatureEngineUGCValidationReportScriptTime)

local getEngineFeatureEngineUGCValidationIECTelemetry =
	require(root.flags.getEngineFeatureEngineUGCValidationIECTelemetry)

local getEngineFeatureEngineUGCValidateRigidNonSkinned =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)

local getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds =
	require(root.flags.getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds)

local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateHSRMeshIds = require(root.flags.getFFlagUGCValidateHSRMeshIds)

local getFFlagUGCValidationEyebrowEyelashSupport = require(root.flags.getFFlagUGCValidationEyebrowEyelashSupport)
local getFFlagUGCValidateCurveAnimRotationSpeed = require(root.flags.getFFlagUGCValidateCurveAnimRotationSpeed)
local getFFlagUGCValidateTexturePack = require(root.flags.getFFlagUGCValidateTexturePack)

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
	validateAccurateBoundingBox = "validateAccurateBoundingBox",
	validateAssetBounds_AssetSizeTooBig = "validateAssetBounds_AssetSizeTooBig",
	validateAssetBounds_AssetSizeTooSmall = "validateAssetBounds_AssetSizeTooSmall",
	validateAssetBounds_InconsistentAvatarPartScaleType = "validateAssetBounds_InconsistentAvatarPartScaleType",
	validateScaleType_InvalidAvatarPartScaleType = "validateScaleType_InvalidAvatarPartScaleType",
	validateAssetCreator_DependencyNotOwnedByCreator = "validateAssetCreator_DependencyNotOwnedByCreator",
	validateAssetCreator_FailedToLoad = "validateAssetCreator_FailedToLoad",
	validateAssetCreator_TooManyDependencies = "validateAssetCreator_TooManyDependencies",
	validateAssetTransparency_AssetTransparencyThresholds = "validateAssetTransparency_AssetTransparencyThresholds",
	validateAttributes = "validateAttributes",
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
	validateVerticesSimilarity_FailedToExecute = "validateVerticesSimilarity_FailedToExecute",
	validateVerticesSimilarity_MaxSimilarityExceeded = "validateVerticesSimilarity_MaxSimilarityExceeded",
	validateCagingRelevancy_FailedToExecute = "validateCagingRelevancy_FailedToExecute",
	validateCagingRelevancy_IrrelevantCaging = "validateCagingRelevancy_IrrelevantCaging",
	validateCageMeshDistance_FailedToExecute = "validateCageMeshDistance_FailedToExecute",
	validateCageMeshDistance_OuterCageToMeshDistance = "validateCageMeshDistance_OuterCageToMeshDistance",
	validateCageUVDuplicate_FailedToExecute = "validateCageUVDuplicate_FailedToExecute",
	validateCageUVDuplicate_UnexpectedUVValue = "validateCageUVDuplicate_UnexpectedUVValue",
	validatePartSizeWithinRenderSizeLimits_SizeExceeded = "validatePartSizeWithinRenderSizeLimits_SizeExceeded",
	validateLayeredClothingAccessory_HandleIsScaled = "validateLayeredClothingAccessory_HandleIsScaled",
	resetPhysicsData_LargeMass = "resetPhysicsData_LargeMass",
	validateBodyAttPosRelativeToParent_PartAboveParent = "validateBodyAttPosRelativeToParent_PartAboveParent",
	validateBodyAttPosRelativeToParent_ParentBelowPart = "validateBodyAttPosRelativeToParent_ParentBelowPart",
	validateBodyBlockingTests_ZeroMeshSize = "validateBodyBlockingTests_ZeroMeshSize",
	validateFullBody_ZeroMeshSize = "validateFullBody_ZeroMeshSize",
	validateMeshBounds_Shifted = "validateMeshBounds_Shifted",
	validateBodyPartChildAttachmentOrientations_RotatedRig = "validateBodyPartChildAttachmentOrientations_RotatedRig",
	validateBodyPartChildAttachmentOrientations_RotatedGrip = "validateBodyPartChildAttachmentOrientations_RotatedGrip",
	validateBodyPartChildAttachmentOrientations_RotatedBasic = "validateBodyPartChildAttachmentOrientations_RotatedBasic",
	validateDeformedLayeredClothingInRenderBounds_FailedToExecute = "validateDeformedLayeredClothingInRenderBounds_FailedToExecute",
	validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds = "validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds",
	validateEmoteAnimation_FailedToDownloadCurveAnimation = "validateEmoteAnimation_FailedToDownloadCurveAnimation",
	validateCurveAnimation_AnimationHierarchyIsIncorrect = "validateCurveAnimation_AnimationHierarchyIsIncorrect",
	validateCurveAnimation_AnimationContainsNoJointManipulation = "validateCurveAnimation_AnimationContainsNoJointManipulation",
	validateCurveAnimation_UnacceptableLength = "validateCurveAnimation_UnacceptableLength",
	validateCurveAnimation_UnacceptableSizeBounds = "validateCurveAnimation_UnacceptableSizeBounds",
	validateCurveAnimation_UnacceptableFrameDelta = "validateCurveAnimation_UnacceptableFrameDelta",
}

if getFFlagUGCValidateTexturePack() then
	Analytics.ErrorType.validateTexturePack_InvalidTexturePackURL = "validateTexturePack_InvalidTexturePackURL"
	Analytics.ErrorType.validateTexturePack_FailedToDownloadTexturePack =
		"validateTexturePack_FailedToDownloadTexturePack"
	Analytics.ErrorType.validateTexturePack_TexturePackMismatch = "validateTexturePack_TexturePackMismatch"
end
Analytics.ErrorType.validateLegsSeparation_InvalidAttachmentPosition =
	"validateLegsSeparation_InvalidAttachmentPosition"
Analytics.ErrorType.validateLegsSeparation_LegsOverlap = "validateLegsSeparation_LegsOverlap"

if getEngineFeatureEngineUGCValidateRigidNonSkinned() then
	Analytics.ErrorType.validateRigidMeshSkinning_FailedToDownload = "validateRigidMeshSkinning_FailedToDownload"
	Analytics.ErrorType.validateRigidMeshSkinning_BonesFoundInMesh = "validateRigidMeshSkinning_BonesFoundInMesh"
end

if getFFlagUGCValidateCurveAnimRotationSpeed() then
	Analytics.ErrorType.validateCurveAnimation_UnacceptableFrameRotationDelta =
		"validateCurveAnimation_UnacceptableFrameRotationDelta"
end

Analytics.ErrorType.validateCurveAnimation_IncorrectAnimationRigData =
	"validateCurveAnimation_IncorrectAnimationRigData"

Analytics.ErrorType.validateMeshSizeProperty_FailedToLoadMesh = "validateMeshSizeProperty_FailedToLoadMesh"
Analytics.ErrorType.validateMeshSizeProperty_Mismatch = "validateMeshSizeProperty_Mismatch"

Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning =
	"validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"
Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints =
	"validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"

Analytics.ErrorType.validateSkinningTransfer_FailedToExecute = "validateSkinningTransfer_FailedToExecute"
Analytics.ErrorType.validateSkinningTransfer_BodyPartsWithSpecialJoints =
	"validateSkinningTransfer_BodyPartsWithSpecialJoints"
Analytics.ErrorType.validateSkinningTransfer_SkinningTransferOverride =
	"validateSkinningTransfer_SkinningTransferOverride"
Analytics.ErrorType.validateSkinningTransfer_Weights = "validateSkinningTransfer_Weights"

if getFFlagUGCValidationEyebrowEyelashSupport() then
	Analytics.ErrorType.validateSkinningTransfer_RequiredAssetTypes = "validateSkinningTransfer_RequiredAssetTypes"
end

if getEngineFeatureEngineUGCValidatePropertiesSensible() then
	Analytics.ErrorType.validatePropertiesSensible_IncorrectPropertiesFound =
		"validatePropertiesSensible_IncorrectPropertiesFound"
end

Analytics.ErrorType.validateHSR_FileDataInvalid = "validateHSR_FileDataInvalid"

if getFFlagUGCValidateHSRMeshIds() then
	Analytics.ErrorType.validataHSR_HSRMeshIdsMismatch = "validataHSR_HSRMeshIdsMismatch"
end

Analytics.ErrorType.validateMakeupDecal_FailedToLoadTexture = "validateMakeupDecal_FailedToLoadTexture"
Analytics.ErrorType.validateMakeupDecal_NoColorMap = "validateMakeupDecal_NoColorMap"
Analytics.ErrorType.validateMakeupDecal_UVZoneError = "validateMakeupDecal_UVZoneError"

Analytics.ErrorType.validateWrapTextureTransfer_FailedToLoadCage = "validateWrapTextureTransfer_FailedToLoadCage"
Analytics.ErrorType.validateWrapTextureTransfer_NoCage = "validateWrapTextureTransfer_NoCage"
Analytics.ErrorType.validateWrapTextureTransfer_FailedToLoadUV = "validateWrapTextureTransfer_FailedToLoadUV"
Analytics.ErrorType.validateWrapTextureTransfer_InvalidUV = "validateWrapTextureTransfer_InvalidUV"
Analytics.ErrorType.validateWrapTextureTransfer_InvalidMinBound = "validateWrapTextureTransfer_InvalidMinBound"
Analytics.ErrorType.validateWrapTextureTransfer_InvalidMaxBound = "validateWrapTextureTransfer_InvalidMaxBound"

if getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds() then
	Analytics.ErrorType.validateFACSJointTransformsWithinBounds_Error = "validateFACSJointTransformsWithinBounds_Error"
	Analytics.ErrorType.validateFACSJointTransformsWithinBounds_OOB = "validateFACSJointTransformsWithinBounds_OOB"
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
