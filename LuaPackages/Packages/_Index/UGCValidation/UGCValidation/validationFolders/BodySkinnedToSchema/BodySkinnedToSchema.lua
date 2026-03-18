local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local R15plusUtils = require(root.util.R15plusUtils)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local BodySkinnedToSchema = {}

BodySkinnedToSchema.fflag = require(root.flags.getFFlagUGCValidationEnableR15plusSkinning)
BodySkinnedToSchema.categories = { ValidationEnums.UploadCategory.TORSO_AND_LIMBS }
BodySkinnedToSchema.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

BodySkinnedToSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local schemaWhitelist = R15plusUtils.getJointNameWhitelist()
	for meshPartName, editableData in data.renderMeshesData do
		local joints = { UGCValidationService:GetSkinnedJointNamesFromEditableMesh(editableData.editable) }
		for _, jointName in joints do
			if not schemaWhitelist[jointName] then
				reporter:fail(ErrorSourceStrings.Keys.UnallowedJointSkinned, {
					partName = meshPartName,
					jointName = jointName,
				})
			end
		end
	end
end

return BodySkinnedToSchema :: Types.ValidationModule
