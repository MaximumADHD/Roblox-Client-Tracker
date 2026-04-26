--[[
	ValidateMeshPartOnlySkinnedToR15.lua verifies that non-head body parts and LCs are only skinned to R15 joints, not arbitrary joints
	DEPRECATED: Use BodySkinnedToSchema / RigidSkinnedToSchema / LCSkinnedToSchema in the new validation system instead.
]]

local root = script.Parent.Parent

local UGCValidationService = game:GetService("UGCValidationService")
local Analytics = require(root.Analytics)

local util = root.util
local Constants = require(root.Constants)
local Types = require(util.Types)
local pcallDeferred = require(util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning =
	require(root.flags.getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning)
local getFFlagUGCValidationEnableR15plusSkinning = require(root.flags.getFFlagUGCValidationEnableR15plusSkinning)

local ValidateMeshPartOnlySkinnedToR15 = {}

function ValidateMeshPartOnlySkinnedToR15.validateMeshPart(
	meshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if
		getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning()
		and getFFlagUGCValidationEnableR15plusSkinning()
	then
		error(
			"ValidateMeshPartOnlySkinnedToR15 is deprecated. Use RigidSkinnedToSchema / LCSkinnedToSchema / BodySkinnedToSchema instead."
		)
	end

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(meshPart, "MeshId", validationContext)

	if not getEditableMeshSuccess then
		Analytics.reportFailure(
			Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning,
			nil,
			validationContext
		)
		return false, { `Could not get editable mesh data for {meshPart}. Please retry later or make a bug report.` }
	end

	local success, joints = pcallDeferred(function()
		return { (UGCValidationService :: any):GetSkinnedJointNamesFromEditableMesh(editableMesh) }
	end, validationContext)

	if not success then
		Analytics.reportFailure(
			Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning,
			nil,
			validationContext
		)
		return false, { `Could not get skinning data for {meshPart}. Please retry later or make a bug report.` }
	end

	for _, jointName in joints do
		if Constants.R15_STANDARD_JOINT_NAMES[jointName] == nil then
			Analytics.reportFailure(
				Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints,
				nil,
				validationContext
			)
			return false,
				{
					`{meshPart} is skinned to a non-standard joint {jointName}. This part may only be skinned to standard R15 joints.`,
				}
		end
	end

	return true
end

function ValidateMeshPartOnlySkinnedToR15.validateBodyParts(
	bodyPartModel: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if
		getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning()
		and getFFlagUGCValidationEnableR15plusSkinning()
	then
		error(
			"ValidateMeshPartOnlySkinnedToR15 is deprecated. Use RigidSkinnedToSchema / LCSkinnedToSchema / BodySkinnedToSchema instead."
		)
	end

	for _, partName in Constants.R15_BODY_PARTS do
		local bodyPart = bodyPartModel:FindFirstChild(partName) :: MeshPart

		if bodyPart then
			local pass, issues = ValidateMeshPartOnlySkinnedToR15.validateMeshPart(bodyPart, validationContext)
			if not pass then
				return pass, issues
			end
		end
	end

	return true
end

return ValidateMeshPartOnlySkinnedToR15
