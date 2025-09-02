local root = script.Parent.Parent
local Constants = require(root.Constants)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local createIndividualBodyPartSchema = require(root.util.createIndividualBodyPartSchema)
local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local createAccessorySchema = require(root.util.createAccessorySchema)
local createEmoteSchema = require(root.util.createEmoteSchema)

local CreateAssetSchema = {}

CreateAssetSchema[ValidationEnums.UploadCategory.EMOTE_ANIMATION] = function(
	assetEnum: Enum.AssetType,
	_instanceData: { [string]: boolean }
): {}
	assert(assetEnum)
	return createEmoteSchema()
end

CreateAssetSchema[ValidationEnums.UploadCategory.DYNAMIC_HEAD] = function(
	assetEnum: Enum.AssetType,
	_instanceData: { [string]: boolean }
): {}
	assert(assetEnum == Enum.AssetType.DynamicHead)
	local headBodyPartSchema = createIndividualBodyPartSchema(Enum.AssetType.DynamicHead, "Head")

	table.insert(headBodyPartSchema._children, {
		Name = { "FaceControls" },
		ClassName = "FaceControls",
	})
	return headBodyPartSchema
end

CreateAssetSchema[ValidationEnums.UploadCategory.BODY_PART] = function(
	assetEnum: Enum.AssetType,
	_instanceData: { [string]: boolean }
): {}
	local assetInfo = Constants.ASSET_TYPE_INFO[assetEnum]

	local rootFolderSchema = {
		-- NOTE: We are not going to enforce the R15ArtistIntent name here. We create the folders and will enforce it matches as a backend check that should only be hit by exploiters
		ClassName = "Folder",
		_children = {},
	}

	for subPartName in pairs(assetInfo.subParts) do
		local individualBodyPartSchema = createIndividualBodyPartSchema(assetEnum, subPartName)
		table.insert(rootFolderSchema._children, individualBodyPartSchema)
	end
	return rootFolderSchema
end

CreateAssetSchema[ValidationEnums.UploadCategory.LAYERED_CLOTHING] = function(
	assetEnum: Enum.AssetType,
	_instanceData: { [string]: boolean }
): {}
	local assetInfo = Constants.ASSET_TYPE_INFO[assetEnum]
	return createLayeredClothingSchema(assetInfo.attachmentNames)
end

CreateAssetSchema[ValidationEnums.UploadCategory.RIGID_ACCESSORY] = function(
	assetEnum: Enum.AssetType,
	instanceData: { [string]: boolean }
): {}
	local assetInfo = Constants.ASSET_TYPE_INFO[assetEnum]
	if instanceData and instanceData.isMeshPart then
		return createMeshPartAccessorySchema(assetInfo.attachmentNames)
	else
		return createAccessorySchema(assetInfo.attachmentNames)
	end
end

return CreateAssetSchema
