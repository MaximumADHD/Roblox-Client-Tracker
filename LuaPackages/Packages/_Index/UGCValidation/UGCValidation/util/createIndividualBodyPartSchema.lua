--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local function createIndividualBodyPartSchema(assetTypeEnum: Enum.AssetType, subPartName: string)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	local validationData = assetInfo.subParts[subPartName]

	local individualBodyPartSchema = {
		ClassName = "MeshPart",
		Name = { subPartName },
		_children = {
			{
				Name = { "AvatarPartScaleType" },
				ClassName = "StringValue",
			},
			{
				Name = { subPartName, subPartName .. "WrapTarget", "WrapTarget" },
				ClassName = "WrapTarget",
			},
			{
				Name = { "SurfaceAppearance" },
				ClassName = "SurfaceAppearance",
				_optional = true,
			},
		},
	}

	table.insert(individualBodyPartSchema._children, {
		Name = { validationData.rigAttachmentToParent.name },
		ClassName = "Attachment",
	})

	for attachmentName in pairs(validationData.otherAttachments) do
		table.insert(individualBodyPartSchema._children, {
			Name = { attachmentName },
			ClassName = "Attachment",
		})
	end
	return individualBodyPartSchema
end

return createIndividualBodyPartSchema
