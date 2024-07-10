--!strict

local root = script.Parent

local Types = require(root.util.Types)

local RunService = game:GetService("RunService")
local UGCValidationService = game:GetService("UGCValidationService")
local StudioService = if RunService:IsStudio() then game:GetService("StudioService") else nil
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local getFFlagUGCValidationAnalytics = require(root.flags.getFFlagUGCValidationAnalytics)
local getFFlagUGCValidateTestInactiveControls = require(root.flags.getFFlagUGCValidateTestInactiveControls)
local getFFlagUGCValidateAccessoriesScaleType = require(root.flags.getFFlagUGCValidateAccessoriesScaleType)
local getFFlagUGCValidationFixResetPhysicsError = require(root.flags.getFFlagUGCValidationFixResetPhysicsError)
local getEngineFeatureEngineUGCValidationReportScriptTime =
	require(root.flags.getEngineFeatureEngineUGCValidationReportScriptTime)
local getFFlagUGCValidateCageOrigin = require(root.flags.getFFlagUGCValidateCageOrigin)
local getFFlagUGCValidateTotalSurfaceAreaTestBody = require(root.flags.getFFlagUGCValidateTotalSurfaceAreaTestBody)
local getFFlagUGCValidateTotalSurfaceAreaTestAccessory =
	require(root.flags.getFFlagUGCValidateTotalSurfaceAreaTestAccessory)

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
	validateAccessoryName = "validateAccessoryName",
	validateAssetBounds_AssetSizeTooBig = "validateAssetBounds_AssetSizeTooBig",
	validateAssetBounds_AssetSizeTooSmall = "validateAssetBounds_AssetSizeTooSmall",
	validateAssetBounds_InconsistentAvatarPartScaleType = "validateAssetBounds_InconsistentAvatarPartScaleType",
	validateAssetBounds_InvalidAvatarPartScaleType = if getFFlagUGCValidateAccessoriesScaleType()
		then nil
		else "validateAssetBounds_InvalidAvatarPartScaleType",
	validateScaleType_InvalidAvatarPartScaleType = if getFFlagUGCValidateAccessoriesScaleType()
		then "validateScaleType_InvalidAvatarPartScaleType"
		else nil,
	validateAssetCreator_DependencyNotOwnedByCreator = "validateAssetCreator_DependencyNotOwnedByCreator",
	validateAssetCreator_FailedToLoad = "validateAssetCreator_FailedToLoad",
	validateAssetCreator_TooManyDependencies = "validateAssetCreator_TooManyDependencies",
	validateAttributes = "validateAttributes",
	validateBodyPartChildAttachmentBounds_AttachmentRotated = "validateBodyPartChildAttachmentBounds_AttachmentRotated",
	validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition = "validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition",
	validateBodyPartCollisionFidelity = "validateBodyPartCollisionFidelity",
	validateBodyPartMeshBounds_FailedToLoadMesh = "validateBodyPartMeshBounds_FailedToLoadMesh",
	validateCageMeshIntersection_AverageOuterCageToMeshVertDistances = "validateCageMeshIntersection_AverageOuterCageToMeshVertDistances",
	validateCageMeshIntersection_FailedToExecute = "validateCageMeshIntersection_FailedToExecute",
	validateCageMeshIntersection_Intersection = "validateCageMeshIntersection_Intersection",
	validateCageMeshIntersection_InvalidRefMeshId = "validateCageMeshIntersection_InvalidRefMeshId",
	validateCageMeshIntersection_IrrelevantCageModified = "validateCageMeshIntersection_IrrelevantCageModified",
	validateCageMeshIntersection_OuterCageFarExtendedFromMesh = "validateCageMeshIntersection_OuterCageFarExtendedFromMesh",
	validateCageNonManifoldAndHoles_CageHoles = "validateCageNonManifoldAndHoles_CageHoles",
	validateCageNonManifoldAndHoles_FailedToExecute = "validateCageNonManifoldAndHoles_FailedToExecute",
	validateCageNonManifoldAndHoles_NonManifold = "validateCageNonManifoldAndHoles_NonManifold",
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
	validateFullBodyCageDeletion_FailedToExecute = "validateFullBodyCageDeletion_FailedToExecute",
	validateFullBodyCageDeletion_GeometryRemoved = "validateFullBodyCageDeletion_GeometryRemoved",
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
	validateMisMatchUV_FailedToExecute = "validateMisMatchUV_FailedToExecute",
	validateMisMatchUV_UVMismatch = "validateMisMatchUV_UVMismatch",
	validateModeration_AssetsHaveNotPassedModeration = "validateModeration_AssetsHaveNotPassedModeration",
	validateModeration_CouldNotFetchModerationDetails = "validateModeration_CouldNotFetchModerationDetails",
	validateModeration_FailedToParse = "validateModeration_FailedToParse",
	validateModeration_ValidateUser = "validateModeration_ValidateUser",
	validateOverlappingVertices_FailedToExecute = "validateOverlappingVertices_FailedToExecute",
	validateOverlappingVertices_OverlappingVertices = "validateOverlappingVertices_OverlappingVertices",
	validatePackage_FailedToParse = "validatePackage_FailedToParse",
	validateProperties_PropertyDoesNotExist = "validateProperties_PropertyDoesNotExist",
	validateProperties_PropertyMismatch = "validateProperties_PropertyMismatch",
	validateSingleInstance_MultipleInstances = "validateSingleInstance_MultipleInstances",
	validateSingleInstance_ZeroInstances = "validateSingleInstance_ZeroInstances",
	validateSurfaceAppearances_MeshPartHasTexture = "validateSurfaceAppearances_MeshPartHasTexture",
	validateSurfaceAppearances_MissingSurfaceAppearance = "validateSurfaceAppearances_MissingSurfaceAppearance",
	validateTags = "validateTags",
	validateTextureSize_FailedToExecute = "validateTextureSize_FailedToExecute",
	validateTextureSize_FailedToLoadTexture = "validateTextureSize_FailedToLoadTexture",
	validateTextureSize_InvalidTextureId = "validateTextureSize_InvalidTextureId",
	validateTextureSize_TextureTooBig = "validateTextureSize_TextureTooBig",
	validateThumbnailConfiguration_InvalidTarget = "validateThumbnailConfiguration_InvalidTarget",
	validateThumbnailConfiguration_OutsideView = "validateThumbnailConfiguration_OutsideView",
	validateUVSpace_FailedToExecute = "validateUVSpace_FailedToExecute",
	validateUVSpace_InvalidUVSpace = "validateUVSpace_InvalidUVSpace",
}

if getFFlagUGCValidateTestInactiveControls() then
	Analytics.ErrorType.validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls =
		"validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"
end

if getFFlagUGCValidationFixResetPhysicsError() then
	Analytics.ErrorType.resetPhysicsData_FailedToLoadMesh = "resetPhysicsData_FailedToLoadMesh"
	Analytics.ErrorType.validateFullBody_MeshIdsMissing = "validateFullBody_MeshIdsMissing"
end

if getFFlagUGCValidateCageOrigin() then
	Analytics.ErrorType.validateLayeredClothingAccessory_CageOriginOutOfBounds =
		"validateLayeredClothingAccessory_CageOriginOutOfBounds"
	Analytics.ErrorType.validateBodyPart_CageOriginOutOfBounds = "validateBodyPart_CageOriginOutOfBounds"
end

if getFFlagUGCValidateTotalSurfaceAreaTestBody() or getFFlagUGCValidateTotalSurfaceAreaTestAccessory() then
	Analytics.ErrorType.validateTotalSurfaceArea_FailedToExecute = "validateTotalSurfaceArea_FailedToExecute"
	Analytics.ErrorType.validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded =
		"validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"
end

setmetatable(Analytics.ErrorType, {
	__index = function(_, index)
		return `UNREGISTERED_{index}`
	end,
})

Analytics.metadata = {}

function Analytics.setMetadata(metadata: { [string]: any })
	if not getFFlagUGCValidationAnalytics() then
		return
	end
	local result = {}
	for k, v in metadata do
		result[k] = tostring(v)
	end
	Analytics.metadata = result
end

function Analytics.reportFailure(errorType: string, extraArgs: { [string]: string }?)
	if not getFFlagUGCValidationAnalytics() then
		return
	end

	local target = if RunService:IsStudio() then "studio" else "rcc"
	local args = joinTables(Analytics.metadata, extraArgs or {}, {
		errorType = errorType,
		studioSid = RbxAnalyticsService:GetSessionId(),
		clientId = RbxAnalyticsService:GetClientId(),
		placeId = game.PlaceId,
		userId = if StudioService then StudioService:GetUserId() else 0,
	})
	RbxAnalyticsService:SendEventDeferred(target, "ugcValidation", "failure", args)
end

function Analytics.reportThumbnailing(time: number, extraArgs: { [string]: string }?)
	if not getFFlagUGCValidationAnalytics() then
		return
	end
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
		(UGCValidationService :: any):ReportUGCValidationTelemetry(
			if validationContext.assetTypeEnum then validationContext.assetTypeEnum.Name else "FullBody",
			validationContext.scriptTimes :: Types.ScriptTimes
		)
	end
end

return Analytics
