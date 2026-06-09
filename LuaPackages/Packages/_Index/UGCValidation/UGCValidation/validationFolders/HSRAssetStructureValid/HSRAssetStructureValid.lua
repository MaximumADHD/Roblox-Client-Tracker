local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local HSRAssetStructureValid = {}

HSRAssetStructureValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
}
HSRAssetStructureValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
HSRAssetStructureValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
HSRAssetStructureValid.expectedFailures = {}

HSRAssetStructureValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- IEC creates HSR post-publish; AutoSetup previews pre-publish assets. Legacy
	-- skipped both via bypassFlags.skipValidateHSR; we branch on consumer surface instead.
	if
		data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC
		or data.consumerConfig.source == "AutoSetup"
	then
		return
	end

	local instance = data.rootInstance :: Instance

	local objects = instance:GetDescendants()
	table.insert(objects, instance)

	for _, obj in objects do
		if obj:IsA("BaseWrap") and not (obj :: BaseWrap):IsHSRReady() then
			reporter:fail(ErrorSourceStrings.Keys.HSRDataNotReady, {
				InstancePath = obj:GetFullName(),
			})
		end
	end
end

return HSRAssetStructureValid :: Types.ValidationModule
