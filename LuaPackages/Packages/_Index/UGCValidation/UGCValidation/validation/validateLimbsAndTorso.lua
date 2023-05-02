--!strict

local root = script.Parent.Parent

local validateBodyPartMeshBounds = require(root.validation.validateBodyPartMeshBounds)
local validateBodyPartChildAttachmentBounds = require(root.validation.validateBodyPartChildAttachmentBounds)

local validateWithSchema = require(root.util.validateWithSchema)
local createLimbsAndTorsoSchema = require(root.util.createLimbsAndTorsoSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function getInstance(instances: { Instance }, name: string): Instance?
	for _, inst in pairs(instances) do
		if inst.Name == name then
			return inst
		end
	end
	return nil
end

local R15ArtistIntentFolderName = "R15ArtistIntent"
local R15FixedFolderName = "R15Fixed"

local function validateLimbsAndTorso(
	allSelectedInstances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean
): (boolean, { string }?)
	local requiredTopLevelFolders: { string } = {
		R15ArtistIntentFolderName,
		(isServer and R15FixedFolderName or nil) :: string, -- in Studio this folder is automatically added just before upload
	}

	local topLevelFoldersAreGood = #allSelectedInstances == #requiredTopLevelFolders
	if topLevelFoldersAreGood then
		for _, folderName in pairs(requiredTopLevelFolders) do
			local inst = getInstance(allSelectedInstances, folderName)
			if not inst then
				topLevelFoldersAreGood = false
				break
			end
			local validationResult =
				validateWithSchema(createLimbsAndTorsoSchema(assetTypeEnum, folderName), inst :: Instance)
			if validationResult.success == false then
				return false, { validationResult.message }
			end
		end
	end
	if not topLevelFoldersAreGood then
		return false,
			{ "Incorrect hierarchy selection, folders required: " .. table.concat(requiredTopLevelFolders, ", ") }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if
		not reasonsAccumulator:updateReasons(
			validateBodyPartMeshBounds(
				getInstance(allSelectedInstances, R15ArtistIntentFolderName) :: Instance,
				assetTypeEnum
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end

	if
		not reasonsAccumulator:updateReasons(
			validateBodyPartChildAttachmentBounds(
				getInstance(allSelectedInstances, R15ArtistIntentFolderName) :: Instance,
				assetTypeEnum
			)
		)
	then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

return validateLimbsAndTorso
