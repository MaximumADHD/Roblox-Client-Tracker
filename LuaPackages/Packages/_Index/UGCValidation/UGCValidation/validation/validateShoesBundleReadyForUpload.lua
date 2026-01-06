local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

local BundlesMetadata = require(root.util.BundlesMetadata)
local Types = require(root.util.Types)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local destroyEditableInstances = require(root.util.destroyEditableInstances)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local fixUpPreValidation = require(root.util.fixUpPreValidation)

local validateInternal = require(root.validation.validateInternal)
local validateShoes = require(root.validation.validateShoes)
local validateBundleReadyForUpload = require(root.validation.validateBundleReadyForUpload)

local FFlagValidateFullShoesBundleStudio = game:DefineFastFlag("ValidateFullShoesBundleStudio", false)
local getFFlagUGCValidationEnableFolderStructure = require(root.flags.getFFlagUGCValidationEnableFolderStructure)
local LegacyValidationAdapter = require(root.util.LegacyValidationAdapter)
local HttpService = game:GetService("HttpService")

type AvatarValidationError = validateBundleReadyForUpload.AvatarValidationError
type AvatarValidationResponse = validateBundleReadyForUpload.AvatarValidationResponse
type AvatarValidationPiece = validateBundleReadyForUpload.AvatarValidationPiece

-- Promise is not typed, so we cannot use it as a return value
local function validateShoesBundleReadyForUpload(
	shoes: Instance,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: createUGCBodyPartFolders.BundleType,
	progressCallback: ((AvatarValidationResponse) -> ())?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?
)
	progressCallback = progressCallback or function() end
	assert(progressCallback ~= nil, "Luau")

	if not shoes:IsA("Model") then
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

	local leftShoe = shoes:FindFirstChild("LeftShoeAccessory")
	local rightShoe = shoes:FindFirstChild("RightShoeAccessory")

	if not leftShoe or not leftShoe:IsA("Accessory") or not rightShoe or not rightShoe:IsA("Accessory") then
		local response: AvatarValidationResponse = {
			errors = {
				{
					assetType = nil,
					error = {
						type = "message",
						message = "Shoes must of type 'Accessory' and names must be 'LeftShoeAccessory' and 'RightShoeAccessory'",
					},
				},
			},

			pieces = {},
		}

		return Promise.resolve(response)
	end

	local ugcShoes = {
		[Enum.AssetType.LeftShoeAccessory] = { fixUpPreValidation(leftShoe) },
		[Enum.AssetType.RightShoeAccessory] = { fixUpPreValidation(rightShoe) },
	}

	local piecesByAssetType = {}

	local errors: { AvatarValidationError } = {}
	local pieces: { AvatarValidationPiece } = {}

	for assetTypeName, settings in allowedBundleTypeSettings[bundleType].allowedAssetTypeSettings do
		local assetType = assert(Enum.AssetType[assetTypeName], "Asset type name doesn't map to an enum item")

		if not settings.isEligibleForUpload then
			continue
		end

		local instances = ugcShoes[assetType :: any]
		local instance = instances and instances[1]

		piecesByAssetType[assetType :: any] = {
			assetType = assetType,
			instance = instance,
			settings = settings,
			status = if instance == nil then "finished" else "pending",
		} :: AvatarValidationPiece

		if instance == nil then
			table.insert(errors, {
				assetType = assetType,
				error = {
					type = "notFound",
				},
			})
		end
	end

	table.insert(pieces, piecesByAssetType[Enum.AssetType.LeftShoeAccessory])
	table.insert(pieces, piecesByAssetType[Enum.AssetType.RightShoeAccessory])

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

		assert(piece.instance ~= nil, "Unfinished piece doesn't have an instance")

		local success, problems
		local instances = { piece.instance }
		local validationContext = {
			instances = instances :: { Instance },
			assetTypeEnum = piece.assetType :: Enum.AssetType,
			allowEditableInstances = allowEditableInstances,
			bypassFlags = bypassFlags,
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
			if FFlagValidateFullShoesBundleStudio then
				local function createFullBodyData(inputPieces: { AvatarValidationPiece }): Types.FullBodyData
					local results: Types.FullBodyData = {}
					for _, individualPiece in inputPieces do
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

					success, failures = validateShoes(validationContext)
					if getFFlagUGCValidationEnableFolderStructure() then
						success, failures = LegacyValidationAdapter.studioRFUBundleValidation(
							fullBodyData,
							Enum.BundleType.Shoes,
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
			end
			progressCallback(response)
		end)
		:andThen(function()
			return response
		end)
end

return validateShoesBundleReadyForUpload
