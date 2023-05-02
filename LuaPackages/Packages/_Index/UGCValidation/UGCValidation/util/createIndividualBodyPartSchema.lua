--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local function createIndividualBodyPartSchema(assetTypeEnum: Enum.AssetType, subPartName: string)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	local validationData = assetInfo.subParts[subPartName]

	local individualBodyPartSchema = {
		ClassName = "MeshPart",
		Name = subPartName,
		_children = {
			{
				Name = "AvatarPartScaleType",
				ClassName = "StringValue",
			},
			{
				Name = subPartName,
				ClassName = "WrapTarget",
			},
			{
				Name = "SurfaceAppearance",
				ClassName = "SurfaceAppearance",
			},
		},
	}

	table.insert(individualBodyPartSchema._children, {
		Name = validationData.rigAttachmentToParentName,
		ClassName = "Attachment",
	})

	for attachmentName in pairs(validationData.otherAttachments) do
		table.insert(individualBodyPartSchema._children, {
			Name = attachmentName,
			ClassName = "Attachment",
		})
	end
	return individualBodyPartSchema
end

return createIndividualBodyPartSchema
