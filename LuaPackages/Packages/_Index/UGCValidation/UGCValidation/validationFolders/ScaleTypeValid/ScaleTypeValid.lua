local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local ScaleTypeValid = {}

ScaleTypeValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}
ScaleTypeValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
ScaleTypeValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
ScaleTypeValid.expectedFailures = {}

ScaleTypeValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance

	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	for _, obj in objects do
		if obj:IsA("StringValue") and obj.Name == "AvatarPartScaleType" then
			if not Constants.AvatarPartScaleTypes[obj.Value] then
				reporter:fail(ErrorSourceStrings.Keys.ScaleTypeInvalid, {
					ParentName = if obj.Parent then obj.Parent.Name else obj.Name,
				})
			end
		end
	end
end

return ScaleTypeValid :: Types.ValidationModule
