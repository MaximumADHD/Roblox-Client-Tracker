local root = script.Parent.Parent

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
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

local function validateBodyPartInternal(
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
		return validateDynamicHeadMeshPartFormat(
			instances,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			universeId
		)
	end
	return validateLimbsAndTorso(
		instances,
		assetTypeEnum,
		isServer,
		allowUnreviewedAssets,
		restrictedUserIds,
		universeId
	)
end

local function validateInternal(
	isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds,
	token,
	universeId
): (boolean, { string }?)
	if getFFlagUGCValidateBodyParts() and ConstantsInterface.isBodyPart(assetTypeEnum) then
		return validateBodyPartInternal(
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
		return validatePackage(instances, isServer, restrictedUserIds, token)
	end

	if getFFlagUGCValidationMeshPartAccessoryUploads() then
		local accessory = instances[1]
		if isMeshPartAccessory(accessory) then
			if isLayeredClothing(accessory) then
				return validateLayeredClothingAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
			else
				return validateMeshPartAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
			end
		else
			return validateLegacyAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		end
	else
		if isLayeredClothing(instances[1]) then
			return validateLayeredClothingAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		else
			return validateLegacyAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
		end
	end
end

return validateInternal
