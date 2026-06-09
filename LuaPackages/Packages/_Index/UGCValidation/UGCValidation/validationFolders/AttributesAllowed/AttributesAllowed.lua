local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local AttributesAllowed = {}

AttributesAllowed.categories = Constants.AllAssetUploadCategoriesIncludingMakeup
AttributesAllowed.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.hsrAssets,
}
AttributesAllowed.fflag = getFFlagUGCValidateMigrateSchemaProperties
AttributesAllowed.expectedFailures = {}

local function hasOnlyAllowedAttribute(attributes: { [string]: any }, allowEditableInstances: boolean): boolean
	for attribute, value in attributes do
		if allowEditableInstances and attribute == Constants.AlternateMeshIdAttributeName then
			continue
		end

		if attribute ~= Constants.GUIDAttributeName then
			return false
		end

		if typeof(value) ~= "string" then
			return false
		end

		if string.len(value) > Constants.GUIDAttributeMaxLength then
			return false
		end
	end
	return true
end

local function reportInstanceWithDisallowedAttributes(reporter: Types.ValidationReporter, instance: Instance)
	-- One fail per offending instance so Studio can deep-link to each.
	reporter:fail(ErrorSourceStrings.Keys.NoAttributes, {
		RootInstanceName = instance.Name,
		InstanceNameList = instance:GetFullName(),
	})
end

local function walkInstanceTree(
	reporter: Types.ValidationReporter,
	rootInstance: Instance,
	allowEditableInstances: boolean
)
	if not hasOnlyAllowedAttribute(rootInstance:GetAttributes(), allowEditableInstances) then
		reportInstanceWithDisallowedAttributes(reporter, rootInstance)
	end

	for _, descendant in rootInstance:GetDescendants() do
		if allowEditableInstances and descendant:GetAttribute(Constants.AlternateMeshIdAttributeName) then
			continue
		end
		if next(descendant:GetAttributes()) ~= nil then
			reportInstanceWithDisallowedAttributes(reporter, descendant)
		end
	end
end

AttributesAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- IEC allows AlternateMeshId for editable-instance wiring.
	local allowEditableInstances = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC

	walkInstanceTree(reporter, data.rootInstance, allowEditableInstances)

	-- HSR roots are loaded out-of-tree by FetchHSRAssets; sweep them too.
	for _, hsrCandidates in data.hsrAssets do
		for _, hsrAsset in hsrCandidates do
			walkInstanceTree(reporter, hsrAsset, allowEditableInstances)
		end
	end
end

return AttributesAllowed :: Types.ValidationModule
