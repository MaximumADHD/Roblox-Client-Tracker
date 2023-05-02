--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local function createDynamicHeadSpecialMeshSchema()
	local assetInfo = Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead]
	local validationData = assetInfo.subParts["Head"]

	local individualBodyPartSchema = {
		ClassName = "SpecialMesh",
		Name = "Mesh",
		_children = {
			{
				Name = "AvatarPartScaleType",
				ClassName = "StringValue",
			},
		},
	}

	table.insert(individualBodyPartSchema._children, {
		Name = validationData.rigAttachmentToParentName,
		ClassName = "Vector3Value",
	})

	for attachmentName in pairs(validationData.otherAttachments) do
		table.insert(individualBodyPartSchema._children, {
			Name = attachmentName,
			ClassName = "Vector3Value",
		})
	end
	return individualBodyPartSchema
end

return createDynamicHeadSpecialMeshSchema
