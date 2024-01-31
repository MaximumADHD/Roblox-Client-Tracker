--!strict

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local validateMeshPartBodyPart = require(root.validation.validateMeshPartBodyPart)
local validateTags = require(root.validation.validateTags)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local createLimbsAndTorsoSchema = require(root.util.createLimbsAndTorsoSchema)
local Types = require(root.util.Types)

local function getInstance(instances: { Instance }, name: string): Instance?
	for _, inst in pairs(instances) do
		if inst.Name == name then
			return inst
		end
	end
	return nil
end

local function areTopLevelFoldersCorrect(allSelectedInstances: { Instance }, requiredTopLevelFolders: { string })
	local topLevelFoldersAreGood = #allSelectedInstances == #requiredTopLevelFolders
	if not topLevelFoldersAreGood then
		return false
	end
	for _, folderName in requiredTopLevelFolders do
		local inst = getInstance(allSelectedInstances, folderName) :: Instance
		if not inst or inst.ClassName ~= "Folder" then
			return false
		end
	end
	return true
end

local function getFullNameWithoutRootFolder(inst: Instance, rootFolderName: string): string
	local fullName = inst:GetFullName()
	local i, j = string.find(fullName, rootFolderName .. "%.")
	assert(i and j)
	return string.sub(fullName, j :: number + 1, #fullName)
end

local function compareFolderInfo(fromFolder: any, toFolder: any): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for key, val in fromFolder do
		if nil == toFolder[key] or toFolder[key] ~= val then
			Analytics.reportFailure(Analytics.ErrorType.validateLimbsAndTorso_FolderInfoMismatch)
			reasonsAccumulator:updateReasons(false, { `{key} has a different value in different folders` })
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateFolderAssetIdsMatch(
	allSelectedInstances: { Instance },
	requiredTopLevelFolders: { string }
): (boolean, { string }?)
	if #requiredTopLevelFolders == 1 then
		return true
	end

	local prevFolderInfo = nil
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, folderName in requiredTopLevelFolders do
		if folderName == Constants.FOLDER_NAMES.R6 then
			continue
		end

		local folder: Folder? = (getInstance(allSelectedInstances, folderName) :: Folder)
		assert(folder)

		local folderInfo = {}

		for __, descendant in folder:GetDescendants() do
			local contentIdFields = Constants.CONTENT_ID_FIELDS[descendant.ClassName]
			if contentIdFields then
				for ___, fieldName in contentIdFields do
					local key = getFullNameWithoutRootFolder(descendant, folderName) .. "." .. fieldName
					folderInfo[key] = descendant[fieldName]
				end
			end
		end

		if not prevFolderInfo then
			prevFolderInfo = folderInfo
			continue
		end

		reasonsAccumulator:updateReasons(compareFolderInfo(prevFolderInfo, folderInfo))
		reasonsAccumulator:updateReasons(compareFolderInfo(folderInfo, prevFolderInfo))
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateR6Folder(inst: Instance)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if #(inst:GetChildren()) > 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateLimbsAndTorso_R6FolderHasChildren)
		reasonsAccumulator:updateReasons(false, {
			`{Constants.FOLDER_NAMES.R6} Folder should have no children!`,
		})
	end

	reasonsAccumulator:updateReasons(validateTags(inst))

	reasonsAccumulator:updateReasons(validateProperties(inst))

	reasonsAccumulator:updateReasons(validateAttributes(inst))

	return reasonsAccumulator:getFinalResults()
end

local function validateLimbsAndTorso(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(validationContext.instances ~= nil, "instances required in validationContext for validateLimbsAndTorso")
	local allSelectedInstances = validationContext.instances :: { Instance }

	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateLimbsAndTorso"
	)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local isServer = validationContext.isServer

	local requiredTopLevelFolders: { string } = { Constants.FOLDER_NAMES.R15ArtistIntent }
	if isServer then
		-- in Studio these folders are automatically added just before upload
		table.insert(requiredTopLevelFolders, Constants.FOLDER_NAMES.R15Fixed)
		table.insert(requiredTopLevelFolders, Constants.FOLDER_NAMES.R6)
	end

	if not areTopLevelFoldersCorrect(allSelectedInstances, requiredTopLevelFolders) then
		Analytics.reportFailure(Analytics.ErrorType.validateLimbsAndTorso_TopLevelFolders)
		return false,
			{ "Incorrect hierarchy selection, folders required: " .. table.concat(requiredTopLevelFolders, ", ") }
	end

	for _, folderName in requiredTopLevelFolders do
		local inst = getInstance(allSelectedInstances, folderName) :: Instance
		local result
		local reasons

		if folderName == Constants.FOLDER_NAMES.R6 then
			result, reasons = validateR6Folder(inst)
		else
			result, reasons = validateMeshPartBodyPart(
				inst,
				createLimbsAndTorsoSchema(assetTypeEnum, folderName, validationContext),
				validationContext
			)
		end
		if not result then
			return result, reasons
		end
	end

	return validateFolderAssetIdsMatch(allSelectedInstances, requiredTopLevelFolders)
end

local function DEPRECATED_validateLimbsAndTorso(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?,
	universeId: number?
): (boolean, { string }?)
	local requiredTopLevelFolders: { string } = { Constants.FOLDER_NAMES.R15ArtistIntent }
	if isServer then
		-- in Studio these folders are automatically added just before upload
		table.insert(requiredTopLevelFolders, Constants.FOLDER_NAMES.R15Fixed)
		table.insert(requiredTopLevelFolders, Constants.FOLDER_NAMES.R6)
	end

	if not areTopLevelFoldersCorrect(allSelectedInstances, requiredTopLevelFolders) then
		Analytics.reportFailure(Analytics.ErrorType.validateLimbsAndTorso_TopLevelFolders)
		return false,
			{ "Incorrect hierarchy selection, folders required: " .. table.concat(requiredTopLevelFolders, ", ") }
	end

	for _, folderName in requiredTopLevelFolders do
		local inst = getInstance(allSelectedInstances, folderName) :: Instance
		local result
		local reasons

		if folderName == Constants.FOLDER_NAMES.R6 then
			result, reasons = validateR6Folder(inst)
		else
			result, reasons = (validateMeshPartBodyPart :: any)(
				inst,
				createLimbsAndTorsoSchema(assetTypeEnum, folderName),
				assetTypeEnum,
				isServer,
				allowUnreviewedAssets,
				restrictedUserIds,
				universeId
			)
		end
		if not result then
			return result, reasons
		end
	end

	return validateFolderAssetIdsMatch(allSelectedInstances, requiredTopLevelFolders)
end

return if getFFlagUseUGCValidationContext() then validateLimbsAndTorso else DEPRECATED_validateLimbsAndTorso :: never
