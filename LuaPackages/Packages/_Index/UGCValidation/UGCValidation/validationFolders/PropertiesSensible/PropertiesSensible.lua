local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFIntUGCValidateMaxHSRDataLen = require(root.flags.getFIntUGCValidateMaxHSRDataLen)

local PropertiesSensible = {}

PropertiesSensible.categories = Constants.AllAssetUploadCategoriesIncludingMakeup
PropertiesSensible.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.hsrAssets,
}
PropertiesSensible.fflag = getFFlagUGCValidateMigrateSchemaProperties
PropertiesSensible.expectedFailures = {}

local function walkInstanceTree(
	reporter: Types.ValidationReporter,
	rootInstance: Instance,
	propertyLengthRestrictions: { [string]: any }
)
	local objects: { Instance } = rootInstance:GetDescendants()
	table.insert(objects, rootInstance)

	for _, obj in objects do
		local result, problematicProperties = (UGCValidationService :: any):ValidatePropertiesSensible(
			obj,
			propertyLengthRestrictions[obj.ClassName]
		)

		if not result then
			reporter:fail(ErrorSourceStrings.Keys.PropertiesNotSensible, {
				ClassName = obj.ClassName,
				InstancePath = obj:GetFullName(),
				ProblematicProperties = table.concat(problematicProperties, ", "),
			})
		end
	end
end

PropertiesSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getEngineFeatureEngineUGCValidatePropertiesSensible() then
		return
	end

	-- Read FInt per-run; caching at module-init breaks hot-reload of the override.
	local propertyLengthRestrictions = {
		HiddenSurfaceRemovalAsset = { HSRData = getFIntUGCValidateMaxHSRDataLen() },
	}

	walkInstanceTree(reporter, data.rootInstance, propertyLengthRestrictions)

	-- HSR roots are loaded out-of-tree by FetchHSRAssets; sweep them too.
	for _, hsrCandidates in data.hsrAssets do
		for _, hsrAsset in hsrCandidates do
			walkInstanceTree(reporter, hsrAsset, propertyLengthRestrictions)
		end
	end
end

return PropertiesSensible :: Types.ValidationModule
