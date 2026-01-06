local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

local ConstantsInterface = require(root.ConstantsInterface)

local BundlesMetadata = require(root.util.BundlesMetadata)
local Types = require(root.util.Types)
local getRestrictedUserTable = require(root.util.getRestrictedUserTable)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local destroyEditableInstances = require(root.util.destroyEditableInstances)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local fixUpPreValidation = require(root.util.fixUpPreValidation)
local validateInternal = require(root.validation.validateInternal)
local validateFullBody = require(root.validation.validateFullBody)

local getFFlagUGCValidateDontUseRestrictedUserTable = require(root.flags.getFFlagUGCValidateDontUseRestrictedUserTable)

local getFFlagUGCValidationEnableFolderStructure = require(root.flags.getFFlagUGCValidationEnableFolderStructure)
local LegacyValidationAdapter = require(root.util.LegacyValidationAdapter)
local HttpService = game:GetService("HttpService")

-- The order in which validation is performed
local SORTED_ASSET_TYPES = {
	Enum.AssetType.DynamicHead,
	Enum.AssetType.Torso,
	Enum.AssetType.LeftArm,
	Enum.AssetType.RightArm,
	Enum.AssetType.LeftLeg,
	Enum.AssetType.RightLeg,
	Enum.AssetType.HairAccessory,
	Enum.AssetType.EyebrowAccessory,
	Enum.AssetType.EyelashAccessory,
}

export type AvatarValidationPiece = {
	assetType: Enum.AssetType,
	instance: Instance?,
	settings: BundlesMetadata.AssetTypeSettings,
	status: "pending" | "finished",
}

export type AvatarValidationError = {
	-- Can be nil if this applies to the entire avatar
	assetType: Enum.AssetType?,
	error: {
		type: "message",
		message: string,
	} | {
		type: "notFound",
	},
}

export type AvatarValidationResponse = {
	errors: { AvatarValidationError },
	pieces: { AvatarValidationPiece },
}

-- Promise is not typed, so we cannot use it as a return value
local function validateBundleReadyForUpload(
	avatar: Instance,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: createUGCBodyPartFolders.BundleType,
	progressCallback: ((AvatarValidationResponse) -> ())?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?
)
	progressCallback = progressCallback or function() end
	assert(progressCallback ~= nil, "Luau")

	if not avatar:IsA("Model") then
		local response: AvatarValidationResponse = {
			errors = {
				{
					assetType = nil,
					error = {
						type = "message",
						message = "Invalid root instance, must be a model",
					},
				},
			},

			pieces = {},
		}

		return Promise.resolve(response)
	end

	avatar = fixUpPreValidation(avatar)

	-- Get all the body parts to be validated in the format that the validation code expects.
	local ugcBodyPartFolders = createUGCBodyPartFolders(
		avatar :: Model,
		allowedBundleTypeSettings,
		bundleType,
		-- Don't include R15 Fixed and R6 folders
		false
	)

	local errors: { AvatarValidationError } = {}
	local pieces: { AvatarValidationPiece } = {}

	for assetTypeName, settings in allowedBundleTypeSettings[bundleType].allowedAssetTypeSettings do
		local assetType = assert(Enum.AssetType[assetTypeName], "Asset type name doesn't map to an enum item")

		if not settings.isEligibleForUpload then
			continue
		end

		assert(
			settings.minimumQuantity == 0 or settings.minimumQuantity == 1,
			"Invalid minimum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."
		)

		assert(
			settings.maximumQuantity == 0 or settings.maximumQuantity == 1,
			"Invalid maximum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."
		)

		-- TODO: remove implicit cast from enum to string by using '.Name' or assetTypeName
		local instances = ugcBodyPartFolders[assetType :: any]
		local instance = instances and instances[1]

		if settings.minimumQuantity == 0 and instance == nil then
			continue
		end

		table.insert(pieces, {
			assetType = assetType,
			instance = instance,
			settings = settings,
			status = if instance == nil then "finished" else "pending",
		})

		if instance == nil then
			table.insert(errors, {
				assetType = assetType,
				error = {
					type = "notFound",
				},
			})
		end
	end

	table.sort(pieces, function(a, b)
		local sortKeyA = table.find(SORTED_ASSET_TYPES, a.assetType) or math.huge
		local sortKeyB = table.find(SORTED_ASSET_TYPES, b.assetType) or math.huge

		return sortKeyA < sortKeyB
	end)

	local response: AvatarValidationResponse = {
		errors = errors,
		pieces = pieces,
	}

	progressCallback(response)
	local telemetryBundleId
	if getFFlagUGCValidationEnableFolderStructure() then
		telemetryBundleId = HttpService:GenerateGUID()
	end

	-- Calling serially because the UGC validation service gets throttled fast.
	return Promise.each(pieces, function(piece: AvatarValidationPiece, index: number)
		if piece.status == "finished" then
			return
		end

		assert(piece.instance ~= nil, "Unfinished piece doesn't have an instnace")

		local success, problems
		local instances = { piece.instance }
		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = piece.assetType :: Enum.AssetType,
			allowUnreviewedAssets = false,
			restrictedUserIds = if getFFlagUGCValidateDontUseRestrictedUserTable()
				then nil
				else getRestrictedUserTable(),
			isServer = false,
			isAsync = false,
			allowEditableInstances = allowEditableInstances,
			bypassFlags = bypassFlags,
			validateMeshPartAccessories = false,
			requireAllFolders = false,
		} :: Types.ValidationContext

		local createSuccess, result = createEditableInstancesForContext.processAll(instances, allowEditableInstances)
		-- assuming isServer is false
		if not createSuccess then
			problems = result
			success = false
		else
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages

			success, problems = validateInternal(validationContext)
			if getFFlagUGCValidationEnableFolderStructure() then
				success, problems = LegacyValidationAdapter.studioRFUAssetValidation(
					validationContext,
					telemetryBundleId,
					success,
					problems
				)
			end

			destroyEditableInstances(
				validationContext.editableMeshes :: Types.EditableMeshes,
				validationContext.editableImages :: Types.EditableImages
			)
		end

		response = table.clone(response)
		response.errors = table.clone(response.errors)

		if not success then
			assert(problems ~= nil, "Failure without errors") -- Luau type refining
			for _, problem in problems do
				table.insert(response.errors, {
					assetType = piece.assetType,
					error = {
						type = "message",
						message = problem,
					},
				})
			end
		end

		response.pieces = table.clone(response.pieces)
		response.pieces[index].status = "finished"

		progressCallback(response)
	end)
		:andThen(function()
			if bundleType == "Body" then
				local function createFullBodyData(inputPieces: { AvatarValidationPiece }): Types.FullBodyData
					local results: Types.FullBodyData = {}
					for _, individualPiece in inputPieces do
						if not ConstantsInterface.isBodyPart(individualPiece.assetType) then
							continue
						end

						table.insert(results, {
							assetTypeEnum = individualPiece.assetType,
							allSelectedInstances = if individualPiece.instance
								then { individualPiece.instance }
								else {},
						})
					end
					return results
				end

				local success, failures
				local fullBodyData = createFullBodyData(response.pieces)

				local validationContext = {
					fullBodyData = fullBodyData :: Types.FullBodyData,
					isServer = false,
					allowEditableInstances = allowEditableInstances,
					bypassFlags = bypassFlags,
					validateMeshPartAccessories = false,
					requireAllFolders = false,
				} :: Types.ValidationContext

				local instances = {}
				for _, instancesAndType in fullBodyData do
					for _, instance in instancesAndType.allSelectedInstances do
						table.insert(instances, instance)
					end
				end

				local createSuccess, result =
					createEditableInstancesForContext.processAll(instances, allowEditableInstances)
				if not createSuccess then
					failures = result
					success = false
				else
					validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
					validationContext.editableImages = result.editableImages :: Types.EditableImages

					success, failures = validateFullBody(validationContext)
					if getFFlagUGCValidationEnableFolderStructure() then
						success, failures = LegacyValidationAdapter.studioRFUBundleValidation(
							fullBodyData,
							Enum.BundleType.BodyParts,
							validationContext,
							telemetryBundleId,
							success,
							failures
						)
					end

					destroyEditableInstances(
						validationContext.editableMeshes :: Types.EditableMeshes,
						validationContext.editableImages :: Types.EditableImages
					)
				end

				if not success then
					response = table.clone(response)
					response.errors = table.clone(response.errors)

					assert(failures and (#failures > 0), "There should always be a reason for failure")
					for _, problem in failures do
						table.insert(response.errors, {
							assetType = nil,
							error = {
								type = "message",
								message = problem,
							},
						})
					end
				end
				progressCallback(response)
			end
		end)
		:andThen(function()
			return response
		end)
end

return validateBundleReadyForUpload
