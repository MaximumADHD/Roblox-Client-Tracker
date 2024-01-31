local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
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

local function DEPRECATED_validateBodyPartInternal(
	_isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds,
	universeId
)
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return (validateDynamicHeadMeshPartFormat :: any)(
			instances,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			universeId
		)
	end
	return (validateLimbsAndTorso :: any)(
		instances,
		assetTypeEnum,
		isServer,
		allowUnreviewedAssets,
		restrictedUserIds,
		universeId
	)
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

local function DEPRECATED_validateInternal(
	isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds,
	token,
	universeId
): (boolean, { string }?)
	if ConstantsInterface.isBodyPart(assetTypeEnum) then
		return DEPRECATED_validateBodyPartInternal(
			isAsync,
			instances,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			universeId
		)
	end

	if getFFlagAddUGCValidationForPackage() and assetTypeEnum == Enum.AssetType.Model then
		return (validatePackage :: any)(instances, isServer, restrictedUserIds, token)
	end

	if getFFlagUGCValidationMeshPartAccessoryUploads() then
		local accessory = instances[1]
		if isMeshPartAccessory(accessory) then
			if isLayeredClothing(accessory) then
				return (validateLayeredClothingAccessory :: any)(
					instances,
					assetTypeEnum,
					isServer,
					allowUnreviewedAssets
				)
			else
				return (validateMeshPartAccessory :: any)(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
			end
		else
			return (validateLegacyAccessory :: any)(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		end
	else
		if isLayeredClothing(instances[1]) then
			return (validateLayeredClothingAccessory :: any)(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		else
			return (validateLegacyAccessory :: any)(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		end
	end
end

return if getFFlagUseUGCValidationContext() then validateInternal else DEPRECATED_validateInternal :: never
