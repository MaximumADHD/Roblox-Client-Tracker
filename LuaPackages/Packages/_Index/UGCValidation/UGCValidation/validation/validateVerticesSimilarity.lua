local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getFIntUGCLCCageVerticesSimilarityMaximum = require(root.flags.getFIntUGCLCCageVerticesSimilarityMaximum)
local Analytics = require(root.Analytics)
local MESSAGE_EXECUTE_FAILED =
	"Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again."
local MESSAGE_SIMILARITY_FAILED =
	"%s has %d%% of vertices too close to each other. Please edit the vertices to have at most %d%% coincident or close to one another."

local function validateVerticesSimilarity(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext,
	meshScale: Vector3,
	debugName: string
): (boolean, { string }?)
	local startTime = tick()

	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, result = pcallDeferred(function()
			return UGCValidationService:GetEditableMeshVerticesSimilarityRate(meshInfo.editableMesh, meshScale)
		end, validationContext)
	else
		success, result = pcall(function()
			return UGCValidationService:GetMeshVerticesSimilarityRate(meshInfo.contentId, meshScale)
		end)
	end

	if not success then
		if nil ~= isServer and isServer then
			error(string.format(MESSAGE_EXECUTE_FAILED, meshInfo.fullName))
		end

		Analytics.reportFailure(Analytics.ErrorType.validateVerticesSimilarity_FailedToExecute)
		return false, { string.format(MESSAGE_EXECUTE_FAILED, meshInfo.fullName) }
	end

	result = math.floor(result * 100)
	if result > getFIntUGCLCCageVerticesSimilarityMaximum() then
		Analytics.reportFailure(Analytics.ErrorType.validateVerticesSimilarity_MaxSimilarityExceeded)
		return false,
			{ string.format(MESSAGE_SIMILARITY_FAILED, debugName, result, getFIntUGCLCCageVerticesSimilarityMaximum()) }
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateVerticesSimilarity
