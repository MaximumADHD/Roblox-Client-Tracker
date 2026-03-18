local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFIntUGCLCCagingRelevancyMinimum = require(root.flags.getFIntUGCLCCagingRelevancyMinimum)

local function validateLCCagingRelevancy(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo,
	meshInfo: Types.MeshInfo,
	innerOffset: Vector3,
	outerOffset: Vector3,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, relevant, considered = pcallDeferred(function()
		return UGCValidationService:GetEditableCagingRelevancyMetrics(
			innerCageMeshInfo.editableMesh,
			outerCageMeshInfo.editableMesh,
			meshInfo.editableMesh,
			innerOffset,
			outerOffset
		)
	end, validationContext)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCagingRelevancy_FailedToExecute, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to execute cage relevancy detection for '%s'. Make sure the cage mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	if considered == 0 then
		-- no cages moved, so all changes are relevanty
		return true
	end

	local score = math.floor(100 * relevant / considered)

	if score < getFIntUGCLCCagingRelevancyMinimum() then
		Analytics.reportFailure(Analytics.ErrorType.validateCagingRelevancy_IrrelevantCaging, nil, validationContext)
		local errorString =
			"Validation detected %d%% of the outer cage edits do not cover the accessory. Make sure you are moving the outer cage only where needed."
		errorString = errorString .. "[Read more](https://create.roblox.com/docs/art/validation-errors#cageRelevancy)"

		return false, {
			string.format(errorString, 100 - score),
		}
	end
	return true
end

return validateLCCagingRelevancy
