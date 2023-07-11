game:DefineFastFlag("UGCExtraBannedNames", false)
game:DefineFastFlag("UGCValidateMeshVertColors", false)
game:DefineFastString("UGCLCAllowedAssetTypeIds", "")
game:DefineFastFlag("UGCBetterModerationErrorText", false)
game:DefineFastFlag("UGCLCQualityValidation", false)
game:DefineFastFlag("UGCLCQualityReplaceLua", false)
game:DefineFastFlag("UGCReturnAllValidations", false)

local root = script

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local ConstantsInterface = require(root.ConstantsInterface)

local validateMeshPartAccessory = require(root.validation.validateMeshPartAccessory)

local isLayeredClothing = require(root.util.isLayeredClothing)
local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)
local validateLayeredClothingAccessoryMeshPartAssetFormat =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormat)
local validateLegacyAccessoryMeshPartAssetFormat = require(root.validation.validateLegacyAccessoryMeshPartAssetFormat)

local validateLimbsAndTorso = require(root.validation.validateLimbsAndTorso)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validateDynamicHeadSpecialMeshFormat = require(root.validation.validateDynamicHeadSpecialMeshFormat)
local validateDynamicHeadAllFormats = require(root.validation.validateDynamicHeadAllFormats)

local function validateBodyPartInternal(
	isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		-- the Toolbox calls UGCValidation.validateAsyncMeshPartFormat() not UGCValidation.validateAsync() for DynamicHeads
		-- so if we're getting to here then it has to be coming from the RCC, and isServer will be true
		assert(isServer)
		return validateDynamicHeadSpecialMeshFormat(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	end
	return validateLimbsAndTorso(instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds)
end

local function validateInternal(
	isAsync,
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
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

	if isLayeredClothing(instances[1]) then
		return validateLayeredClothingAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	else
		return validateLegacyAccessory(instances, assetTypeEnum, isServer, allowUnreviewedAssets)
	end
end

local UGCValidation = {}

function UGCValidation.validate(instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds)
	local success, reasons = validateInternal(
		false, --[[ isAsync = ]]
		instances,
		assetTypeEnum,
		isServer,
		allowUnreviewedAssets,
		restrictedUserIds
	)
	return success, reasons
end

function UGCValidation.validateAsync(
	instances,
	assetTypeEnum,
	callback,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	coroutine.wrap(function()
		callback(
			validateInternal(--[[ isAsync = ]] true, instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds)
		)
	end)()
end

function UGCValidation.validateMeshPartFormat(
	instances,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	-- the Toolbox only calls this function for DynamicHeads. For Accessories UGC creators upload the SpecialMesh version
	-- but for DynamicHeads they upload the MeshPart version
	assert(Enum.AssetType.DynamicHead == assetTypeEnum)
	return validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds)
end

function UGCValidation.validateAsyncMeshPartFormat(
	instances,
	assetTypeEnum,
	callback,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	-- the Toolbox only calls this function for DynamicHeads. For Accessories UGC creators upload the SpecialMesh version
	-- but for DynamicHeads they upload the MeshPart version
	assert(Enum.AssetType.DynamicHead == assetTypeEnum)
	coroutine.wrap(function()
		callback(validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds))
	end)()
end

function UGCValidation.validateMeshPartAssetFormat2(
	instances,
	specialMeshAccessory,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	if getFFlagUGCValidateBodyParts() then
		if Enum.AssetType.DynamicHead == assetTypeEnum then
			return validateDynamicHeadAllFormats(
				instances,
				{ specialMeshAccessory },
				assetTypeEnum,
				isServer,
				allowUnreviewedAssets,
				restrictedUserIds
			)
		end
		assert(not ConstantsInterface.isBodyPart(assetTypeEnum))
	end

	if isLayeredClothing(instances[1]) then
		return validateLayeredClothingAccessoryMeshPartAssetFormat(
			instances,
			specialMeshAccessory,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets
		)
	else
		return validateLegacyAccessoryMeshPartAssetFormat(instances, specialMeshAccessory, assetTypeEnum, isServer)
	end
end

-- assumes specialMeshAccessory has already passed through UGCValidation.validate()
function UGCValidation.validateMeshPartAssetFormat(
	specialMeshAccessory,
	meshPartAccessory,
	assetTypeEnum,
	isServer,
	allowUnreviewedAssets,
	restrictedUserIds
)
	if getFFlagUGCValidateBodyParts() then
		if Enum.AssetType.DynamicHead == assetTypeEnum then
			return validateDynamicHeadAllFormats(
				{ meshPartAccessory },
				{ specialMeshAccessory },
				assetTypeEnum,
				isServer,
				allowUnreviewedAssets,
				restrictedUserIds
			)
		end
		assert(not ConstantsInterface.isBodyPart(assetTypeEnum))
	end

	-- layered clothing assets should be the same binary for source and avatar_meshpart_accesory
	if specialMeshAccessory and isLayeredClothing(specialMeshAccessory) then
		return UGCValidation.validate({ specialMeshAccessory }, assetTypeEnum, isServer, allowUnreviewedAssets, {})
	end

	local success, reasons

	success, reasons = validateMeshPartAccessory(specialMeshAccessory, meshPartAccessory)
	if not success then
		return false, reasons
	end

	return true
end

return UGCValidation
