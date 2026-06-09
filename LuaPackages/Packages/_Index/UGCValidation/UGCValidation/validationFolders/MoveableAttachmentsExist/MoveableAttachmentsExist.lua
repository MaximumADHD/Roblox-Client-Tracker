local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local getAllInstancesWithName = require(root.util.getAllInstancesWithName)
local R15plusUtils = require(root.util.R15plusUtils)
local MoveableAttachmentsExist = {}

MoveableAttachmentsExist.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
MoveableAttachmentsExist.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
MoveableAttachmentsExist.fflag = R15plusUtils.checkFlagEnabledForAllowHrd

MoveableAttachmentsExist.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	for _, meshpart in getAllInstancesIsA(rootInstance, "MeshPart") do
		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			reporter:setReportingInstance(meshpart)
		end
		local boneSchema = R15plusUtils.getAvatarBoneSchema(meshpart.Name)
		local attWhiteList = R15plusUtils.getNameWhitelistOfClassInSchema(boneSchema, "Attachment")
		for name, val in attWhiteList do
			if not val then
				continue
			end

			local found = getAllInstancesWithName(meshpart, name)
			if #found ~= 1 or found[1].ClassName ~= "Attachment" then
				reporter:fail(ErrorSourceStrings.Keys.MissingRequiredAttachment, {
					attName = name,
					partName = meshpart.Name,
				})
			end
		end
	end
end

return MoveableAttachmentsExist :: Types.ValidationModule
