--[[
	validateBodyPartVertsSkinnedToR15.lua verifies that non-head body parts are only skinned to R15 joints, not arbitrary joints
]]

local root = script.Parent.Parent

local UGCValidationService = game:GetService("UGCValidationService")
local Analytics = require(root.Analytics)

local util = root.util
local Constants = require(root.Constants)
local Types = require(util.Types)
local pcallDeferred = require(util.pcallDeferred)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getMeshIdForSkinningValidation = require(root.util.getMeshIdForSkinningValidation)

local flags = root.flags
local getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15 =
	require(flags.getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15)
local getEngineFeatureEngineEditableMeshAvatarPublish =
	require(root.flags.getEngineFeatureEngineEditableMeshAvatarPublish)

local validateBodyPartVertsSkinnedToR15 = function(
	bodyPartModel: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	assert(getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15())

	for _, partName in Constants.R15_BODY_PARTS do
		local bodyPart = bodyPartModel:FindFirstChild(partName) :: MeshPart

		if bodyPart then
			assert(bodyPart:IsA("MeshPart"))
			local success, joints

			if getEngineFeatureEngineEditableMeshAvatarPublish() then
				local getEditableMeshSuccess, editableMesh =
					getEditableMeshFromContext(bodyPart, "MeshId", validationContext)

				if not getEditableMeshSuccess then
					Analytics.reportFailure(
						Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning,
						nil,
						validationContext
					)
					return false,
						{ `Could not get editable mesh data for {bodyPart}. Please retry later or make a bug report.` }
				end

				assert(editableMesh)

				success, joints = pcallDeferred(function()
					return { (UGCValidationService :: any):GetSkinnedJointNamesFromEditableMesh(editableMesh) }
				end, validationContext)
			else
				local meshId = getMeshIdForSkinningValidation(bodyPart, validationContext.allowEditableInstances)

				success, joints = pcallDeferred(function()
					return { (UGCValidationService :: any):GetSkinnedJointNamesFromMeshId(meshId) }
				end, validationContext)
			end

			if not success then
				Analytics.reportFailure(
					Analytics.ErrorType.validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning,
					nil,
					validationContext
				)
				return false, { `Could not get skinning data for {bodyPart}. Please retry later or make a bug report.` }
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
							`{bodyPart} is skinned to a non-standard joint {jointName}. Body parts may only be skinned to standard R15 joints.`,
						}
				end
			end
		end
	end

	return true
end

return validateBodyPartVertsSkinnedToR15
