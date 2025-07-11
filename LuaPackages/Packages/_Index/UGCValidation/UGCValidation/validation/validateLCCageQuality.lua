local root = script.Parent.Parent

local getCageMeshInfos = require(root.validation.getCageMeshInfos)
local getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity =
	require(root.flags.getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity)

local getEngineFeatureEngineUGCValidateLCCagingRelevancy =
	require(root.flags.getEngineFeatureEngineUGCValidateLCCagingRelevancy)
local getFStringLCCageQualityDocumentationLink = require(root.flags.getFStringLCCageQualityDocumentationLink)
local getEngineFeatureUGCValidateCageMeshDistance = require(root.flags.getEngineFeatureUGCValidateCageMeshDistance)
local getFFlagUGCValidationHyperlinksInCageQuality = require(root.flags.getFFlagUGCValidationHyperlinksInCageQuality)

local getEngineFeatureEngineUGCValidationCageUVDuplicates =
	require(root.flags.getEngineFeatureEngineUGCValidationCageUVDuplicates)
local getEngineFeatureUGCValidateExtraShoesTests = require(root.flags.getEngineFeatureUGCValidateExtraShoesTests)

local validateVerticesSimilarity = require(root.validation.validateVerticesSimilarity)
local validateLCCagingRelevancy = require(root.validation.validateLCCagingRelevancy)
local validateRenderMeshInsideOuterCageMesh = require(root.validation.validateRenderMeshInsideOuterCageMesh)
local validateCageMeshDistance = require(root.validation.validateCageMeshDistance)
local validateCageUVDuplicates = require(root.validation.validateCageUVDuplicates)
local ValidateModifiedCageArea = require(root.validation.ValidateModifiedCageArea)

local Types = require(root.util.Types)

local function validateLCCageQuality(
	instance: Instance,
	meshInfoRenderMesh: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local validationResult: boolean = true
	local issues: { string } = {}
	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local wrapLayer = handle:FindFirstChildOfClass("WrapLayer") :: WrapLayer
	assert(wrapLayer, "calling validateInstanceTree() means we would not get this far if there was no WrapLayer")

	local hasCageMeshes, cageInfoIssues, cageInfoResults = getCageMeshInfos(instance, validationContext)
	if not hasCageMeshes or cageInfoResults == nil then
		return false, cageInfoIssues
	end

	local cageMeshInfos: { Types.MeshInfo } = { cageInfoResults[1], cageInfoResults[2] }
	local innerCage: Types.MeshInfo, outerCage: Types.MeshInfo = unpack(cageMeshInfos)

	if getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity() then
		-- Cages do not have the scaling factor. They are aligned at scale of (1,1,1)
		local unit_scale = Vector3.new(1, 1, 1)

		for _, cageInfo: Types.MeshInfo in cageMeshInfos do
			local success: boolean, failedReason: { string }? =
				validateVerticesSimilarity(cageInfo, validationContext, unit_scale, cageInfo.fullName)

			if not success and failedReason ~= nil then
				validationResult = false
				for _, issue in failedReason do
					table.insert(issues, issue)
				end
			end
		end
	end

	if getEngineFeatureEngineUGCValidateLCCagingRelevancy() then
		local success: boolean, failedReasons: { string }? = validateLCCagingRelevancy(
			innerCage,
			outerCage,
			meshInfoRenderMesh,
			wrapLayer.ReferenceOrigin.Position,
			wrapLayer.CageOrigin.Position,
			validationContext
		)

		if not success and failedReasons ~= nil then
			validationResult = false
			for _, issue in failedReasons do
				table.insert(issues, issue)
			end
		end
	end

	do
		local success: boolean, failedReason: { string }? =
			validateRenderMeshInsideOuterCageMesh(wrapLayer, outerCage, meshInfoRenderMesh, validationContext)
		if not success then
			table.insert(issues, table.concat(failedReason :: { string }, "\n"))
			validationResult = false
		end
	end

	if getEngineFeatureUGCValidateCageMeshDistance() then
		local success: boolean, failedReason: { string }? = validateCageMeshDistance(
			innerCage,
			outerCage,
			meshInfoRenderMesh,
			wrapLayer.ReferenceOrigin,
			wrapLayer.CageOrigin,
			validationContext
		)
		if not success then
			table.insert(issues, table.concat(failedReason :: { string }, "\n"))
			validationResult = false
		end
	end

	if getEngineFeatureEngineUGCValidationCageUVDuplicates() then
		local success: boolean, failedReason: { string }? =
			validateCageUVDuplicates(innerCage, outerCage, meshInfoRenderMesh, validationContext)
		if not success then
			table.insert(issues, table.concat(failedReason :: { string }, "\n"))
			validationResult = false
		end
	end

	if getEngineFeatureUGCValidateExtraShoesTests() then
		local success, failedReason = ValidateModifiedCageArea.validate(
			innerCage,
			wrapLayer.ReferenceOrigin,
			outerCage,
			wrapLayer.CageOrigin,
			meshInfoRenderMesh,
			validationContext
		)
		if not success then
			table.insert(issues, table.concat(failedReason :: { string }, "\n"))
			validationResult = false
		end
	end

	if not validationResult then
		if getFStringLCCageQualityDocumentationLink() ~= "" then
			local urlErrorMessage
			if getFFlagUGCValidationHyperlinksInCageQuality() then
				urlErrorMessage =
					string.format("[Caging best practices](%s)", getFStringLCCageQualityDocumentationLink())
			else
				urlErrorMessage = string.format(
					"To better understand caging requirements, please visit %s",
					getFStringLCCageQualityDocumentationLink()
				)
			end

			table.insert(issues, urlErrorMessage)
		end

		return false, issues
	end
	return true
end

return validateLCCageQuality
