game:DefineFastFlag("UGCValidateMeshVertColors", false)
game:DefineFastFlag("UGCBetterModerationErrorText", false)
game:DefineFastFlag("UGCLCQualityValidation", false)
game:DefineFastFlag("UGCLCQualityReplaceLua", false)

local root = script

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local BundlesMetadata = require(root.util.BundlesMetadata)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local isLayeredClothing = require(root.util.isLayeredClothing)
local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local Types = require(root.util.Types)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local destroyEditableInstances = require(root.util.destroyEditableInstances)

local validateInternal = require(root.validation.validateInternal)
local validateLayeredClothingAccessoryMeshPartAssetFormat =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormat)
local validateLegacyAccessoryMeshPartAssetFormat = require(root.validation.validateLegacyAccessoryMeshPartAssetFormat)
local validateFullBody = require(root.validation.validateFullBody)

local validateBundleReadyForUpload = require(root.validation.validateBundleReadyForUpload)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)

local UGCValidation = {}

function UGCValidation.validate(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	token: string?,
	universeId: number?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?
)
	Analytics.setMetadata({
		entrypoint = "validate",
		assetType = assetTypeEnum.Name,
		isServer = isServer,
	})

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = createEditableInstancesForContext(instances, allowEditableInstances)
			if not success then
				if isServer then
					error(result[1])
				else
					return success, result
				end
			end
		end

		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = assetTypeEnum :: Enum.AssetType,
			allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
			restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
			isServer = isServer :: boolean,
			token = token :: string,
			universeId = universeId :: number,
			isAsync = false,
			allowEditableInstances = allowEditableInstances :: boolean,
			bypassFlags = bypassFlags,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		local validationSuccess, reasons = validateInternal(validationContext)

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
		end

		return validationSuccess, reasons
	else
		local success, reasons = (validateInternal :: any)(
			false, --[[ isAsync = ]]
			instances,
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds,
			token,
			universeId
		)
		return success, reasons
	end
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

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = createEditableInstancesForContext(instances)
			if not success then
				if isServer then
					error(result[1])
				else
					callback(success, result)
				end
			end
		end

		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = assetTypeEnum :: Enum.AssetType,
			allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
			restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
			isServer = isServer :: boolean,
			token = "",
			isAsync = true,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		coroutine.wrap(function()
			callback(validateInternal(validationContext))
			if getEngineFeatureUGCValidateEditableMeshAndImage() then
				destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
			end
		end)()
	else
		coroutine.wrap(function()
			callback(
				(validateInternal :: any)(--[[ isAsync = ]]
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

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = createEditableInstancesForContext(instances)
			if not success then
				if isServer then
					error(result[1])
				else
					return success, result
				end
			end
		end

		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = assetTypeEnum :: Enum.AssetType,
			allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
			restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
			isServer = isServer :: boolean,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		local validationSuccess, reasons = validateDynamicHeadMeshPartFormat(validationContext)

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
		end

		return validationSuccess, reasons
	else
		return (validateDynamicHeadMeshPartFormat :: any)(instances, isServer, allowUnreviewedAssets, restrictedUserIds)
	end
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

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = createEditableInstancesForContext(instances)
			if not success then
				if isServer then
					error(result[1])
				else
					callback(success, result)
				end
			end
		end

		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = assetTypeEnum :: Enum.AssetType,
			allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
			restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
			isServer = isServer :: boolean,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		coroutine.wrap(function()
			callback(validateDynamicHeadMeshPartFormat(validationContext))
			if getEngineFeatureUGCValidateEditableMeshAndImage() then
				destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
			end
		end)()
	else
		coroutine.wrap(function()
			callback(
				(validateDynamicHeadMeshPartFormat :: any)(
					instances,
					isServer,
					allowUnreviewedAssets,
					restrictedUserIds
				)
			)
		end)()
	end
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

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = createEditableInstancesForContext(instances)
			if not success then
				if isServer then
					error(result[1])
				else
					return success, result
				end
			end
		end

		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = assetTypeEnum :: Enum.AssetType,
			allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
			isServer = isServer :: boolean,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		local validationSuccess, reasons
		if isLayeredClothing(instances[1]) then
			validationSuccess, reasons =
				validateLayeredClothingAccessoryMeshPartAssetFormat(specialMeshAccessory, validationContext)
		else
			validationSuccess, reasons =
				validateLegacyAccessoryMeshPartAssetFormat(specialMeshAccessory, validationContext)
		end

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
		end

		return validationSuccess, reasons
	else
		if isLayeredClothing(instances[1]) then
			return (validateLayeredClothingAccessoryMeshPartAssetFormat :: any)(
				instances,
				specialMeshAccessory,
				assetTypeEnum,
				isServer,
				allowUnreviewedAssets
			)
		else
			return (validateLegacyAccessoryMeshPartAssetFormat :: any)(
				instances,
				specialMeshAccessory,
				assetTypeEnum,
				isServer
			)
		end
	end
end

export type AvatarValidationError = validateBundleReadyForUpload.AvatarValidationError
export type AvatarValidationResponse = validateBundleReadyForUpload.AvatarValidationResponse

export type BundlesMetadata = BundlesMetadata.BundlesMetadata

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

UGCValidation.util.isLayeredClothingAllowed = RigidOrLayeredAllowed.isLayeredClothingAllowed
UGCValidation.util.isRigidAccessoryAllowed = RigidOrLayeredAllowed.isRigidAccessoryAllowed

function UGCValidation.validateFullBody(
	fullBodyData: Types.FullBodyData,
	isServer: boolean?,
	allowEditableInstances: boolean?
): (boolean, { string }?)
	Analytics.setMetadata({
		entrypoint = "validateFullBody",
		assetType = "",
		isServer = isServer,
	})

	if getFFlagUseUGCValidationContext() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			local instances = {}
			for _, instancesAndType in fullBodyData do
				for _, instance in instancesAndType.allSelectedInstances do
					table.insert(instances, instance)
				end
			end

			success, result = createEditableInstancesForContext(instances, allowEditableInstances)
			if not success then
				if isServer then
					error(result[1])
				else
					return success, result
				end
			end
		end

		local validationContext = {
			fullBodyData = fullBodyData :: Types.FullBodyData,
			isServer = isServer :: boolean,
			allowEditableInstances = allowEditableInstances :: boolean,
		} :: Types.ValidationContext

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages
		end

		local validationSuccess, reasons = validateFullBody(validationContext)

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			destroyEditableInstances(validationContext.editableMeshes, validationContext.editableImages)
		end

		return validationSuccess, reasons
	else
		return (validateFullBody :: any)(fullBodyData, isServer)
	end
end

UGCValidation.GUIDAttributeName = Constants.GUIDAttributeName

return UGCValidation
