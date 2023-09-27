local root = script:FindFirstAncestor("UGCValidation")
local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local ConstantsInterface = require(root.ConstantsInterface)

local isLayeredClothing = require(root.util.isLayeredClothing)
local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)

local validateLimbsAndTorso = require(root.validation.validateLimbsAndTorso)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validatePackage = require(root.validation.validatePackage)

local function validateBodyPartInternal(
	_isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds)
	end
	return validateLimbsAndTorso(instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds)
end

local function validateInternal(
	isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds,
	token
): (boolean, { string }?)
	if getFFlagUGCValidateBodyParts() and ConstantsInterface.isBodyPart(assetTypeEnum) then
		return validateBodyPartInternal(
			isAsync,
			instances,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds
		)
	end

	if getFFlagAddUGCValidationForPackage() and assetTypeEnum == Enum.AssetType.Model then
		return validatePackage(instances, isServer, restrictedUserIds, token)
	end

	if isLayeredClothing(instances[1]) then
		return validateLayeredClothingAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	else
		return validateLegacyAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	end
end

return validateInternal
