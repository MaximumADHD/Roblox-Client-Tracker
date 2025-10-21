local root = script

local getEngineFeatureUGCValidationWithContextEntrypoint =
	require(root.flags.getEngineFeatureUGCValidationWithContextEntrypoint)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local BundlesMetadata = require(root.util.BundlesMetadata)
local canUploadBundlesAsync = require(root.util.canUploadBundlesAsync)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local isLayeredClothing = require(root.util.isLayeredClothing)
local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local Types = require(root.util.Types)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local destroyEditableInstances = require(root.util.destroyEditableInstances)
local ValidationHints = require(root.util.ValidationHints)

local validateInternal = require(root.validation.validateInternal)
local validateLayeredClothingAccessoryMeshPartAssetFormat =
	require(root.validation.validateLayeredClothingAccessoryMeshPartAssetFormat)
local validateLegacyAccessoryMeshPartAssetFormat = require(root.validation.validateLegacyAccessoryMeshPartAssetFormat)
local validateFullBody = require(root.validation.validateFullBody)
local validateShoes = require(root.validation.validateShoes)

local validateBundleReadyForUpload = require(root.validation.validateBundleReadyForUpload)
local validateShoesBundleReadyForUpload = require(root.validation.validateShoesBundleReadyForUpload)
local validateDynamicHeadMeshPartFormat = require(root.validation.validateDynamicHeadMeshPartFormat)
local ValidationManager = require(root.validationSystem.ValidationManager)
local getFFlagUGCValidationEnableFolderStructure = require(root.flags.getFFlagUGCValidationEnableFolderStructure)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)
local LegacyValidationAdapter = require(root.util.LegacyValidationAdapter)

local UGCValidation = {}

-- New endpoints, all other .validate endpoints should be removed, then we can move these here and keep init.lua super clean
UGCValidation.ValidateAsset = ValidationManager.ValidateAsset
UGCValidation.ValidateFinalizedBundle = ValidationManager.ValidateFinalizedBundle
UGCValidation.combineResultsIntoLegacy = LegacyValidationAdapter.combineResultsIntoLegacy
UGCValidation.isFolderStructureEnabled = getFFlagUGCValidationEnableFolderStructure
UGCValidation.isEntrypointMergingEnabled = getFFlagUGCValidationCombineEntrypointResults

-- Old endpoints that we need to remove:

if getEngineFeatureUGCValidationWithContextEntrypoint() then
	function UGCValidation.validateWithContext(validationContext: Types.ValidationContext)
		assert(validationContext.instances ~= nil, "instances required in validationContext for validateWithContext")
		assert(
			validationContext.assetTypeEnum ~= nil,
			"assetTypeEnum required in validationContext for validateWithContext"
		)

		local instances = validationContext.instances
		local isServer = validationContext.isServer
		local assetTypeEnum = validationContext.assetTypeEnum
		local allowEditableInstances = validationContext.allowEditableInstances

		local startTime = tick()

		Analytics.setMetadata({
			entrypoint = "validate",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})

		local success, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
		if not success then
			if isServer then
				error(result[1])
			else
				return success, result
			end
		end

		validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
		validationContext.editableImages = result.editableImages :: Types.EditableImages
		validationContext.lastTickSeconds = tick()

		if validationContext.requireAllFolders == nil then
			validationContext.requireAllFolders = true
		end

		local validationSuccess, reasons = validateInternal(validationContext)

		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)

		if validationSuccess then
			Analytics.recordScriptTime(script.Name, startTime, validationContext)
			Analytics.reportScriptTimes(validationContext)
		end

		Analytics.reportCounter(
			validationSuccess,
			if assetTypeEnum == Enum.AssetType.DynamicHead then "Head" else "BodyPart",
			validationContext
		)

		return validationSuccess, reasons
	end
end

-- TODO: Remove with getEngineFeatureUGCValidationWithContextEntrypoint
function UGCValidation.validate(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	token: string?,
	universeId: number?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?,
	shouldYield: boolean?,
	validateMeshPartAccessories: boolean?,
	requireAllFolders: boolean?
)
	local startTime = tick()

	Analytics.setMetadata({
		entrypoint = "validate",
		assetType = assetTypeEnum.Name,
		isServer = isServer,
	})

	local success, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
	if not success then
		if isServer then
			error(result[1])
		else
			return success, result
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
		validateMeshPartAccessories = if validateMeshPartAccessories ~= nil then validateMeshPartAccessories else true,
		lastTickSeconds = tick(),
		shouldYield = shouldYield,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
		requireAllFolders = if requireAllFolders ~= nil then requireAllFolders else true,
	} :: Types.ValidationContext

	local validationSuccess, reasons = validateInternal(validationContext)

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	if validationSuccess then
		Analytics.recordScriptTime(script.Name, startTime, validationContext)
		Analytics.reportScriptTimes(validationContext)
	end

	Analytics.reportCounter(
		validationSuccess,
		if assetTypeEnum == Enum.AssetType.DynamicHead then "Head" else "BodyPart",
		validationContext
	)

	return validationSuccess, reasons
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

	local success, result = createEditableInstancesForContext.processAll(instances)
	if not success then
		if isServer then
			error(result[1])
		else
			callback(success, result)
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
		validateMeshPartAccessories = false,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
	} :: Types.ValidationContext

	coroutine.wrap(function()
		callback(validateInternal(validationContext))
		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)
	end)()
end

-- TODO: this isn't used anywhere, remove?
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

	local success, result = createEditableInstancesForContext.processAll(instances)
	if not success then
		if isServer then
			error(result[1])
		else
			return success, result
		end
	end

	local validationContext = {
		instances = instances :: { Instance },
		assetTypeEnum = assetTypeEnum :: Enum.AssetType,
		allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
		restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
		isServer = isServer :: boolean,
		validateMeshPartAccessories = false,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
	} :: Types.ValidationContext

	local validationSuccess, reasons = validateDynamicHeadMeshPartFormat(validationContext)

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	return validationSuccess, reasons
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

	local success, result = createEditableInstancesForContext.processAll(instances)
	if not success then
		if isServer then
			error(result[1])
		else
			callback(success, result)
		end
	end

	local validationContext = {
		instances = instances :: { Instance },
		assetTypeEnum = assetTypeEnum :: Enum.AssetType,
		allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
		restrictedUserIds = restrictedUserIds :: Types.RestrictedUserIds,
		isServer = isServer :: boolean,
		validateMeshPartAccessories = false,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
	} :: Types.ValidationContext

	coroutine.wrap(function()
		callback(validateDynamicHeadMeshPartFormat(validationContext))
		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)
	end)()
end

if getEngineFeatureUGCValidationWithContextEntrypoint() then
	function UGCValidation.validateMeshPartAssetFormatWithContext(validationContext: Types.ValidationContext)
		assert(
			validationContext.assetTypeEnum ~= nil,
			"assetTypeEnum required in validationContext for validateMeshPartAssetFormatWithContext"
		)
		assert(
			validationContext.instances ~= nil,
			"instances required in validationContext for validateMeshPartAssetFormatWithContext"
		)
		local instances = validationContext.instances
		local assetTypeEnum = validationContext.assetTypeEnum
		local isServer = validationContext.isServer
		local specialMeshAccessory = validationContext.specialMeshAccessory

		Analytics.setMetadata({
			entrypoint = "validateMeshPartAssetFormat2",
			assetType = assetTypeEnum.Name,
			isServer = isServer,
		})

		local success, result = createEditableInstancesForContext.processAll(instances)
		if not success then
			if isServer then
				error(result[1])
			else
				return success, result
			end
		end

		validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
		validationContext.editableImages = result.editableImages :: Types.EditableImages
		validationContext.validateMeshPartAccessories = false

		local validationSuccess, reasons
		if isLayeredClothing(instances[1]) then
			validationSuccess, reasons = validateLayeredClothingAccessoryMeshPartAssetFormat(
				specialMeshAccessory :: Accessory,
				validationContext
			)
		else
			validationSuccess, reasons =
				validateLegacyAccessoryMeshPartAssetFormat(specialMeshAccessory :: Accessory, validationContext)
		end

		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)

		return validationSuccess, reasons
	end
end

-- TODO remove with getEngineFeatureUGCValidationWithContextEntrypoint
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

	local success, result = createEditableInstancesForContext.processAll(instances)
	if not success then
		if isServer then
			error(result[1])
		else
			return success, result
		end
	end

	local validationContext = {
		instances = instances :: { Instance },
		assetTypeEnum = assetTypeEnum :: Enum.AssetType,
		allowUnreviewedAssets = allowUnreviewedAssets :: boolean,
		isServer = isServer :: boolean,
		validateMeshPartAccessories = false,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
	} :: Types.ValidationContext

	local validationSuccess, reasons
	if isLayeredClothing(instances[1]) then
		validationSuccess, reasons =
			validateLayeredClothingAccessoryMeshPartAssetFormat(specialMeshAccessory, validationContext)
	else
		validationSuccess, reasons = validateLegacyAccessoryMeshPartAssetFormat(specialMeshAccessory, validationContext)
	end

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	return validationSuccess, reasons
end

export type AvatarValidationError = validateBundleReadyForUpload.AvatarValidationError
export type AvatarValidationResponse = validateBundleReadyForUpload.AvatarValidationResponse

export type BundlesMetadata = BundlesMetadata.BundlesMetadata

export type AllBodyParts = Types.AllBodyParts
export type AxisValidateBoundsResult = Types.AxisValidateBoundsResult
export type ScaleTypeValidateBoundsResult = Types.ScaleTypeValidateBoundsResult
export type ExtraDataValidateBoundsResult = Types.ExtraDataValidateBoundsResult
export type ErrorValidateBoundsResult = Types.ErrorValidateBoundsResult
export type OverallValidateBoundsResult = Types.OverallValidateBoundsResult
export type MainValidateBoundsResult = Types.MainValidateBoundsResult
export type ValidateBoundsResult = Types.ValidateBoundsResult
export type DataCache = Types.DataCache
export type MainPreprocessDataResult = Types.MainPreprocessDataResult
export type PreprocessDataResult = Types.PreprocessDataResult

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
UGCValidation.validateShoesBundleReadyForUpload = validateShoesBundleReadyForUpload

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

	-- Checks if the user would be allowed to upload a UGC bundle, to an optional group ID.
	-- Returns a tagged union with `type` "allowed" if allowed, "notAllowed" with a `denyReason`
	-- as a string (or number if the deny reason code is not yet added to UGCValidation internally),
	-- or a `type` "error" if the request fails.
	canUploadBundlesAsync = canUploadBundlesAsync,
}

UGCValidation.util.isLayeredClothingAllowed = RigidOrLayeredAllowed.isLayeredClothingAllowed
UGCValidation.util.isRigidAccessoryAllowed = RigidOrLayeredAllowed.isRigidAccessoryAllowed

if getEngineFeatureUGCValidationWithContextEntrypoint() then
	function UGCValidation.validateFullBodyWithContext(
		validationContext: Types.ValidationContext
	): (boolean, { string }?)
		assert(
			validationContext.fullBodyData ~= nil,
			"fullBodyData required in validationContext for validateFullBodyWithContext"
		)

		local isServer = validationContext.isServer
		local fullBodyData = validationContext.fullBodyData
		local allowEditableInstances = validationContext.allowEditableInstances

		Analytics.setMetadata({
			entrypoint = "validateFullBody",
			assetType = "",
			isServer = isServer,
		})

		local startTime = tick()

		local instances = {}
		for _, instancesAndType in fullBodyData do
			for _, instance in instancesAndType.allSelectedInstances do
				table.insert(instances, instance)
			end
		end

		local success, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
		if not success then
			if isServer then
				error(result[1])
			else
				return success, result
			end
		end

		validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
		validationContext.editableImages = result.editableImages :: Types.EditableImages
		validationContext.lastTickSeconds = tick()

		if validationContext.requireAllFolders == nil then
			validationContext.requireAllFolders = true
		end

		local validationSuccess, reasons = validateFullBody(validationContext)

		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)

		if validationSuccess then
			Analytics.recordScriptTime(script.Name, startTime, validationContext)
			Analytics.reportScriptTimes(validationContext)
		end

		Analytics.reportCounter(validationSuccess, "FullBody", validationContext)

		return validationSuccess, reasons
	end
end

-- TODO: Remove with getEngineFeatureUGCValidationWithContextEntrypoint
function UGCValidation.validateFullBody(
	fullBodyData: Types.FullBodyData,
	isServer: boolean?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?,
	shouldYield: boolean?,
	requireAllFolders: boolean?
): (boolean, { string }?)
	Analytics.setMetadata({
		entrypoint = "validateFullBody",
		assetType = "",
		isServer = isServer,
	})

	local startTime = tick()

	local instances = {}
	for _, instancesAndType in fullBodyData do
		for _, instance in instancesAndType.allSelectedInstances do
			table.insert(instances, instance)
		end
	end

	local success, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
	if not success then
		if isServer then
			error(result[1])
		else
			return success, result
		end
	end

	local validationContext = {
		fullBodyData = fullBodyData :: Types.FullBodyData,
		isServer = isServer :: boolean,
		allowEditableInstances = allowEditableInstances :: boolean,
		bypassFlags = bypassFlags,
		validateMeshPartAccessories = false,
		lastTickSeconds = tick(),
		shouldYield = shouldYield,
		editableMeshes = result.editableMeshes :: Types.EditableMeshes,
		editableImages = result.editableImages :: Types.EditableImages,
		requireAllFolders = if requireAllFolders ~= nil then requireAllFolders else true,
	} :: Types.ValidationContext

	local validationSuccess, reasons = validateFullBody(validationContext)

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	if validationSuccess then
		Analytics.recordScriptTime(script.Name, startTime, validationContext)
		Analytics.reportScriptTimes(validationContext)
	end

	Analytics.reportCounter(validationSuccess, "FullBody", validationContext)

	return validationSuccess, reasons
end

function UGCValidation.validateShoesWithContext(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(validationContext.fullBodyData ~= nil, "fullBodyData required in validationContext for validateShoes")

	local isServer = validationContext.isServer
	local fullBodyData = validationContext.fullBodyData
	local allowEditableInstances = validationContext.allowEditableInstances

	Analytics.setMetadata({
		entrypoint = "validateShoes",
		assetType = "",
		isServer = isServer,
	})

	local startTime = tick()

	local instances = {}
	for _, instancesAndType in fullBodyData do
		for _, instance in instancesAndType.allSelectedInstances do
			table.insert(instances, instance)
		end
	end

	local success, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
	if not success then
		if isServer then
			error(result[1])
		else
			return success, result
		end
	end

	validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
	validationContext.editableImages = result.editableImages :: Types.EditableImages
	validationContext.lastTickSeconds = tick()

	local validationSuccess, reasons = validateShoes(validationContext)

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	if validationSuccess then
		Analytics.recordScriptTime(script.Name, startTime, validationContext)
		Analytics.reportScriptTimes(validationContext)
	end

	Analytics.reportCounter(validationSuccess, "Shoes", validationContext)

	return validationSuccess, reasons
end

function UGCValidation.preprocessDataAsync(
	allBodyData: Types.AllBodyParts,
	isServer: boolean?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?,
	shouldYield: boolean?
): Types.PreprocessDataResult
	Analytics.setMetadata({
		entrypoint = "preprocessDataAsync",
		assetType = "",
		isServer = isServer,
	})

	local startTime = tick()

	local instances = {}
	for _, instance in allBodyData do
		table.insert(instances, instance)
	end

	local successEditableInstancesForContext, resultEditableMeshesImages =
		createEditableInstancesForContext.processAll(instances, allowEditableInstances)
	if not successEditableInstancesForContext then
		if isServer then
			error(resultEditableMeshesImages[1])
		else
			return {
				ok = false,
				errors = resultEditableMeshesImages,
			}
		end
	end

	local validationContext = {
		isServer = isServer :: boolean,
		allowEditableInstances = allowEditableInstances :: boolean,
		bypassFlags = bypassFlags,
		validateMeshPartAccessories = false,
		lastTickSeconds = tick(),
		shouldYield = shouldYield,
		editableMeshes = resultEditableMeshesImages.editableMeshes :: Types.EditableMeshes,
		editableImages = resultEditableMeshesImages.editableImages :: Types.EditableImages,
	} :: Types.ValidationContext

	local preprocessResults = ValidationHints.preprocessDataAsync(allBodyData, validationContext)

	destroyEditableInstances(
		validationContext.editableMeshes :: Types.EditableMeshes,
		validationContext.editableImages :: Types.EditableImages
	)

	if preprocessResults.ok then
		Analytics.recordScriptTime("preprocessDataAsync", startTime, validationContext)
		Analytics.reportScriptTimes(validationContext)
	end

	return preprocessResults
end

function UGCValidation.isPreprocessDataCached(
	allBodyData: Types.AllBodyParts,
	dataCache: Types.DataCache,
	isServer: boolean?
): boolean
	Analytics.setMetadata({
		entrypoint = "isPreprocessDataCached",
		assetType = "",
		isServer = isServer,
	})

	local startTime = tick()

	local isCached = ValidationHints.isPreprocessDataCached(allBodyData, dataCache)

	local validationContext = {
		isServer = isServer :: boolean,
	} :: Types.ValidationContext

	Analytics.recordScriptTime("isPreprocessDataCached", startTime, validationContext)
	Analytics.reportScriptTimes(validationContext)

	return isCached
end

function UGCValidation.calculateScaleToValidateBoundsAsync(
	allBodyData: Types.AllBodyParts,
	isServer: boolean?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?,
	shouldYield: boolean?,
	dataCache: Types.DataCache?
): Types.ValidateBoundsResult
	Analytics.setMetadata({
		entrypoint = "calculateScaleToValidateBoundsAsync",
		assetType = "",
		isServer = isServer,
	})

	local startTime = tick()

	local resultEditableMeshesImages

	if not dataCache then
		local instances = {}
		for _, instance in allBodyData do
			table.insert(instances, instance)
		end

		local successEditableInstancesForContext
		successEditableInstancesForContext, resultEditableMeshesImages =
			createEditableInstancesForContext.processAll(instances, allowEditableInstances)
		if not successEditableInstancesForContext then
			if isServer then
				error(resultEditableMeshesImages[1])
			else
				return {
					ok = false,
					errors = resultEditableMeshesImages,
				}
			end
		end
	end

	local validationContext = {
		isServer = isServer :: boolean,
		allowEditableInstances = allowEditableInstances :: boolean,
		bypassFlags = bypassFlags,
		validateMeshPartAccessories = false,
		lastTickSeconds = tick(),
		shouldYield = shouldYield,
	} :: Types.ValidationContext

	if not dataCache then
		validationContext.editableMeshes = resultEditableMeshesImages.editableMeshes :: Types.EditableMeshes
		validationContext.editableImages = resultEditableMeshesImages.editableImages :: Types.EditableImages
	end

	local validationResults =
		ValidationHints.calculateScaleToValidateBoundsAsync(allBodyData, validationContext, dataCache)

	if not dataCache then
		destroyEditableInstances(
			validationContext.editableMeshes :: Types.EditableMeshes,
			validationContext.editableImages :: Types.EditableImages
		)
	end

	if validationResults.ok then
		Analytics.recordScriptTime("calculateScaleToValidateBoundsAsync", startTime, validationContext)
		Analytics.reportScriptTimes(validationContext)
	end

	return validationResults
end

UGCValidation.GUIDAttributeName = Constants.GUIDAttributeName

return UGCValidation
