local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local RigidSkinnedToSchema = {}

RigidSkinnedToSchema.fflag = require(root.flags.getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning)
RigidSkinnedToSchema.categories = { ValidationEnums.UploadCategory.RIGID_ACCESSORY }
RigidSkinnedToSchema.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

RigidSkinnedToSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local handleEditableData = data.renderMeshesData["Handle"]
	if handleEditableData == nil then
		error("Schema should have ensured data exists for handle")
	end

	if #handleEditableData.editable:GetBones() > 0 then
		reporter:fail(
			ErrorSourceStrings.Keys.AccessorySkinning_RigidIsSkinned,
			nil,
			if getEngineFeatureEngineUGCValidationExpandReturnSchema()
				then data.rootInstance:FindFirstChild("Handle")
				else nil
		)
	end
end

return RigidSkinnedToSchema :: Types.ValidationModule
