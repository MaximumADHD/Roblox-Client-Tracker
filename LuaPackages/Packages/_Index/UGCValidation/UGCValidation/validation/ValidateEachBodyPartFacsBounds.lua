--[[
	ValidateEachBodyPartFacsBounds.lua verifies that no body part vert extends beyond 1.5x (based on FFlag) of the original body part BBox, when FACS are all = 1.
]]

local root = script.Parent.Parent

local UGCValidationService = game:GetService("UGCValidationService")
local Analytics = require(root.Analytics)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local pcallDeferred = require(util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

local flags = root.flags
local getEngineFeatureUGCValidationFullBodyFacs = require(flags.getEngineFeatureUGCValidationFullBodyFacs)
local getFIntUGCValidationAcceptableBodyFacsExpansion = require(flags.getFIntUGCValidationAcceptableBodyFacsExpansion)

local ValidateEachBodyPartFacsBounds = function(
	allBodyParts: { [string]: Instance },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	assert(getEngineFeatureUGCValidationFullBodyFacs())

	local boundsMaxMultiplier = getFIntUGCValidationAcceptableBodyFacsExpansion() / 100

	local headMesh = (allBodyParts :: any)["Head"] :: MeshPart
	local headScale = getExpectedPartSize(headMesh, validationContext)
		/ getExpectedPartSize(headMesh, validationContext, true)

	local getEditableMeshSuccess, headEditableMesh = getEditableMeshFromContext(headMesh, "MeshId", validationContext)

	if not getEditableMeshSuccess then
		return false, { "Could not load editable mesh for body FACS test." }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	for bodyPartName: string, partMesh: MeshPart in allBodyParts :: any do
		if bodyPartName == "Head" then
			continue
		end
		local partScale = getExpectedPartSize(partMesh, validationContext)
			/ getExpectedPartSize(partMesh, validationContext, true)

		local getOtherEditableMeshSuccess, partEditableMesh =
			getEditableMeshFromContext(partMesh, "MeshId", validationContext)

		if not getOtherEditableMeshSuccess then
			Analytics.reportFailure(
				Analytics.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute,
				nil,
				validationContext
			)
			return false, { `Could not load {bodyPartName} editable mesh for body FACS test.` }
		end

		local success, result = pcallDeferred(function()
			return (UGCValidationService :: any):ValidatePartBBoxAfterFullFacs(
				headEditableMesh,
				partEditableMesh,
				headScale,
				partScale,
				boundsMaxMultiplier
			)
		end, validationContext)

		if not success then
			Analytics.reportFailure(
				Analytics.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute,
				nil,
				validationContext
			)
			return false, { `Could not get post-facs size of {bodyPartName}.` }
		end

		if not result then
			reasonsAccumulator:updateReasons(false, {
				`{bodyPartName} is skinned to face joints in a way that can result in expanded size for some facial expressions. Please adjust your skinning or facial animation data.`,
			})
		end
	end

	local pass, _ = reasonsAccumulator:getFinalResults()
	if not pass then
		Analytics.reportFailure(
			Analytics.ErrorType.validateEachBodyPartFacsBounds_ExtendedBounds,
			nil,
			validationContext
		)
	end
	return reasonsAccumulator:getFinalResults()
end

return ValidateEachBodyPartFacsBounds
