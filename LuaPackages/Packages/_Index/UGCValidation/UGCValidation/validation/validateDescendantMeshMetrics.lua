--!strict

--[[
	validateDescendantMeshMetrics.lua checks the meshes in all descendant Instance properties to ensur they do conform to triangle/vertex count specifications
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

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

local getFFlagUGCValidateBodyPartsExtendedMeshTests = require(root.flags.getFFlagUGCValidateBodyPartsExtendedMeshTests)
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getFFlagUGCValidateCageUVTriangleArea = require(root.flags.getFFlagUGCValidateCageUVTriangleArea)
local getFFlagUGCValidateMeshTriangleAreaForCages = require(root.flags.getFFlagUGCValidateMeshTriangleAreaForCages)
local getFFlagUGCValidateMeshTriangleAreaForMeshes = require(root.flags.getFFlagUGCValidateMeshTriangleAreaForMeshes)
local getFFlagUGCValidateUVValuesInReference = require(root.flags.getFFlagUGCValidateUVValuesInReference)

local function validateIsSkinned(obj: MeshPart, isServer: boolean?): (boolean, { string }?)
	if not obj.HasSkinnedMesh then
		Analytics.reportFailure(Analytics.ErrorType.validateDescendantMeshMetrics_NoSkinningInfo)
		return false, { `{obj.Name}.MeshId does not contain skinning information!` }
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
		local errorMessage = `MeshPart {obj.Name} has HasSkinnedMesh true, but has a mesh without skinning information`
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
local function validateMeshIsAtOrigin(obj: MeshPart, isServer: boolean?): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(obj.MeshId, isServer)
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
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?
): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allMeshes = ParseContentIds.parse(rootInstance, Constants.MESH_CONTENT_ID_FIELDS)

	reasonsAccumulator:updateReasons(validateTotalAssetTriangles(allMeshes, assetTypeEnum, isServer))

	for _, data in allMeshes do
		local errorString = string.format("%s.%s ( %s )", data.instance:GetFullName(), data.fieldName, data.id)

		if data.instance.ClassName == "MeshPart" then
			assert(data.fieldName == "MeshId")

			reasonsAccumulator:updateReasons(validateMeshIsAtOrigin(data.instance :: MeshPart, isServer))

			reasonsAccumulator:updateReasons(validateMeshVertColors(data.instance[data.fieldName], true, isServer))

			reasonsAccumulator:updateReasons(validateIsSkinned(data.instance :: MeshPart, isServer))

			if getFFlagUGCValidateMeshTriangleAreaForMeshes() then
				reasonsAccumulator:updateReasons(validateMeshTriangleArea(data.instance, data.fieldName, isServer))
			end
		elseif data.instance.ClassName == "WrapTarget" then
			assert(data.fieldName == "CageMeshId")

			if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
				reasonsAccumulator:updateReasons(
					validateFullBodyCageDeletion(data.instance[data.fieldName], errorString, isServer)
				)
			end

			reasonsAccumulator:updateReasons(
				validateCageUVs(data.instance[data.fieldName], data.instance :: WrapTarget, data.fieldName, isServer)
			)

			if getFFlagUGCValidateCageUVTriangleArea() then
				reasonsAccumulator:updateReasons(validateCageUVTriangleArea(data.instance, data.fieldName, isServer))
			end

			if getFFlagUGCValidateUVValuesInReference() then
				reasonsAccumulator:updateReasons(
					validateCageUVValues(
						data.instance[data.fieldName],
						data.instance :: WrapTarget,
						data.fieldName,
						isServer
					)
				)
			end

			if getFFlagUGCValidateMeshTriangleAreaForCages() then
				reasonsAccumulator:updateReasons(validateMeshTriangleArea(data.instance, data.fieldName, isServer))
			end
		end

		if getFFlagUGCValidateBodyPartsExtendedMeshTests() then
			reasonsAccumulator:updateReasons(
				validateOverlappingVertices(data.instance[data.fieldName], errorString, isServer)
			)
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDescendantMeshMetrics
