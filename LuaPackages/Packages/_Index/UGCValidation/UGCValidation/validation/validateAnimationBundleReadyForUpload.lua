local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

local Constants = require(root.Constants)
local BundlesMetadata = require(root.util.BundlesMetadata)
local Types = require(root.util.Types)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local createEditableInstancesForContext = require(root.util.createEditableInstancesForContext)
local destroyEditableInstances = require(root.util.destroyEditableInstances)

local validateBundleReadyForUpload = require(root.validation.validateBundleReadyForUpload)

local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)
local getFFlagUGCValidationAnimationPackFolderStructure =
	require(root.flags.getFFlagUGCValidationAnimationPackFolderStructure)
local getFFlagUGCValidationAnimationPackDisableModelStructure =
	require(root.flags.getFFlagUGCValidationAnimationPackDisableModelStructure)
local getFFlagUGCValidationAnimationPackMissingTypeMessage =
	require(root.flags.getFFlagUGCValidationAnimationPackMissingTypeMessage)
local LegacyValidationAdapter = require(root.util.LegacyValidationAdapter)
local HttpService = game:GetService("HttpService")

type AvatarValidationError = validateBundleReadyForUpload.AvatarValidationError
type AvatarValidationResponse = validateBundleReadyForUpload.AvatarValidationResponse
type AvatarValidationPiece = validateBundleReadyForUpload.AvatarValidationPiece

local function hasExactStringValueNames(instance: Instance, expectedStringValueNames: { string }): boolean
	local expected = {}
	for _, stringValueName in expectedStringValueNames do
		expected[stringValueName] = true
	end

	local actual = {}
	for _, child in instance:GetChildren() do
		if child:IsA("StringValue") then
			if not expected[child.Name] or actual[child.Name] then
				return false
			end
			actual[child.Name] = true
		end
	end

	for _, stringValueName in expectedStringValueNames do
		if not actual[stringValueName] then
			return false
		end
	end

	return true
end

local function validateAnimationBundleReadyForUpload(
	bundle: Instance,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: string,
	progressCallback: ((AvatarValidationResponse) -> ())?,
	allowEditableInstances: boolean?,
	bypassFlags: Types.BypassFlags?
)
	progressCallback = progressCallback or function() end
	assert(progressCallback ~= nil, "Luau")

	if not bundle:IsA("Model") then
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

	local animationModels: { [any]: { Instance } } = {}
	if getFFlagUGCValidationAnimationPackSupport() and Constants.ANIMATION_ASSET_INFO then
		local unexpectedNames = {}
		local missingAnimationTypes = {}

		-- Unlike other bundle flows, ValidateFinalizedBundle reconstructs the root instance
		-- from only the matched animation containers, so unexpected children in the original
		-- bundle are silently dropped before the schema check runs. We must validate the
		-- original bundle here. When migrating the bundle entry point to the new
		-- validationFolders framework, consider passing the original bundle instance
		-- through so that modules like ExpectedRootSchema can enforce this directly.
		if
			getFFlagUGCValidationAnimationPackDisableModelStructure()
			or (getFFlagUGCValidationAnimationPackFolderStructure() and bundle:FindFirstChild("R15Anim") ~= nil)
		then
			local matchedAnimationContainers: { [Instance]: boolean } = {}

			for assetTypeEnum, info in Constants.ANIMATION_ASSET_INFO do
				local matchedAnimation = false
				for _, child in bundle:GetChildren() do
					-- The new bundle format has seven sibling R15Anim folders, so the StringValue
					-- names identify which animation type each folder represents.
					local matchesAnimation = child.Name == "R15Anim"
						and child:IsA("Folder")
						and hasExactStringValueNames(child, info.stringValueNames)

					if not matchedAnimationContainers[child] and matchesAnimation then
						animationModels[assetTypeEnum] = { child }
						matchedAnimationContainers[child] = true
						matchedAnimation = true
						break
					end
				end

				if not matchedAnimation then
					table.insert(missingAnimationTypes, assetTypeEnum.Name)
				end
			end

			for _, child in bundle:GetChildren() do
				if
					not matchedAnimationContainers[child]
					and (child.Name ~= "R15Anim" or not getFFlagUGCValidationAnimationPackMissingTypeMessage())
				then
					table.insert(unexpectedNames, child.Name)
				end
			end
		else
			local expectedNames = {}
			for _, info in Constants.ANIMATION_ASSET_INFO do
				expectedNames[info.modelName] = true
			end

			for assetTypeEnum, info in Constants.ANIMATION_ASSET_INFO do
				local child = bundle:FindFirstChild(info.modelName)
				if child then
					animationModels[assetTypeEnum] = { child }
				end
			end

			-- Unlike other bundle flows, ValidateFinalizedBundle reconstructs the root instance
			-- from only the matched animation models, so unexpected children in the original
			-- bundle are silently dropped before the schema check runs. We must validate the
			-- original bundle here. When migrating the bundle entry point to the new
			-- validationFolders framework, consider passing the original bundle instance
			-- through so that modules like ExpectedRootSchema can enforce this directly.
			for _, child in bundle:GetChildren() do
				if not expectedNames[child.Name] then
					table.insert(unexpectedNames, child.Name)
				end
			end
		end

		if getFFlagUGCValidationAnimationPackMissingTypeMessage() and #missingAnimationTypes > 0 then
			local message = string.gsub(
				ErrorSourceStrings.Values.AnimationPack_InvalidR15AnimChildren,
				"{missingAnimationTypes}",
				table.concat(missingAnimationTypes, ", ")
			)
			local response: AvatarValidationResponse = {
				errors = {
					{
						assetType = nil,
						error = {
							type = "message",
							message = message,
						},
					},
				},
				pieces = {},
			}
			return Promise.resolve(response)
		end

		if #unexpectedNames > 0 then
			local message = string.gsub(
				ErrorSourceStrings.Values.AnimationPack_UnexpectedBundleChildren,
				"{unexpectedNames}",
				table.concat(unexpectedNames, ", ")
			)
			local response: AvatarValidationResponse = {
				errors = {
					{
						assetType = nil,
						error = {
							type = "message",
							message = message,
						},
					},
				},
				pieces = {},
			}
			return Promise.resolve(response)
		end
	end

	local piecesByAssetType = {}

	local errors: { AvatarValidationError } = {}
	local pieces: { AvatarValidationPiece } = {}

	for assetTypeName, settings in allowedBundleTypeSettings[bundleType].allowedAssetTypeSettings do
		local assetType = assert(Enum.AssetType[assetTypeName], "Asset type name doesn't map to an enum item")

		if not settings.isEligibleForUpload then
			continue
		end

		local instances = animationModels[assetType :: any]
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

	if getFFlagUGCValidationAnimationPackSupport() and Constants.ANIMATION_ASSET_INFO then
		for assetTypeEnum, _ in Constants.ANIMATION_ASSET_INFO do
			if piecesByAssetType[assetTypeEnum] then
				table.insert(pieces, piecesByAssetType[assetTypeEnum])
			end
		end
	end

	local response: AvatarValidationResponse = {
		errors = errors,
		pieces = pieces,
	}

	progressCallback(response)

	local telemetryBundleId = HttpService:GenerateGUID()

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
		if not createSuccess then
			problems = result
			success = false
		else
			validationContext.editableMeshes = result.editableMeshes :: Types.EditableMeshes
			validationContext.editableImages = result.editableImages :: Types.EditableImages

			success, problems = true, nil
			success, problems = LegacyValidationAdapter.studioRFUAssetValidation(
				validationContext,
				telemetryBundleId,
				success,
				problems
			)

			destroyEditableInstances(
				validationContext.editableMeshes :: Types.EditableMeshes,
				validationContext.editableImages :: Types.EditableImages
			)
		end

		response = table.clone(response)
		response.errors = table.clone(response.errors)

		if not success then
			assert(problems ~= nil, "Failure without errors")
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
			local function createFullBodyData(inputPieces: { AvatarValidationPiece }): Types.FullBodyData
				local results: Types.FullBodyData = {}
				for _, individualPiece in inputPieces do
					table.insert(results, {
						assetTypeEnum = individualPiece.assetType,
						allSelectedInstances = if individualPiece.instance then { individualPiece.instance } else {},
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

				success, failures = true, nil
				if getFFlagUGCValidationAnimationPackSupport() then
					success, failures = LegacyValidationAdapter.studioRFUBundleValidation(
						fullBodyData,
						Enum.BundleType.Animations,
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
		end)
		:andThen(function()
			return response
		end)
end

return validateAnimationBundleReadyForUpload
