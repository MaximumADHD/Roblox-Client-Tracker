local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent
local Analytics = require(root.Analytics)
local pcallDeferred = require(root.util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getFIntFacsJointMaximumDistRatioDirect = require(root.flags.getFIntFacsJointMaximumDistRatioDirect)
local getFIntFacsJointMaximumDistRatioAccumulated = require(root.flags.getFIntFacsJointMaximumDistRatioAccumulated)
local Types = require(root.util.Types)

local function validateFacsJointBounds(
	meshPartHead: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, result = pcallDeferred(function()
		local getEditableMeshSuccess, editableMesh =
			getEditableMeshFromContext(meshPartHead, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			error("Failed to retrieve MeshContent")
		end
		return (UGCValidationService :: any):GetMaximalJointDistancesWithinFacs(editableMesh)
	end, validationContext)

	if not success then
		Analytics.reportFailure(
			Analytics.ErrorType.validateFACSJointTransformsWithinBounds_Error,
			nil,
			validationContext
		)
		return false, {
			"Failed to validate facial animation joint bounds, please try again later",
		}
	end

	local maxDirectDistRatio, actionName, maxAccumulatedDistRatio, jointName = unpack(result)
	if maxDirectDistRatio > (getFIntFacsJointMaximumDistRatioDirect() / 100) then
		return false,
			{
				`Head facial animation {actionName} results in joints being moved substantially outside of the head. Please edit your facial animations and try again.`,
			}
	end

	if maxAccumulatedDistRatio > (getFIntFacsJointMaximumDistRatioAccumulated() / 100) then
		return false,
			{
				`Head facial animations can be combined to extend the joint {jointName} far outside the head. Please edit your facial animations and try again.`,
			}
	end

	return true
end

return validateFacsJointBounds
