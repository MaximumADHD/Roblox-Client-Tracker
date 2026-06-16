local root = script.Parent.Parent

local getCageMeshInfos = require(root.validation.getCageMeshInfos)

local getFStringLCCageQualityDocumentationLink = require(root.flags.getFStringLCCageQualityDocumentationLink)
local getFFlagUGCValidationEyebrowEyelashSupport = require(root.flags.getFFlagUGCValidationEyebrowEyelashSupport)
local getFFlagUGCValidateMigrateCageGeometry = require(root.flags.getFFlagUGCValidateMigrateCageGeometry)

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

	local success: boolean = false
	local failedReason: { string }? = {}

	-- Cages do not have the scaling factor. They are aligned at scale of (1,1,1)
	local unit_scale = Vector3.new(1, 1, 1)

	if not getFFlagUGCValidateMigrateCageGeometry() then
		for _, cageInfo: Types.MeshInfo in cageMeshInfos do
			success, failedReason =
				validateVerticesSimilarity(cageInfo, validationContext, unit_scale, cageInfo.fullName)

			if not success and failedReason ~= nil then
				validationResult = false
				for _, issue in failedReason do
					table.insert(issues, issue)
				end
			end
		end
	end

	success, failedReason = validateLCCagingRelevancy(
		innerCage,
		outerCage,
		meshInfoRenderMesh,
		wrapLayer.ReferenceOrigin.Position,
		wrapLayer.CageOrigin.Position,
		validationContext
	)

	if not success and failedReason ~= nil then
		validationResult = false
		for _, issue in failedReason do
			table.insert(issues, issue)
		end
	end

	do
		success, failedReason =
			validateRenderMeshInsideOuterCageMesh(wrapLayer, outerCage, meshInfoRenderMesh, validationContext)
		if not success then
			table.insert(issues, table.concat(failedReason :: { string }, "\n"))
			validationResult = false
		end
	end

	if not getFFlagUGCValidateMigrateCageGeometry() then
		if getFFlagUGCValidationEyebrowEyelashSupport() then
			local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
			if
				assetTypeEnum ~= Enum.AssetType.EyebrowAccessory
				and assetTypeEnum ~= Enum.AssetType.EyelashAccessory
			then
				success, failedReason = validateCageMeshDistance(
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
		else
			success, failedReason = validateCageMeshDistance(
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
	end

	success, failedReason = validateCageUVDuplicates(innerCage, outerCage, meshInfoRenderMesh, validationContext)
	if not success then
		table.insert(issues, table.concat(failedReason :: { string }, "\n"))
		validationResult = false
	end

	do
		success, failedReason = ValidateModifiedCageArea.validate(
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
			local urlErrorMessage =
				string.format("[Caging best practices](%s)", getFStringLCCageQualityDocumentationLink())

			table.insert(issues, urlErrorMessage)
		end

		return false, issues
	end
	return true
end

return validateLCCageQuality
