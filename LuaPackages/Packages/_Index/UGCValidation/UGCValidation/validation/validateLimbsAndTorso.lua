--!strict

local root = script.Parent.Parent

local validateMeshPartBodyPart = require(root.validation.validateMeshPartBodyPart)

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
		if not getInstance(allSelectedInstances, folderName) then
			return false
		end
	end
	return true
end

local R15ArtistIntentFolderName = "R15ArtistIntent"
local R15FixedFolderName = "R15Fixed"

local function validateLimbsAndTorso(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean,
	restrictedUserIds: Types.RestrictedUserIds
): (boolean, { string }?)
	local requiredTopLevelFolders: { string } = {
		R15ArtistIntentFolderName,
		(isServer and R15FixedFolderName or nil) :: string, -- in Studio this folder is automatically added just before upload
	}

	if not areTopLevelFoldersCorrect(allSelectedInstances, requiredTopLevelFolders) then
		return false,
			{ "Incorrect hierarchy selection, folders required: " .. table.concat(requiredTopLevelFolders, ", ") }
	end

	for _, folderName in requiredTopLevelFolders do
		local result, reasons = validateMeshPartBodyPart(
			getInstance(allSelectedInstances, folderName) :: Instance,
			createLimbsAndTorsoSchema(assetTypeEnum, folderName),
			assetTypeEnum,
			isServer,
			allowUnreviewedAssets,
			restrictedUserIds
		)
		if not result then
			return result, reasons
		end
	end
	return true
end

return validateLimbsAndTorso
