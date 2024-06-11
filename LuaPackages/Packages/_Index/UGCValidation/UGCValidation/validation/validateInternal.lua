local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidationMeshPartAccessoryUploads = require(root.flags.getFFlagUGCValidationMeshPartAccessoryUploads)

local ConstantsInterface = require(root.ConstantsInterface)

local isMeshPartAccessory = require(root.util.isMeshPartAccessory)
local isLayeredClothing = require(root.util.isLayeredClothing)

local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)
local validateMeshPartAccessory = require(root.validation.validateMeshPartAccessory)
local validateLimbsAndTorso = require(root.validation.validateLimbsAndTorso)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validatePackage = require(root.validation.validatePackage)

local function validateBodyPartInternal(validationContext: Types.ValidationContext)
	local assetTypeEnum = validationContext.assetTypeEnum
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateDynamicHeadMeshPartFormat(validationContext)
	end
	return validateLimbsAndTorso(validationContext)
end

local function validateInternal(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	if ConstantsInterface.isBodyPart(assetTypeEnum) then
		return validateBodyPartInternal(validationContext)
	end

	if getFFlagAddUGCValidationForPackage() and assetTypeEnum == Enum.AssetType.Model then
		return validatePackage(validationContext)
	end

	if getFFlagUGCValidationMeshPartAccessoryUploads() then
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
