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
local getFFlagUGCValidateWrapDataCaps = require(root.flags.getFFlagUGCValidateWrapDataCaps)
local getFIntUGCValidateMaxHSRMeshIdDataLen = require(root.flags.getFIntUGCValidateMaxHSRMeshIdDataLen)
local getFFlagUGCValidateDisallowAeroMeshData = require(root.flags.getFFlagUGCValidateDisallowAeroMeshData)

local describeProblematicProperties = require(script.Parent.describeProblematicProperties)

local WRAP_TEMPORARY_ID_CATEGORIES = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}
local getFFlagUGCValidateMakeupCategoryParity = require(root.flags.getFFlagUGCValidateMakeupCategoryParity)

local PropertiesSensible = {}

PropertiesSensible.categories = if getFFlagUGCValidateMakeupCategoryParity()
	then Constants.AllAssetUploadCategories
	else Constants.AllAssetUploadCategoriesIncludingMakeup
PropertiesSensible.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.hsrAssets,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.uploadCategory,
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
		local classRestrictions = propertyLengthRestrictions[obj.ClassName]
		local result, problematicProperties = (UGCValidationService :: any):ValidatePropertiesSensible(
			obj,
			classRestrictions
		)

		if not result then
			reporter:fail(ErrorSourceStrings.Keys.PropertiesNotSensible, {
				ClassName = obj.ClassName,
				InstancePath = obj:GetFullName(),
				ProblematicProperties = describeProblematicProperties(problematicProperties, classRestrictions),
			})
		end
	end
end

PropertiesSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if not getEngineFeatureEngineUGCValidatePropertiesSensible() then
		return
	end

	local propertyLengthRestrictions: { [string]: { [string]: number } } = {
		HiddenSurfaceRemovalAsset = { HSRData = getFIntUGCValidateMaxHSRDataLen() },
	}

	if getFFlagUGCValidateDisallowAeroMeshData() then
		propertyLengthRestrictions.MeshPart = { AeroMeshData = 0 }
	end

	if getFFlagUGCValidateWrapDataCaps() then
		local consumerEnv = data.consumerConfig.consumerEnv
		local capHSRDataEmpty = consumerEnv == ValidationEnums.ConsumerEnv.Backend
		local capTemporaryIds = consumerEnv ~= ValidationEnums.ConsumerEnv.IEC
			and table.find(WRAP_TEMPORARY_ID_CATEGORIES, data.uploadCategory) ~= nil

		local wrapTarget: { [string]: number } = { HSRMeshIdData = getFIntUGCValidateMaxHSRMeshIdDataLen() }
		local wrapLayer: { [string]: number } = { HSRMeshIdData = getFIntUGCValidateMaxHSRMeshIdDataLen() }

		if capHSRDataEmpty then
			wrapTarget.HSRData = 0
			wrapLayer.HSRData = 0
		end
		if capTemporaryIds then
			wrapTarget.TemporaryCageMeshId = 0
			wrapLayer.TemporaryCageMeshId = 0
			wrapLayer.TemporaryReferenceId = 0
		end

		propertyLengthRestrictions.WrapTarget = wrapTarget
		propertyLengthRestrictions.WrapLayer = wrapLayer
	end

	walkInstanceTree(reporter, data.rootInstance, propertyLengthRestrictions)

	for _, hsrCandidates in data.hsrAssets do
		for _, hsrAsset in hsrCandidates do
			walkInstanceTree(reporter, hsrAsset, propertyLengthRestrictions)
		end
	end
end

return PropertiesSensible :: Types.ValidationModule
