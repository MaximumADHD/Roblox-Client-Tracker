local root = script.Parent.Parent
local Types = require(root.util.Types)
local Constants = require(root.Constants)
local createIndividualBodyPartSchema = require(root.util.createIndividualBodyPartSchema)
local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local createEyebrowEyelashSchema = require(root.util.createEyebrowEyelashSchema)
local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local createMakeupSchema = require(root.util.createMakeupSchema)
local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)
local createAccessorySchema = require(root.util.createAccessorySchema)
local createEmoteSchema = require(root.util.createEmoteSchema)
local createAnimationSchema = require(root.util.createAnimationSchema)
local getUploadCategory = require(root.util.getUploadCategory)

local getFFlagUGCValidateEyebrowEyelashThumbnailSchema =
	require(root.flags.getFFlagUGCValidateEyebrowEyelashThumbnailSchema)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CreateExpectedSchema = {}
-- NOTE: We are not going to enforce the R15ArtistIntent name here. These schemas are for the root folder/instance, and not for the copy

local function getRootInstance(folders: { Instance })
	-- Returns the R15ArtistIntent when present or the single instance in the list
	for _, v in folders do
		if v.Name == Constants.FOLDER_NAMES.R15ArtistIntent then
			return v
		end
	end

	return folders[1]
end

function CreateExpectedSchema.generateBundleSchema(fullBodyData: Types.FullBodyData): { [string]: any }
	-- For bundles, we expect all the individual asset schemas to be matched, with all of the meshpart/accessories being under the root folder
	local rootFolderSchema = {
		ClassName = "Folder",
		_children = {},
	}

	for _, instancesAndType in fullBodyData do
		local instance = getRootInstance(instancesAndType.allSelectedInstances)
		local instanceCategory = getUploadCategory(instance, instancesAndType.assetTypeEnum, nil)
		local expectedAssetSchema = (
			CreateExpectedSchema.generateAssetSchema(instanceCategory, instancesAndType.assetTypeEnum, instance)
		) :: any

		if expectedAssetSchema.ClassName == "Folder" then
			for _, childSchema in expectedAssetSchema._children do
				table.insert(rootFolderSchema._children, childSchema)
			end
		else
			table.insert(rootFolderSchema._children, expectedAssetSchema)
		end
	end

	return rootFolderSchema
end

local function createBodyPartSchema(assetEnum: Enum.AssetType): { [string]: any }
	local assetInfo = Constants.ASSET_TYPE_INFO[assetEnum]

	local rootFolderSchema = {
		ClassName = "Folder",
		_children = {},
	}

	for subPartName in pairs(assetInfo.subParts) do
		local individualBodyPartSchema = createIndividualBodyPartSchema(assetEnum, subPartName)
		table.insert(rootFolderSchema._children, individualBodyPartSchema)
	end
	return rootFolderSchema
end

local categoryToSchemaGenerator = {
	EMOTE_ANIMATION = function(_assetEnum: Enum.AssetType, _rootInstance: Instance)
		return createEmoteSchema()
	end,
	DYNAMIC_HEAD = function(_assetEnum: Enum.AssetType, _rootInstance: Instance)
		return createDynamicHeadMeshPartSchema()
	end,
	TORSO_AND_LIMBS = function(assetEnum: Enum.AssetType, _rootInstance: Instance)
		return createBodyPartSchema(assetEnum)
	end,
	LAYERED_CLOTHING = function(assetEnum: Enum.AssetType, _rootInstance: Instance)
		if getFFlagUGCValidateEyebrowEyelashThumbnailSchema() then
			if assetEnum == Enum.AssetType.EyebrowAccessory or assetEnum == Enum.AssetType.EyelashAccessory then
				return createEyebrowEyelashSchema(Constants.ASSET_TYPE_INFO[assetEnum].attachmentNames)
			else
				return createLayeredClothingSchema(Constants.ASSET_TYPE_INFO[assetEnum].attachmentNames)
			end
		else
			return createLayeredClothingSchema(Constants.ASSET_TYPE_INFO[assetEnum].attachmentNames)
		end
	end,
	RIGID_ACCESSORY = function(assetEnum: Enum.AssetType, rootInstance: Instance)
		local assetInfo = Constants.ASSET_TYPE_INFO[assetEnum]

		if rootInstance:FindFirstChildOfClass("MeshPart") then
			return createMeshPartAccessorySchema(assetInfo.attachmentNames)
		else
			return createAccessorySchema(assetInfo.attachmentNames)
		end
	end,
	MAKEUP = function(_assetEnum: Enum.AssetType, _rootInstance: Instance)
		return createMakeupSchema()
	end,
}

if getFFlagUGCValidationAnimationPackSupport() then
	categoryToSchemaGenerator.ANIMATION = function(assetEnum: Enum.AssetType, _rootInstance: Instance)
		return createAnimationSchema(assetEnum)
	end
end

function CreateExpectedSchema.generateAssetSchema(
	uploadCategory: string,
	assetEnum: Enum.AssetType,
	rootInstance: Instance
): {}
	return categoryToSchemaGenerator[uploadCategory](assetEnum, rootInstance)
end

function CreateExpectedSchema.generateAnimationPackBundleSchema(): { [string]: any }
	local rootModelSchema = {
		ClassName = "Model",
		_children = {},
	}
	for _, info in Constants.ANIMATION_ASSET_INFO do
		table.insert(rootModelSchema._children, {
			ClassName = "Model",
			Name = info.modelName,
			_ignoreDescendants = true,
		})
	end
	return rootModelSchema
end

return CreateExpectedSchema
