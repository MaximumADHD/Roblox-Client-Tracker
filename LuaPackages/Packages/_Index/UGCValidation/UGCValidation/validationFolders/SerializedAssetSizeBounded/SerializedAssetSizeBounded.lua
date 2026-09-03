local SerializationService = game:GetService("SerializationService")
local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateSerializedAssetSizeBounded = require(root.flags.getFFlagUGCValidateSerializedAssetSizeBounded)
local getEngineFeatureEngineUGCValidateSerializeExcludeCollisionPhysics =
	require(root.flags.getEngineFeatureEngineUGCValidateSerializeExcludeCollisionPhysics)
local getFIntUGCValidateMaxSerializedAssetSizeBytesDefault =
	require(root.flags.getFIntUGCValidateMaxSerializedAssetSizeBytesDefault)
local getFIntUGCValidateMaxSerializedAssetSizeBytesTorsoAndLimbs =
	require(root.flags.getFIntUGCValidateMaxSerializedAssetSizeBytesTorsoAndLimbs)
local getFIntUGCValidateMaxSerializedAssetSizeBytesDynamicHead =
	require(root.flags.getFIntUGCValidateMaxSerializedAssetSizeBytesDynamicHead)
local getFIntUGCValidateMaxSerializedAssetSizeBytesLayeredClothing =
	require(root.flags.getFIntUGCValidateMaxSerializedAssetSizeBytesLayeredClothing)
local getFIntUGCValidateMaxSerializedAssetSizeBytesRigidAccessory =
	require(root.flags.getFIntUGCValidateMaxSerializedAssetSizeBytesRigidAccessory)

-- Caps an upload's serialized size per category as anti-payload defense.
local SerializedAssetSizeBounded = {}

local CATEGORY_TO_MAX_SIZE_GETTER: { [string]: () -> number } = {
	[ValidationEnums.UploadCategory.TORSO_AND_LIMBS] = getFIntUGCValidateMaxSerializedAssetSizeBytesTorsoAndLimbs,
	[ValidationEnums.UploadCategory.DYNAMIC_HEAD] = getFIntUGCValidateMaxSerializedAssetSizeBytesDynamicHead,
	[ValidationEnums.UploadCategory.LAYERED_CLOTHING] = getFIntUGCValidateMaxSerializedAssetSizeBytesLayeredClothing,
	[ValidationEnums.UploadCategory.RIGID_ACCESSORY] = getFIntUGCValidateMaxSerializedAssetSizeBytesRigidAccessory,
}

SerializedAssetSizeBounded.categories = Constants.AllAssetUploadCategories

SerializedAssetSizeBounded.requiredData = {
	ValidationEnums.SharedDataMember.entrypointInput,
	ValidationEnums.SharedDataMember.uploadCategory,
	ValidationEnums.SharedDataMember.consumerConfig,
}

SerializedAssetSizeBounded.fflag = getFFlagUGCValidateSerializedAssetSizeBounded

SerializedAssetSizeBounded.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Only the Backend can reach the serialize services (RCC WebService identity); Studio/IEC no-op.
	if data.consumerConfig.consumerEnv ~= ValidationEnums.ConsumerEnv.Backend then
		return
	end

	-- Exclude the engine-regenerated collision blob when the build supports it; else measure the whole tree.
	local sizeBytes
	if getEngineFeatureEngineUGCValidateSerializeExcludeCollisionPhysics() then
		sizeBytes = (UGCValidationService :: any):GetSerializedSizeExcludingCollisionAsync(data.entrypointInput)
	else
		sizeBytes = buffer.len(SerializationService:SerializeInstancesAsync(data.entrypointInput))
	end

	local getMaxSizeBytes = CATEGORY_TO_MAX_SIZE_GETTER[data.uploadCategory]
		or getFIntUGCValidateMaxSerializedAssetSizeBytesDefault
	local maxSizeBytes = getMaxSizeBytes()

	if sizeBytes > maxSizeBytes then
		reporter:fail(ErrorSourceStrings.Keys.SerializedAssetTooLarge, {
			sizeBytes = tostring(sizeBytes),
			maxSizeBytes = tostring(maxSizeBytes),
		})
	end
end

return SerializedAssetSizeBounded :: Types.ValidationModule
