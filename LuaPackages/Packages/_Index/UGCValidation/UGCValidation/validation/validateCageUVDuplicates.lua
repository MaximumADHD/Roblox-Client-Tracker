--[[
	Checks that cage UVs are within references UV set and how many uvs are duplicates
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)

local WRAP_TARGET_CAGE_REFERENCE_VALUES = require(root.WrapTargetCageUVReferenceValues)

local getFIntUGCValidateCageDuplicateUVThreshold = require(root.flags.getFIntUGCValidateCageDuplicateUVThreshold)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local Analytics = require(root.Analytics)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVDuplicates(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo,
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local templateUVValues = {}
	for _, value in pairs(WRAP_TARGET_CAGE_REFERENCE_VALUES) do
		for _, uv in pairs(value) do
			table.insert(templateUVValues, uv)
		end
	end

	local function checkCageUV(
		referenceUVValues: { Vector2 },
		cageMeshInfo: Types.MeshInfo,
		isInner: boolean
	): (boolean, { string }?)
		local success, countUVNotInReference = pcallDeferred(function()
			return (UGCValidationService :: any):ValidateEditableMeshUVDuplicates(
				referenceUVValues,
				cageMeshInfo.editableMesh
			)
		end, validationContext)

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVDuplicate_FailedToExecute, nil, validationContext)
			local errorMsg = string.format(
				"Failed to load UVs for Inner cage of '%s'. Make sure the UV map exists and try again.",
				meshInfo.fullName
			)
			return false, { errorMsg }
		end

		if countUVNotInReference > getFIntUGCValidateCageDuplicateUVThreshold() then
			Analytics.reportFailure(
				Analytics.ErrorType.validateCageUVDuplicate_UnexpectedUVValue,
				nil,
				validationContext
			)

			local errorString = string.format(
				"There are %d UV values in %s cage that do not belong to the template. Please correct the cage UV.",
				countUVNotInReference,
				if isInner then "inner" else "outer"
			)
			errorString = errorString
				.. "[Read more](https://create.roblox.com/docs/art/validation-errors#cageExtraUvs)"

			return false, { errorString }
		end
		return true
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(checkCageUV(templateUVValues, innerCageMeshInfo, true))
	reasonsAccumulator:updateReasons(checkCageUV(templateUVValues, outerCageMeshInfo, false))
	return reasonsAccumulator:getFinalResults()
end

return validateCageUVDuplicates
