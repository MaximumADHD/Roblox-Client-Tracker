local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getFIntUGCValidationVertexDensityThreshold = require(root.flags.getFIntUGCValidationVertexDensityThreshold)

local Analytics = require(root.Analytics)

local function validateMaxCubeDensity(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext,
	meshScale: Vector3
): (boolean, { string }?)
	local startTime = tick()
	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, result = pcallDeferred(function()
			return UGCValidationService:GetEditableMeshMaxNearbyVerticesCollisions(meshInfo.editableMesh, meshScale)
		end, validationContext)
	else
		success, result = pcall(function()
			return UGCValidationService:GetMaxNearbyVerticesCollisions(meshInfo.contentId, meshScale)
		end)
	end

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(
				string.format(
					"Failed to execute vertex density check for '%s'. Make sure mesh exists and try again.",
					meshInfo.fullName
				)
			)
		end

		Analytics.reportFailure(Analytics.ErrorType.validateVertexDensity_FailedToExecute)
		return false,
			{
				string.format(
					"Failed to execute vertex density check for '%s'. Make sure mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	if result > getFIntUGCValidationVertexDensityThreshold() then
		Analytics.reportFailure(Analytics.ErrorType.validateVertexDensity_MaxDensityExceeded)
		return false,
			{
				"The maximum vertex density has been exceeded. Reduce the number of vertices that are very close to each other.",
			}
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateMaxCubeDensity
