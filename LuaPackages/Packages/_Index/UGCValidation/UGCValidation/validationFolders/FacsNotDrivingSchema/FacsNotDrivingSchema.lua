local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local R15plusUtils = require(root.util.R15plusUtils)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local Constants = require(root.Constants)
local FacsNotDrivingSchema = {}

FacsNotDrivingSchema.fflag = require(root.flags.getFFlagUGCValidationEnableR15plusSkinning)
FacsNotDrivingSchema.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
FacsNotDrivingSchema.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

FacsNotDrivingSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local schemaWhitelist = R15plusUtils.getJointNameWhitelist()
	local headMeshData = data.renderMeshesData["Head"]
	local joints = { UGCValidationService:GetFacsDrivenJointNamesFromEditableMesh(headMeshData.editable) }
	for _, jointName in joints do
		if schemaWhitelist[jointName] or Constants.ALLOWED_SKINNING_TRANSFER_JOINT_NAMES[jointName] then
			reporter:fail(ErrorSourceStrings.Keys.UnallowedFacsJoints, {
				jointName = jointName,
			})
		end
	end
end

return FacsNotDrivingSchema :: Types.ValidationModule
