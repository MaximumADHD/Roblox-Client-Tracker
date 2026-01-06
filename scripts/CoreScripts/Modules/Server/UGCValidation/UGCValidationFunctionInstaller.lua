-- This installer allows us to run UGC validation on assets in game servers.
local CorePackages = game:GetService("CorePackages")
local UGCValidationService = game:GetService("UGCValidationService")
local UGCValidation = require(CorePackages.Packages.UGCValidation)
local EngineFeatureUGCValidationWithContextEntrypoint =
	game:GetEngineFeature("UGCValidationWithContextEntrypointFeature")

local function UGCValidationFunction(args)
	local objectInstances = args["instances"]
	local assetTypeEnum = args["assetType"]
	local isServer = args["isServer"]
	local fullBodyData = args["fullBodyData"]
	local allowUnreviewedAssets = args["allowUnreviewedAssets"]
	local restrictedUserIds = args["restrictedUserIds"]
	local token = args["token"]
	local universeId = args["universeId"]
	local requireAllFolders = args["requireAllFolders"]

	local bypassFlags = {
		skipSnapshot = true,
		skipPhysicsDataReset = true,
		skipValidateHSR = true,
	}

	local validationContext, fullBodyValidationContext
	local success, reasons
	if EngineFeatureUGCValidationWithContextEntrypoint then
		validationContext = {
			instances = objectInstances,
			assetTypeEnum = assetTypeEnum,
			isServer = isServer,
			allowUnreviewedAssets = allowUnreviewedAssets,
			restrictedUserIds = restrictedUserIds,
			token = token,
			universeId = universeId,
			allowEditableInstances = true,
			shouldYield = true,
			validateMeshPartAccessories = true,
			requireAllFolders = requireAllFolders,
			bypassFlags = bypassFlags,
		}

		fullBodyValidationContext = {
			fullBodyData = fullBodyData,
			isServer = isServer,
			allowEditableInstances = true,
			bypassFlags = bypassFlags,
			shouldYield = true,
			requireAllFolders = requireAllFolders,
			validateMeshPartAccessories = false,
		}

		if fullBodyData then
			success, reasons = UGCValidation.validateFullBodyWithContext(fullBodyValidationContext)
		else
			success, reasons = UGCValidation.validateWithContext(validationContext)
		end
	else
		if fullBodyData then
			success, reasons = UGCValidation.validateFullBody(
				fullBodyData,
				isServer,
				true, --allowEditableInstances
				bypassFlags,
				true, -- shouldYield
				requireAllFolders
			)
		else
			success, reasons = UGCValidation.validate(
				objectInstances :: { Instance },
				assetTypeEnum :: Enum.AssetType,
				isServer,
				allowUnreviewedAssets,
				restrictedUserIds,
				token,
				universeId,
				true, --allowEditableInstances
				bypassFlags,
				true, --shouldYield
				true, --validateMeshPartAccessories
				requireAllFolders
			)
		end
	end

	if UGCValidation.isFolderStructureEnabled and UGCValidation.isFolderStructureEnabled() then -- isFolderStructureEnabled returns a flag state, this is flagged
		local valConfigs = {
			source = (isServer and "InExpServer" or "InExpClient") :: any,
			enforceR15FolderStructure = requireAllFolders or false,
		}

		local validationData
		if fullBodyData then
			validationData = UGCValidation.ValidateFinalizedBundle(fullBodyData, Enum.BundleType.BodyParts, valConfigs)
		else
			validationData = UGCValidation.ValidateAsset(
				objectInstances :: { Instance },
				assetTypeEnum :: Enum.AssetType,
				valConfigs
			)
		end

		if UGCValidation.isEntrypointMergingEnabled and UGCValidation.isEntrypointMergingEnabled() then
			success, reasons = UGCValidation.combineResultsIntoLegacy(success, reasons, validationData)
		end
	end

	if not success then
		return false, reasons
	end

	return true, { "Success" }
end

local function Install()
	-- Exposes the Lua-side UGC validation scripts to the game-engine code
	-- so that we can trigger UGC validation of any asset from RCC game servers.
	UGCValidationService:RegisterUGCValidationFunction(UGCValidationFunction)
end

return Install
