--!strict
local root = script.Parent.Parent

local BundlesMetadata = require(root.util.BundlesMetadata)
local Constants = require(root.Constants)

export type BundleType = "Body" | "DynamicHead"

--[[
	Creates and returns a map of asset type enumerations to body part
	instances associated with that enumeration. This is useful for grouping
	body part instances together.
	For example:
		{
			[DynamicHead] = {
				[1] = Head
			},
			[RightLeg] = {
				[1] = RightFoot,
				[2] = RightUpperLeg,
				[3] = RightLowerLeg
			},
			[LeftLeg] = {
				[1] = LeftFoot,
				[2] = LeftUpperLeg,
				[3] = LeftLowerLeg
			},
			[LeftArm] = {
				[1] = LeftLowerArm,
				[2] = LeftUpperArm,
				[3] = LeftHand
			},
			[RightArm] = {
				[1] = RightUpperArm,
				[2] = RightLowerArm,
				[3] = RightHand
			},
			[Torso] = {
				[1] = LowerTorso,
				[2] = UpperTorso
			}
		}
]]
local function getUGCBodyPartsAssetTypeMap(
	rootInstance: Model,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: BundleType
): { [string]: { Instance } }
	assert(rootInstance:IsA("Model"))

	local bundleTypeSettings = allowedBundleTypeSettings[bundleType]
	if bundleTypeSettings == nil then
		return {}
	end

	local assetTypeToBodyPartsMap = {}

	-- Find each UGC body part and group them by asset type.
	for _, bodyPartName in Constants.UGC_BODY_PARTS do
		local bodyPartInstance = rootInstance:FindFirstChild(bodyPartName)

		if bodyPartInstance == nil then
			continue
		end

		local assetType = Constants.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[bodyPartName]
		assert(assetType ~= nil, "Body part doesn't map to an asset type")

		if bundleTypeSettings.allowedAssetTypeSettings[assetType.Name] == nil then
			continue
		end

		if assetTypeToBodyPartsMap[assetType] == nil then
			assetTypeToBodyPartsMap[assetType] = { bodyPartInstance }
		else
			table.insert(assetTypeToBodyPartsMap[assetType], bodyPartInstance)
		end
	end

	return assetTypeToBodyPartsMap
end

--[[
		Creates and returns a map of body part asset enumerations to newly
		created folders with the assoicated body parts as children. This
		is the format required for the client side validation of body parts
		and upload.
		For example:
			{
				[DynamicHead] = { Head },
				[RightLeg] = { R15ArtistIntent, R15Fixed }
				[LeftLeg] = { R15ArtistIntent, R15Fixed }
				[LeftArm] = { R15ArtistIntent, R15Fixed }
				[RightArm] = { R15ArtistIntent, R15Fixed }
				[Torso] = { R15ArtistIntent, R15Fixed }
			}
	]]
local function createUGCBodyPartFolders(
	rootInstance: Model,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: BundleType,
	includeR15FixedAndR6Folders: boolean?
): { [string]: { Instance } }
	assert(rootInstance:IsA("Model"), "Invalid root instance, must be a model")

	local assetTypeToBodyPartsMap = getUGCBodyPartsAssetTypeMap(rootInstance, allowedBundleTypeSettings, bundleType)

	local assetTypeToFoldersMap = {}
	for assetType, instances in assetTypeToBodyPartsMap do
		local requiresFolders = table.find(Constants.ASSET_TYPES_THAT_SKIP_FOLDER, assetType) == nil
		if not requiresFolders then
			assetTypeToFoldersMap[assetType] = instances
			continue
		end

		local r15ArtistIntentFolder = Instance.new("Folder")
		r15ArtistIntentFolder.Name = Constants.FOLDER_NAMES.R15ArtistIntent

		for _, instance in instances do
			instance.Parent = r15ArtistIntentFolder
		end
		assetTypeToFoldersMap[assetType] = { r15ArtistIntentFolder }

		if includeR15FixedAndR6Folders then
			-- Clone the R15ArtistInent folder and rename it
			local fixedFolder = r15ArtistIntentFolder:Clone()
			fixedFolder.Name = Constants.FOLDER_NAMES.R15Fixed
			table.insert(assetTypeToFoldersMap[assetType], fixedFolder)

			-- Create an empty R6 folder to upload
			local r6Folder = Instance.new("Folder")
			r6Folder.Name = Constants.FOLDER_NAMES.R6
			table.insert(assetTypeToFoldersMap[assetType], r6Folder)
		end
	end

	return assetTypeToFoldersMap
end

return createUGCBodyPartFolders
