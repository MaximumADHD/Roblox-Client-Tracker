game:DefineFastFlag("UGCValidateMeshVertColors", false)
game:DefineFastString("UGCLCAllowedAssetTypeIds", "")
game:DefineFastFlag("UGCBetterModerationErrorText", false)
game:DefineFastFlag("UGCLCQualityValidation", false)
game:DefineFastFlag("UGCLCQualityReplaceLua", false)

local root = script

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagMoveToolboxCodeToUGCValidation = require(root.flags.getFFlagMoveToolboxCodeToUGCValidation)
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local getFFlagUGCValidationMeshPartAccessoryUploads = require(root.flags.getFFlagUGCValidationMeshPartAccessoryUploads)

local Analytics = require(root.Analytics)
local ConstantsInterface = require(root.ConstantsInterface)

local BundlesMetadata = require(root.util.BundlesMetadata)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local isMeshPartAccessory = require(root.util.isMeshPartAccessory)
local isLayeredClothing = require(root.util.isLayeredClothing)
local Types = require(root.util.Types)

local validateInternal = require(root.validation.validateInternal)
local validateMeshPartAccessory = require(root.validation.validateMeshPartAccessory)
local validateLayeredClothingAccessory = require(root.validation.validateLayeredClothingAccessory)
local validateLegacyAccessory = require(root.validation.validateLegacyAccessory)
local validateLayeredClothingAccessoryMeshPartAssetFormat =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormat)
local validateLegacyAccessoryMeshPartAssetFormat = require(root.validation.validateLegacyAccessoryMeshPartAssetFormat)
local validateFullBody = require(root.validation.validateFullBody)

local validateBundleReadyForUpload = require(root.validation.validateBundleReadyForUpload)
local validateLimbsAndTorso = require(root.validation.validateLimbsAndTorso)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local validatePackage = require(root.validation.validatePackage)

-- Remove with FFlagMoveToolboxCodeToUGCValidation
local function DEPRECATED_validateBodyPartInternal(
	_isAsync: boolean,
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?
)
	assert(ConstantsInterface.isBodyPart(assetTypeEnum)) --checking in the calling function, so must be true

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds)
	end
	return validateLimbsAndTorso(instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds)
end

-- Remove with FFlagMoveToolboxCodeToUGCValidation
local function DEPRECATED_validateInternal(
	isAsync: boolean,
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	token: string?
): (boolean, { string }?)
	if getFFlagUGCValidateBodyParts() and ConstantsInterface.isBodyPart(assetTypeEnum) then
		return DEPRECATED_validateBodyPartInternal(
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

local UGCValidation = {}

if getFFlagMoveToolboxCodeToUGCValidation() then
	function UGCValidation.validate(
		instances: { Instance },
		assetTypeEnum: Enum.AssetType,
		isServer: boolean?,
		allowUnreviewedAssets: boolean?,
		restrictedUserIds: Types.RestrictedUserIds?,
		token: string?
	)
		Analytics.setMetadata({
			entrypoint = "validate",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})
		local success, reasons = validateInternal(
			false, --[[ isAsync = ]]
			instances,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			token
		)
		return success, reasons
	end

	function UGCValidation.validateAsync(
		instances: { Instance },
		assetTypeEnum: Enum.AssetType,
		callback: (success: boolean, reasons: { string }?) -> (),
		isServer: boolean?,
		allowUnreviewedAssets: boolean?,
		restrictedUserIds: Types.RestrictedUserIds?
	)
		Analytics.setMetadata({
			entrypoint = "validateAsync",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})
		coroutine.wrap(function()
			callback(
				validateInternal(--[[ isAsync = ]] true, instances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds, "")
			)
		end)()
	end
else
	function UGCValidation.validate(
		instances: { Instance },
		assetTypeEnum: Enum.AssetType,
		isServer: boolean?,
		allowUnreviewedAssets: boolean?,
		restrictedUserIds: Types.RestrictedUserIds?,
		token: string?
	)
		Analytics.setMetadata({
			entrypoint = "validate",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})
		local success, reasons = DEPRECATED_validateInternal(
			false, --[[ isAsync = ]]
			instances,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			token
		)
		return success, reasons
	end

	function UGCValidation.validateAsync(
		instances: { Instance },
		assetTypeEnum: Enum.AssetType,
		callback: (success: boolean, reasons: { string }?) -> (),
		isServer: boolean?,
		allowUnreviewedAssets: boolean?,
		restrictedUserIds: Types.RestrictedUserIds?
	)
		Analytics.setMetadata({
			entrypoint = "validateAsync",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})
		coroutine.wrap(function()
			callback(
				DEPRECATED_validateInternal(--[[ isAsync = ]]
					true,
					instances,
					assetTypeEnum,
					isServer,
					allowUnreviewedAssets,
					restrictedUserIds,
					""
				)
			)
		end)()
	end
end

function UGCValidation.validateMeshPartFormat(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?
)
	Analytics.setMetadata({
		entrypoint = "validateMeshPartFormat",
		assetType = assetTypeEnum.Name,
		isServer = isServer,
	})
	-- the Toolbox only calls this function for DynamicHeads. For Accessories UGC creators upload the SpecialMesh version
	-- but for DynamicHeads they upload the MeshPart version
	assert(Enum.AssetType.DynamicHead == assetTypeEnum)
	return validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds)
end

function UGCValidation.validateAsyncMeshPartFormat(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	callback: (success: boolean, reasons: { string }?) -> (),
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?
)
	Analytics.setMetadata({
		entrypoint = "validateAsyncMeshPartFormat",
		assetType = assetTypeEnum.Name,
		isServer = isServer,
	})
	-- the Toolbox only calls this function for DynamicHeads. For Accessories UGC creators upload the SpecialMesh version
	-- but for DynamicHeads they upload the MeshPart version
	assert(Enum.AssetType.DynamicHead == assetTypeEnum)
	coroutine.wrap(function()
		callback(validateDynamicHeadMeshPartFormat(instances, isServer, allowUnreviewedAssets, restrictedUserIds))
	end)()
end

function UGCValidation.validateMeshPartAssetFormat2(
	instances: { Instance },
	specialMeshAccessory: Instance,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	_restrictedUserIds: Types.RestrictedUserIds?
)
	Analytics.setMetadata({
		entrypoint = "validateMeshPartAssetFormat2",
		assetType = assetTypeEnum.Name,
		isServer = isServer,
	})
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

export type AvatarValidationError = validateBundleReadyForUpload.AvatarValidationError
export type AvatarValidationResponse = validateBundleReadyForUpload.AvatarValidationResponse

export type BundlesMetadata = BundlesMetadata.BundlesMetadata

if getFFlagMoveToolboxCodeToUGCValidation() then
	-- Takes a UGC bundle, the fetched bundle type settings (potentially from BundleMetadata.fetch()),
	-- and the type of bundle it is ("Body" or "Head").
	-- Returns a Promise that gives an object with a list of every piece of the bundle it could find in the "pieces" field,
	-- and every error in the "errors" field.
	-- Errors may be associated with an asset type, such as if an asset doesn't exist or does not validate,
	-- but also may not in the case of full body validation failures.
	-- Accepts an optional progress callback that will be called with the avatar validation response as the work is being performed.
	-- The avatar validation response that the callback receives is immutable.
	-- Client only.
	UGCValidation.validateBundleReadyForUpload = validateBundleReadyForUpload

	UGCValidation.util = {
		-- Utilities for the bundle metadata, which includes information such as what pieces are needed for what bundles.
		-- BundleMetadata.fetch() will return a promise to the bundles metadata response.
		-- This may error if the user is not authorized, for example.
		-- BundleMetadata.mock() will return a reasonable bundles metadata for bodies and dynamic heads.
		-- Client only.
		BundlesMetadata = BundlesMetadata,

		-- Given a bundle with body parts, and allowed bundle type settings (such as from BundlesMetadata.fetch()),
		-- and a bundle type ("Body" or "Head"), will return a mapping of asset types to either folders that the validator
		-- expects, containing R15ArtistIntent, or just the passed in instance if a folder is not necessary, like for heads.
		-- Optionally takes an extra boolean for whether or not to include an R15Fixed and stub R6 folder as well.
		-- You probably only want this on the client.
		createUGCBodyPartFolders = createUGCBodyPartFolders,
	}
end

function UGCValidation.validateFullBody(fullBodyData: Types.FullBodyData, isServer: boolean?): (boolean, { string }?)
	Analytics.setMetadata({
		entrypoint = "validateFullBody",
		assetType = "",
		isServer = isServer,
	})
	return validateFullBody(fullBodyData, isServer)
end

return UGCValidation
