local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local InstanceTreeMatchesSchema = {}

InstanceTreeMatchesSchema.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.EMOTE_ANIMATION,
	ValidationEnums.UploadCategory.MAKEUP,
}
InstanceTreeMatchesSchema.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
InstanceTreeMatchesSchema.fflag = getFFlagUGCValidateMigrateSchemaProperties
InstanceTreeMatchesSchema.expectedFailures = {}

InstanceTreeMatchesSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance

	if Constants.BANNED_NAMES[instance.Name] then
		reporter:fail(ErrorSourceStrings.Keys.InstanceTreeBannedName, {
			InstancePath = instance:GetFullName(),
		})
	end

	for _, descendant in instance:GetDescendants() do
		for _, className in Constants.BANNED_CLASS_NAMES do
			if descendant:IsA(className) then
				reporter:fail(ErrorSourceStrings.Keys.InstanceTreeBannedClass, {
					InstancePath = descendant:GetFullName(),
					ClassName = className,
				})
			end
		end
		if Constants.BANNED_NAMES[descendant.Name] then
			reporter:fail(ErrorSourceStrings.Keys.InstanceTreeBannedName, {
				InstancePath = descendant:GetFullName(),
			})
		end
	end
end

return InstanceTreeMatchesSchema :: Types.ValidationModule
