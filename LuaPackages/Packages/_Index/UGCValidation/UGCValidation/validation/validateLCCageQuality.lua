--!strict

local root = script.Parent.Parent

local getCageMeshInfos = require(root.validation.getCageMeshInfos)
local getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity =
	require(root.flags.getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity)

local validateVerticesSimilarity = require(root.validation.validateVerticesSimilarity)
local Types = require(root.util.Types)

local function validateLCCageQuality(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local validationResult: boolean = true
	local issues: { string } = {}

	local hasCageMeshes, cageInfoIssues, cageInfoResults = getCageMeshInfos(instance, validationContext)
	if not hasCageMeshes or cageInfoResults == nil then
		return false, cageInfoIssues
	end

	local cageMeshInfos: { Types.MeshInfo } = { cageInfoResults[1], cageInfoResults[2] }

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

	if not validationResult then
		return false, issues
	end
	return true
end

return validateLCCageQuality
