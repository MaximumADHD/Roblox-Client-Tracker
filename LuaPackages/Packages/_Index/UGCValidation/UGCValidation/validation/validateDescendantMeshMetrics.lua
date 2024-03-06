--!strict

--[[
	validateDescendantMeshMetrics.lua checks the meshes in all descendant Instance properties to ensur they do conform to triangle/vertex count specifications
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local Types = require(root.util.Types)

local validateOverlappingVertices = require(root.validation.validateOverlappingVertices)
local validateCageUVs = require(root.validation.validateCageUVs)
local validateFullBodyCageDeletion = require(root.validation.validateFullBodyCageDeletion)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateCageUVTriangleArea = require(root.validation.validateCageUVTriangleArea)
local validateMeshTriangleArea = require(root.validation.validateMeshTriangleArea)
local validateCageUVValues = require(root.validation.validateCageUVValues)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getFFlagUGCValidateBodyPartsExtendedMeshTests = require(root.flags.getFFlagUGCValidateBodyPartsExtendedMeshTests)
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getFFlagUGCValidateCageUVTriangleArea = require(root.flags.getFFlagUGCValidateCageUVTriangleArea)
local getFFlagUGCValidateMeshTriangleAreaForCages = require(root.flags.getFFlagUGCValidateMeshTriangleAreaForCages)
local getFFlagUGCValidateMeshTriangleAreaForMeshes = require(root.flags.getFFlagUGCValidateMeshTriangleAreaForMeshes)
local getFFlagUGCValidateUVValuesInReference = require(root.flags.getFFlagUGCValidateUVValuesInReference)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateIsSkinned(obj: MeshPart, isServer: boolean?): (boolean, { string }?)
	if not obj.HasSkinnedMesh then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_NoSkinningInfo)
		return false, { `Missing skinning data for {obj.Name}.MeshId. You need to skin your model.` }
	end

	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	local retrievedMeshData, testsPassed = pcall(function()
		return UGCValidationService:ValidateSkinnedMesh(obj.MeshId)
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
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh)
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
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_HasSkinnedMeshMismatch)
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

			local success, triangles
			if getEngineFeatureUGCValidateEditableMeshAndImage() then
				local getEditableMeshSuccess, editableMesh =
					getEditableMeshFromContext(data.instance, data.fieldName, validationContext)
				if not getEditableMeshSuccess then
					Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh)
					return false,
						string.format(
							"Failed to load mesh for '%s'. Make sure mesh exists and try again.",
							data.instance.Name
						)
				end

				success, triangles = pcall(function()
					return UGCValidationService:GetEditableMeshTriCount(editableMesh :: EditableMesh)
				end)
			else
				success, triangles = pcall(function()
					return UGCValidationService:GetMeshTriCount(data.instance[data.fieldName])
				end)
			end

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
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_FailedToCalculateTriangles)
		return false, { message :: string }
	end
	if totalAssetTriangles :: number > maxTriangleCount then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_TooManyTriangles)
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

local function DEPRECATED_validateTotalAssetTriangles(
	allMeshes: any,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local maxTriangleCount = assert(Constants.ASSET_RENDER_MESH_MAX_TRIANGLES[assetTypeEnum.Name])

	local function calculateTotalAssetTriangles(): (boolean, string?, number?)
		local result = 0
		for _, data in allMeshes do
			if data.instance.ClassName ~= "MeshPart" then
				continue
			end
			assert(data.fieldName == "MeshId")

			local success, triangles = pcall(function()
				return UGCValidationService:GetMeshTriCount(data.instance[data.fieldName])
			end)

			if not success then
				Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_FailedToLoadMesh)
				return false, `Failed to load mesh data for {data.instance.Name}.{data.fieldName} ({data.id})`
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
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_FailedToCalculateTriangles)
		return false, { message :: string }
	end
	if totalAssetTriangles :: number > maxTriangleCount then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_TooManyTriangles)
		return false, { `{assetTypeEnum.Name} cannot have more than {maxTriangleCount} triangles in render meshes` }
	end
	return true
end

-- the mesh should be created at the origin
local function validateMeshIsAtOrigin(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(meshInfo, validationContext)
	if not success then
		return success, failureReasons
	end

	local meshMin = meshMinOpt :: Vector3
	local meshMax = meshMaxOpt :: Vector3
	local meshHalfSize = (meshMax - meshMin) / 2
	local meshCenter = meshMin + meshHalfSize

	local Tol = 0.001
	if meshCenter.Magnitude > Tol then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_TooFarFromOrigin)
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

local function DEPRECATED_validateMeshIsAtOrigin(obj: MeshPart, isServer: boolean?): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = (getMeshMinMax :: any)(obj.MeshId, isServer)
	if not success then
		return success, failureReasons
	end

	local meshMin = meshMinOpt :: Vector3
	local meshMax = meshMaxOpt :: Vector3
	local meshHalfSize = (meshMax - meshMin) / 2
	local meshCenter = meshMin + meshHalfSize

	local Tol = 0.001
	if meshCenter.Magnitude > Tol then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_TooFarFromOrigin)
		return false, { `Mesh for MeshPart {obj.Name} has been built too far from the origin` }
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

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allMeshes = ParseContentIds.parse(rootInstance, Constants.MESH_CONTENT_ID_FIELDS, validationContext)

	reasonsAccumulator:updateReasons(validateTotalAssetTriangles(allMeshes, assetTypeEnum, validationContext))

	for _, data in allMeshes do
		local meshInfo = {
			fullName = data.instance:GetFullName(),
			fieldName = data.fieldName,
			contentId = data.instance[data.fieldName],
			context = data.instance.Name,
		} :: Types.MeshInfo

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
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

			meshInfo.editableMesh = editableMesh
		end

		if data.instance.ClassName == "MeshPart" then
			assert(data.fieldName == "MeshId")

			reasonsAccumulator:updateReasons(validateMeshIsAtOrigin(meshInfo, validationContext))

			reasonsAccumulator:updateReasons(validateMeshVertColors(meshInfo, true, validationContext))

			-- EditableMesh data currently does not support skinning, leave this check as-is for now
			reasonsAccumulator:updateReasons(validateIsSkinned(data.instance :: MeshPart, isServer))

			if getFFlagUGCValidateMeshTriangleAreaForMeshes() then
				reasonsAccumulator:updateReasons(validateMeshTriangleArea(meshInfo, validationContext))
			end
		elseif data.instance.ClassName == "WrapTarget" then
			assert(data.fieldName == "CageMeshId")
			meshInfo.fullName = meshInfo.fullName .. "OuterCage"
			if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
				reasonsAccumulator:updateReasons(validateFullBodyCageDeletion(meshInfo, validationContext))
			end

			reasonsAccumulator:updateReasons(validateCageUVs(meshInfo, data.instance :: WrapTarget, validationContext))

			if getFFlagUGCValidateCageUVTriangleArea() then
				reasonsAccumulator:updateReasons(validateCageUVTriangleArea(meshInfo, validationContext))
			end

			if getFFlagUGCValidateUVValuesInReference() then
				reasonsAccumulator:updateReasons(
					validateCageUVValues(meshInfo, data.instance :: WrapTarget, validationContext)
				)
			end

			if getFFlagUGCValidateMeshTriangleAreaForCages() then
				reasonsAccumulator:updateReasons(validateMeshTriangleArea(meshInfo, validationContext))
			end
		end

		if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
			reasonsAccumulator:updateReasons(validateOverlappingVertices(meshInfo, validationContext))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

local function DEPRECATED_validateDescendantMeshMetrics(
	rootInstance: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allMeshes = ParseContentIds.parse(rootInstance, Constants.MESH_CONTENT_ID_FIELDS)

	reasonsAccumulator:updateReasons(DEPRECATED_validateTotalAssetTriangles(allMeshes, assetTypeEnum, isServer))

	for _, data in allMeshes do
		local errorString = string.format("%s.%s ( %s )", data.instance:GetFullName(), data.fieldName, data.id)

		if data.instance.ClassName == "MeshPart" then
			assert(data.fieldName == "MeshId")

			reasonsAccumulator:updateReasons(DEPRECATED_validateMeshIsAtOrigin(data.instance :: MeshPart, isServer))

			reasonsAccumulator:updateReasons(
				(validateMeshVertColors :: any)(data.instance[data.fieldName], true, isServer)
			)

			reasonsAccumulator:updateReasons(validateIsSkinned(data.instance :: MeshPart, isServer))

			if getFFlagUGCValidateMeshTriangleAreaForMeshes() then
				reasonsAccumulator:updateReasons(
					(validateMeshTriangleArea :: any)(data.instance, data.fieldName, isServer)
				)
			end
		elseif data.instance.ClassName == "WrapTarget" then
			assert(data.fieldName == "CageMeshId")

			if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
				reasonsAccumulator:updateReasons(
					(validateFullBodyCageDeletion :: any)(data.instance[data.fieldName], errorString, isServer)
				)
			end

			reasonsAccumulator:updateReasons(
				(validateCageUVs :: any)(
					data.instance[data.fieldName],
					data.instance :: WrapTarget,
					data.fieldName,
					isServer
				)
			)

			if getFFlagUGCValidateCageUVTriangleArea() then
				reasonsAccumulator:updateReasons(
					(validateCageUVTriangleArea :: any)(data.instance, data.fieldName, isServer)
				)
			end

			if getFFlagUGCValidateUVValuesInReference() then
				reasonsAccumulator:updateReasons(
					(validateCageUVValues :: any)(
						data.instance[data.fieldName],
						data.instance :: WrapTarget,
						data.fieldName,
						isServer
					)
				)
			end

			if getFFlagUGCValidateMeshTriangleAreaForCages() then
				reasonsAccumulator:updateReasons(
					(validateMeshTriangleArea :: any)(data.instance, data.fieldName, isServer)
				)
			end
		end

		if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
			reasonsAccumulator:updateReasons(
				(validateOverlappingVertices :: any)(data.instance[data.fieldName], errorString, isServer)
			)
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return if getFFlagUseUGCValidationContext()
	then validateDescendantMeshMetrics
	else DEPRECATED_validateDescendantMeshMetrics :: never
