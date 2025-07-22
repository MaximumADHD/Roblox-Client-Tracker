--[[
	ValidateEachBodyPartFacsBounds.lua verifies that no body part vert extends beyond 1.5x (based on FFlag) of the original body part BBox, when FACS are all = 1.
	This is an extra test in case we decide to be more lenient on skinning virtual joints.
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
local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local getMeshIdForSkinningValidation = require(root.util.getMeshIdForSkinningValidation)

local ValidateEachBodyPartFacsBounds = function(
	allBodyParts: { [string]: Instance },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	assert(getEngineFeatureUGCValidationFullBodyFacs())

	local boundsMaxMultiplier = getFIntUGCValidationAcceptableBodyFacsExpansion() / 100

	local headMesh = (allBodyParts :: any)["Head"] :: MeshPart
	local headScale = getExpectedPartSize(headMesh, validationContext)
		/ getExpectedPartSize(headMesh, validationContext, true)

	local canFetchHeadData, headData = pcallDeferred(function()
		if getEngineFeatureEngineEditableMeshAvatarPublish() then
			local getEditableMeshSuccess, editableMesh =
				getEditableMeshFromContext(headMesh, "MeshId", validationContext)
			if not getEditableMeshSuccess then
				error("Failed to retrieve MeshContent")
			end

			return editableMesh
		else
			return getMeshIdForSkinningValidation(headMesh, validationContext.allowEditableInstances)
		end
	end, validationContext)

	if not canFetchHeadData then
		Analytics.reportFailure(
			Analytics.ErrorType.validateEachBodyPartFacsBounds_FailedToExecute,
			nil,
			validationContext
		)
		return false, { "Could not load head data for FACS bounds test. Please try again later or make a bug report." }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	for bodyPartName: string, partMesh: MeshPart in allBodyParts :: any do
		if bodyPartName == "Head" then
			continue
		end
		local partScale = getExpectedPartSize(partMesh, validationContext)
			/ getExpectedPartSize(partMesh, validationContext, true)

		local success, result
		if getEngineFeatureEngineEditableMeshAvatarPublish() then
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
			assert(partEditableMesh)

			success, result = pcallDeferred(function()
				return UGCValidationService:ValidatePartBBoxAfterFullFacs(
					headData,
					partEditableMesh,
					headScale,
					partScale,
					boundsMaxMultiplier
				)
			end, validationContext)
		else
			local partMeshId = getMeshIdForSkinningValidation(partMesh, validationContext.allowEditableInstances)
			success, result = pcallDeferred(function()
				return (UGCValidationService :: any):ValidatePartBBoxAfterFullFacsFromMeshIds(
					headData,
					partMeshId,
					headScale,
					partScale,
					boundsMaxMultiplier
				)
			end, validationContext)
		end

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
