local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local MaterialsAllowed = {}

MaterialsAllowed.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}
MaterialsAllowed.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
MaterialsAllowed.fflag = getFFlagUGCValidateMigrateSchemaProperties
MaterialsAllowed.expectedFailures = {}

local function buildAcceptedMaterialList(): string
	local acceptedMaterialNames = {}
	for material in pairs(Constants.MATERIAL_WHITELIST) do
		table.insert(acceptedMaterialNames, material.Name)
	end
	return table.concat(acceptedMaterialNames, ", ")
end

MaterialsAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance

	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	local acceptedMaterials: string? = nil
	for _, descendant in objects do
		if descendant:IsA("BasePart") and not Constants.MATERIAL_WHITELIST[descendant.Material] then
			-- Per-instance fail mirrors validateTags: each offending part gets its
			-- own actionable entry. AllowedMaterials is computed once and reused.
			acceptedMaterials = acceptedMaterials or buildAcceptedMaterialList()
			reporter:fail(ErrorSourceStrings.Keys.MaterialNotAllowed, {
				InstanceNameList = descendant:GetFullName(),
				AllowedMaterials = acceptedMaterials,
			})
		end
	end
end

return MaterialsAllowed :: Types.ValidationModule
