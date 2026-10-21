local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateEmissiveMapAllowed = require(root.flags.getFFlagUGCValidateEmissiveMapAllowed)
local getFFlagUGCValidateDecalBlockEmissives = require(root.flags.getFFlagUGCValidateDecalBlockEmissives)

local EMISSIVE_PROPERTY_EPSILON = 1e-5

local EmissiveMapAllowed = {}

EmissiveMapAllowed.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.EYEBROW_EYELASH,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.MAKEUP,
}
EmissiveMapAllowed.requiredData = {
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.rootInstance,
}
-- The in-experience block and the decal block each have their own flag so they can roll out separately.
EmissiveMapAllowed.fflag = function()
	return getFFlagUGCValidateEmissiveMapAllowed() or getFFlagUGCValidateDecalBlockEmissives()
end
EmissiveMapAllowed.expectedFailures = {}

local function hasEmissiveMask(instance: SurfaceAppearance | Decal): boolean
	return instance.EmissiveMaskContent.SourceType ~= Enum.ContentSourceType.None
end

-- Decals must keep every emissive property at its default, so a changed strength or tint counts even without a mask.
local function isDecalEmissive(decal: Decal): boolean
	local tint = decal.EmissiveTint
	return hasEmissiveMask(decal)
		or math.abs(decal.EmissiveStrength - 1) > EMISSIVE_PROPERTY_EPSILON
		or math.abs(tint.R - 1) > EMISSIVE_PROPERTY_EPSILON
		or math.abs(tint.G - 1) > EMISSIVE_PROPERTY_EPSILON
		or math.abs(tint.B - 1) > EMISSIVE_PROPERTY_EPSILON
end

-- Decals (makeup) can't be emissive in any environment.
local function reportEmissiveDecals(reporter: Types.ValidationReporter, instances: { Instance })
	for _, instance in instances do
		if instance:IsA("Decal") and isDecalEmissive(instance :: Decal) then
			reporter:fail(ErrorSourceStrings.Keys.EmissiveMap_NotAllowedOnDecal, {
				InstancePath = instance:GetFullName(),
			})
		end
	end
end

-- SurfaceAppearance emissive maps are only blocked for in-experience uploads.
local function reportInExperienceEmissive(
	reporter: Types.ValidationReporter,
	instances: { Instance },
	consumerConfig: Types.PreloadedConsumerConfigs
)
	-- Lifecycle-gated on consumerEnv (not validationEnv): VaaS runs IEC-origin uploads with validationEnv=Backend.
	-- A Backend run with a universeId is the marketplace publish of an IEC item.
	local isInExperience = consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC
		or consumerConfig.backendConfigs.universeId ~= nil
	if not isInExperience then
		return
	end

	for _, instance in instances do
		if instance:IsA("SurfaceAppearance") and hasEmissiveMask(instance :: SurfaceAppearance) then
			reporter:fail(ErrorSourceStrings.Keys.EmissiveMap_NotAllowedInExperience)
			return
		end
	end
end

EmissiveMapAllowed.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance :: Instance
	local instances = rootInstance:GetDescendants()
	table.insert(instances, rootInstance)

	if getFFlagUGCValidateDecalBlockEmissives() then
		reportEmissiveDecals(reporter, instances)
	end
	if getFFlagUGCValidateEmissiveMapAllowed() then
		reportInExperienceEmissive(reporter, instances, data.consumerConfig)
	end
end

return EmissiveMapAllowed :: Types.ValidationModule
