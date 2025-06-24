local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidateEmoteAnimation = require(root.flags.getFFlagUGCValidateEmoteAnimation)

local ConstantsInterface = require(root.ConstantsInterface)

local isMeshPartAccessory = require(root.util.isMeshPartAccessory)
local isLayeredClothing = require(root.util.isLayeredClothing)

local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)
local validateMeshPartAccessory = require(root.validation.validateMeshPartAccessory)
local validateLimbsAndTorso = require(root.validation.validateLimbsAndTorso)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validatePackage = require(root.validation.validatePackage)
local ValidateEmoteAnimation = require(root.validation.ValidateEmoteAnimation)

local function validateBodyPartInternal(validationContext: Types.ValidationContext)
	local assetTypeEnum = validationContext.assetTypeEnum
	assert(assetTypeEnum ~= nil, "assetTypeEnum is required in validateBodyPartInternal")
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateDynamicHeadMeshPartFormat(validationContext)
	end
	return validateLimbsAndTorso(validationContext)
end

local function validateInternal(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(validationContext.instances ~= nil, "instances required in validationContext for validateInternal")
	assert(validationContext.assetTypeEnum ~= nil, "assetTypeEnum required in validationContext for validateInternal")
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local validateMeshPartAccessories = validationContext.validateMeshPartAccessories

	if getFFlagUGCValidateEmoteAnimation() then
		if assetTypeEnum == Enum.AssetType.EmoteAnimation then
			return ValidateEmoteAnimation.validate(validationContext)
		end
	end

	if ConstantsInterface.isBodyPart(assetTypeEnum) then
		return validateBodyPartInternal(validationContext)
	end

	if getFFlagAddUGCValidationForPackage() and assetTypeEnum == Enum.AssetType.Model then
		return validatePackage(validationContext)
	end

	if validateMeshPartAccessories then
		local accessory = instances[1]
		if isMeshPartAccessory(accessory) then
			if isLayeredClothing(accessory) then
				return validateLayeredClothingAccessory(validationContext)
			else
				return validateMeshPartAccessory(validationContext)
			end
		else
			return validateLegacyAccessory(validationContext)
		end
	else
		if isLayeredClothing(instances[1]) then
			return validateLayeredClothingAccessory(validationContext)
		else
			return validateLegacyAccessory(validationContext)
		end
	end
end

return validateInternal
