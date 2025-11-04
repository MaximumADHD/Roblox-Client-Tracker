--[[
	validateDescendantMeshMetrics.lua checks the meshes in all descendant Instance properties to ensur they do conform to triangle/vertex count specifications
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)

local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
local validateCageUVs = require(root.validation.validateCageUVs)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateCageUVTriangleArea = require(root.validation.validateCageUVTriangleArea)
local validateMeshTriangleArea = require(root.validation.validateMeshTriangleArea)
local validateCageUVValues = require(root.validation.validateCageUVValues)
local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateSkinningTransfer = require(root.validation.validateSkinningTransfer)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local floatEquals = require(root.util.floatEquals)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local getMeshIdForSkinningValidation = require(root.util.getMeshIdForSkinningValidation)

local getFFlagUGCValidateCoplanarTriTestBody = require(root.flags.getFFlagUGCValidateCoplanarTriTestBody)
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getFIntUGCValidateTriangleLimitTolerance = require(root.flags.getFIntUGCValidateTriangleLimitTolerance)
local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local getEngineUGCValidateRelativeSkinningTransfer = require(root.flags.getEngineUGCValidateRelativeSkinningTransfer)

local function validateIsSkinned(
	obj: MeshPart,
	isServer: boolean?,
	allowEditableInstances: boolean?,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local alternateId = obj:GetAttribute(Constants.AlternateMeshIdAttributeName)
	if not obj.HasSkinnedMesh then
		if alternateId == nil or alternateId == "" or not allowEditableInstances then
			Analytics.reportFailure(
				Analytics.ErrorType.validateDescendantMeshMetrics_NoSkinningInfo,
				nil,
				validationContext
			)
			return false, { `Missing skinning data for {obj.Name}.MeshId. You need to skin your model.` }
		end
	end

	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local retrievedMeshData, testsPassed = pcall(function()
		if getEngineFeatureEngineEditableMeshAvatarPublish() then
			local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(obj, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService:ValidateSkinnedEditableMesh(editableMesh :: EditableMesh)
		else
			return UGCValidationService:ValidateSkinnedMesh(getMeshIdForSkinningValidation(obj, allowEditableInstances))
		end
	end)

	if not retrievedMeshData then
		local errorMessage = "Failed to retrieve mesh data to validate skinned mesh"
		if isServer then
			-- ValidateSkinnedMesh() failed retriving mesh data, meaning the tests on the mesh couldn't proceed, therefore we throw an error here,
			-- which means that the validation of this asset will be run again, rather than returning false. This is because we can't conclusively
			-- say it failed. It's inconclusive as we couldn't even get the mesh data for unknown reasons. This throwing of an error should only
			-- happen when validation is called from RCC
			error(errorMessage)
		end
		Analytics.reportFailure(
			Analytics.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh,
			nil,
			validationContext
		)
		return false, { errorMessage }
	end

	-- HasSkinnedMesh should never disagree with the result of UGCValidationService:ValidateSkinnedMesh(). This indicates
	-- a bug in the code, which needs to be fixed. We are only checking both here out of an abundance of caution
	if not testsPassed then
		local errorMessage =
			`Detected mismatch between model and skinned data for {obj.Name}. You need to re-skin your model to fix this issue.`
		if isServer then
			error(errorMessage)
		end
		Analytics.reportFailure(
			Analytics.ErrorType.validateDescendantMeshMetrics_HasSkinnedMeshMismatch,
			nil,
			validationContext
		)
		return false, { errorMessage }
	end
	return true
end

local function validateTotalAssetTriangles(
	allMeshes: any,
	assetTypeEnum: Enum.AssetType,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local maxTriangleCount = assert(Constants.ASSET_RENDER_MESH_MAX_TRIANGLES[assetTypeEnum.Name])

	local function calculateTotalAssetTriangles(): (boolean, string?, number?)
		local result = 0
		for _, data in allMeshes do
			if data.instance.ClassName ~= "MeshPart" then
				continue
			end
			assert(data.fieldName == "MeshId")

			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(data.instance, data.fieldName, validationContext)
			if not getEditableMeshSuccess then
				Analytics.reportFailure(
					Analytics.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh,
					nil,
					validationContext
				)
				return false,
					string.format(
						"Failed to load mesh for '%s'. Make sure mesh exists and try again.",
						data.instance.Name
					)
			end

			local success, triangles = pcallDeferred(function()
				return UGCValidationService:GetEditableMeshTriCount(editableMesh :: EditableMesh)
			end, validationContext)

			if not success then
				return false,
					string.format(
						"Failed to execute check for triangle face information for mesh '%s'. Make sure mesh exists and try again.",
						data.instance.Name
					)
			end
			result = result + triangles
		end
		return true, nil, result
	end

	local success, message, totalAssetTriangles = calculateTotalAssetTriangles()
	if not success then
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(message :: string)
		end
		Analytics.reportFailure(
			Analytics.ErrorType.validateDescendantMeshMetrics_FailedToCalculateTriangles,
			nil,
			validationContext
		)
		return false, { message :: string }
	end

	local tolerance = getFIntUGCValidateTriangleLimitTolerance() / 100
	local maxTriangleCountWithTolerance = maxTriangleCount + (maxTriangleCount * tolerance)

	if totalAssetTriangles :: number > maxTriangleCountWithTolerance then
		Analytics.reportFailure(
			Analytics.ErrorType.validateDescendantMeshMetrics_TooManyTriangles,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Mesh resolution of '%d' for '%s' is higher than max supported number of triangles '%d'. You need to retopologize your model to reduce the triangle count.",
					totalAssetTriangles :: number,
					assetTypeEnum.Name,
					maxTriangleCount
				),
			}
	end
	return true
end

-- the mesh should be created at the origin
local function validateMeshIsAtOrigin(
	meshInfo: Types.MeshInfo,
	meshMinIn: Vector3?,
	meshMaxIn: Vector3?,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local meshMin = meshMinIn :: Vector3
	local meshMax = meshMaxIn :: Vector3

	local meshHalfSize = (meshMax - meshMin) / 2
	local meshCenter = meshMin + meshHalfSize

	local Tol = 0.001
	if meshCenter.Magnitude > Tol then
		Analytics.reportFailure(
			Analytics.ErrorType.validateDescendantMeshMetrics_TooFarFromOrigin,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Bounds for the mesh '%s' are not centered at the origin. The max allowed distance is '%f'",
					meshInfo.fullName,
					Tol
				),
			}
	end
	return true
end

local function validateDescendantMeshMetrics(
	rootInstance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateDescendantMeshMetrics"
	)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local allowEditableInstances = validationContext.allowEditableInstances

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allMeshes = ParseContentIds.parse(rootInstance, Constants.MESH_CONTENT_ID_FIELDS, validationContext)

	local startTime = tick()
	reasonsAccumulator:updateReasons(validateTotalAssetTriangles(allMeshes, assetTypeEnum, validationContext))
	Analytics.recordScriptTime("validateTotalAssetTriangles", startTime, validationContext)

	for _, data in allMeshes do
		local meshInfo = {
			fullName = data.instance:GetFullName(),
			fieldName = data.fieldName,
			contentId = data.instance[data.fieldName],
			context = data.instance.Name,
		} :: Types.MeshInfo

		local getEditableMeshSuccess, editableMesh =
			getEditableMeshFromContext(data.instance, data.fieldName, validationContext)
		if not getEditableMeshSuccess then
			return false,
				{
					string.format(
						"Failed to load mesh for '%s'. Make sure mesh exists and try again.",
						data.instance.Name
					),
				}
		end

		meshInfo.editableMesh = editableMesh :: EditableMesh

		if data.instance.ClassName == "MeshPart" then
			assert(data.fieldName == "MeshId")

			local successMinMax, failureReasonsMinMax, meshMinOpt, meshMaxOpt =
				getMeshMinMax(meshInfo, validationContext)
			if not successMinMax then
				reasonsAccumulator:updateReasons(false, failureReasonsMinMax)
			end

			if successMinMax then
				startTime = tick()
				reasonsAccumulator:updateReasons(
					validateMeshIsAtOrigin(meshInfo, meshMinOpt, meshMaxOpt, validationContext)
				)
				Analytics.recordScriptTime("validateMeshIsAtOrigin", startTime, validationContext)
			end

			if meshMinOpt and meshMaxOpt then
				local meshSize = (meshMaxOpt :: Vector3 - meshMinOpt :: Vector3)
				if floatEquals(meshSize.X, 0) or floatEquals(meshSize.Y, 0) or floatEquals(meshSize.Z, 0) then
					reasonsAccumulator:updateReasons(false, {
						"Mesh size is zero for " .. meshInfo.fullName .. ". You need to rescale your mesh.",
					})
				else
					local meshScale = getExpectedPartSize(data.instance, validationContext) / meshSize

					reasonsAccumulator:updateReasons(validateTotalSurfaceArea(meshInfo, meshScale, validationContext))

					if getFFlagUGCValidateCoplanarTriTestBody() then
						reasonsAccumulator:updateReasons(
							validateCoplanarIntersection(meshInfo, meshScale, validationContext)
						)
					end
				end
			end

			reasonsAccumulator:updateReasons(validateMeshVertColors(meshInfo, true, validationContext))

			-- EditableMesh data currently does not support skinning, leave this check as-is for now
			startTime = tick()
			reasonsAccumulator:updateReasons(
				validateIsSkinned(data.instance :: MeshPart, isServer, allowEditableInstances, validationContext)
			)
			Analytics.recordScriptTime("validateIsSkinned", startTime, validationContext)

			if getEngineUGCValidateRelativeSkinningTransfer() then
				reasonsAccumulator:updateReasons(validateSkinningTransfer(data.instance :: MeshPart, validationContext))
			end

			reasonsAccumulator:updateReasons(validateMeshTriangleArea(meshInfo, validationContext))
		elseif data.instance.ClassName == "WrapTarget" then
			assert(data.fieldName == "CageMeshId")
			meshInfo.fullName = meshInfo.fullName .. "OuterCage"

			reasonsAccumulator:updateReasons(validateCageUVs(meshInfo, data.instance :: WrapTarget, validationContext))

			reasonsAccumulator:updateReasons(validateCageUVTriangleArea(meshInfo, validationContext))

			reasonsAccumulator:updateReasons(
				validateCageUVValues(meshInfo, data.instance :: WrapTarget, validationContext)
			)

			reasonsAccumulator:updateReasons(validateMeshTriangleArea(meshInfo, validationContext))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDescendantMeshMetrics
