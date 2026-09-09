local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local Constants = require(root.Constants)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CreateExpectedSchema = require(root.util.CreateExpectedSchema)
local validateInstanceTreeAgainstSchema = require(root.util.validateInstanceTreeAgainstSchema)

local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)
local getFFlagUGCValidationAnimationPackFolderStructure =
	require(root.flags.getFFlagUGCValidationAnimationPackFolderStructure)
local getFFlagUGCValidationAnimationPackDisableModelStructure =
	require(root.flags.getFFlagUGCValidationAnimationPackDisableModelStructure)
local getEngineFeatureEngineUGCValidateInstanceTreesEquivalent =
	require(root.flags.getEngineFeatureEngineUGCValidateInstanceTreesEquivalent)
local shouldValidateR15LegacyDuplicate = require(root.util.shouldValidateR15LegacyDuplicate)
local ExpectedRootSchema = {}

ExpectedRootSchema.categories = Constants.AllUploadCategories
ExpectedRootSchema.requiredData = {
	ValidationEnums.SharedDataMember.entrypointInput,
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadCategory,
	ValidationEnums.SharedDataMember.uploadEnum,
	ValidationEnums.SharedDataMember.consumerConfig,
}

ExpectedRootSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance: Instance, category: string, uploadEnum: Types.UploadEnum =
		data.rootInstance, data.uploadCategory, data.uploadEnum

	if (instance :: Instance?) == nil then
		-- We don't validate the selection input yet, so we should verify the root instance exists. Other validations can assume it exists as it passes schema check.

		reporter:fail(ErrorSourceStrings.Keys.SelectionCountNotOne)
		return
	end

	local schema

	if uploadEnum.bundleType then
		if getFFlagUGCValidationAnimationPackSupport() and uploadEnum.bundleType == Enum.BundleType.Animations then
			if
				not getFFlagUGCValidationAnimationPackDisableModelStructure()
				and getFFlagUGCValidationAnimationPackFolderStructure()
			then
				schema = CreateExpectedSchema.generateAnimationPackBundleSchema(instance)
			else
				schema = CreateExpectedSchema.generateAnimationPackBundleSchema(nil)
			end
		else
			-- For bundle uploads, we will recheck all the asset schemas and display an early abort message upon failure
			local fullBodyData = data.entrypointInput :: Types.FullBodyData
			schema = CreateExpectedSchema.generateBundleSchema(fullBodyData)
		end
	else
		schema = CreateExpectedSchema.generateAssetSchema(category, uploadEnum.assetType, instance)
	end

	validateInstanceTreeAgainstSchema(instance, schema, reporter)

	if getEngineFeatureEngineUGCValidateInstanceTreesEquivalent() and shouldValidateR15LegacyDuplicate(data) then
		-- On folder-structured body-part uploads the backend deserializes a separate R15Fixed copy, so it must
		-- exist and match the schema. Enforce presence rather than skipping when absent, so a missing duplicate
		-- can't slip through. (Redundant with the dmdiff tree-equivalence check, but if that is bypassed a
		-- smuggled instance still surfaces as AssetSchemaUnexpectedItems.)
		if data.r15LegacyDuplicateRoot == nil then
			reporter:fail(ErrorSourceStrings.Keys.FolderStructureMismatch)
		else
			reporter:setReportingRoot(data.r15LegacyDuplicateRoot)
			validateInstanceTreeAgainstSchema(data.r15LegacyDuplicateRoot, schema, reporter)
			reporter:setReportingRoot(instance)
		end
	end
end

return ExpectedRootSchema :: Types.ValidationModule
