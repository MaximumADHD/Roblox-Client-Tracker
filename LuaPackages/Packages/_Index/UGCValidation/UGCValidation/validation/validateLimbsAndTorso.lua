--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

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
			if
				not reasonsAccumulator:updateReasons(false, {
					`{key} has a different value in different folders`,
				})
			then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local R15ArtistIntentFolderName = "R15ArtistIntent"
local R15FixedFolderName = "R15Fixed"
local R6FolderName = "R6"

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
		if folderName == R6FolderName then
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

		if not reasonsAccumulator:updateReasons(compareFolderInfo(prevFolderInfo, folderInfo)) then
			return reasonsAccumulator:getFinalResults()
		end
		if not reasonsAccumulator:updateReasons(compareFolderInfo(folderInfo, prevFolderInfo)) then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateR6Folder(inst: Instance)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if #(inst:GetChildren()) > 0 then
		if not reasonsAccumulator:updateReasons(false, { `{R6FolderName} Folder should have no children!` }) then
			return reasonsAccumulator:getFinalResults()
		end
	end

	if not reasonsAccumulator:updateReasons(validateTags(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateProperties(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateAttributes(inst)) then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateLimbsAndTorso(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean,
	restrictedUserIds: Types.RestrictedUserIds
): (boolean, { string }?)
	local requiredTopLevelFolders: { string } = {
		R15ArtistIntentFolderName,
	}
	if isServer then
		-- in Studio these folders are automatically added just before upload
		table.insert(requiredTopLevelFolders, R15FixedFolderName)
		table.insert(requiredTopLevelFolders, R6FolderName)
	end

	if not areTopLevelFoldersCorrect(allSelectedInstances, requiredTopLevelFolders) then
		return false,
			{ "Incorrect hierarchy selection, folders required: " .. table.concat(requiredTopLevelFolders, ", ") }
	end

	for _, folderName in requiredTopLevelFolders do
		local inst = getInstance(allSelectedInstances, folderName) :: Instance
		local result
		local reasons

		if folderName == R6FolderName then
			result, reasons = validateR6Folder(inst)
		else
			result, reasons = validateMeshPartBodyPart(
				inst,
				createLimbsAndTorsoSchema(assetTypeEnum, folderName),
				assetTypeEnum,
				isServer,
				allowUnreviewedAssets,
				restrictedUserIds
			)
		end
		if not result then
			return result, reasons
		end
	end

	return validateFolderAssetIdsMatch(allSelectedInstances, requiredTopLevelFolders)
end

return validateLimbsAndTorso
