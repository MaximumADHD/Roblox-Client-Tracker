local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
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

	local success, result = pcallDeferred(function()
		return UGCValidationService:GetEditableMeshVerticesSimilarityRate(meshInfo.editableMesh, meshScale)
	end, validationContext)

	if not success then
		if nil ~= isServer and isServer then
			error(string.format(MESSAGE_EXECUTE_FAILED, meshInfo.fullName))
		end

		Analytics.reportFailure(Analytics.ErrorType.validateVerticesSimilarity_FailedToExecute, nil, validationContext)
		return false, { string.format(MESSAGE_EXECUTE_FAILED, meshInfo.fullName) }
	end

	result = math.floor(result * 100)
	if result > getFIntUGCLCCageVerticesSimilarityMaximum() then
		Analytics.reportFailure(
			Analytics.ErrorType.validateVerticesSimilarity_MaxSimilarityExceeded,
			nil,
			validationContext
		)

		local errorString =
			string.format(MESSAGE_SIMILARITY_FAILED, debugName, result, getFIntUGCLCCageVerticesSimilarityMaximum())
		errorString = errorString .. "[Read more](https://create.roblox.com/docs/art/validation-errors#cageDensity)"

		return false, { errorString }
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateVerticesSimilarity
