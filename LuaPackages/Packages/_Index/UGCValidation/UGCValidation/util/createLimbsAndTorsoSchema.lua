--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local createIndividualBodyPartSchema = require(root.util.createIndividualBodyPartSchema)

local function createLimbsAndTorsoSchema(assetTypeEnum: Enum.AssetType, folderName: string)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local rootFolderSchema = {
		ClassName = "Folder",
		Name = { folderName },
		_children = {},
	}

	for subPartName in pairs(assetInfo.subParts) do
		local individualBodyPartSchema = createIndividualBodyPartSchema(assetTypeEnum, subPartName)
		table.insert(rootFolderSchema._children, individualBodyPartSchema)
	end
	return rootFolderSchema
end

return createLimbsAndTorsoSchema
