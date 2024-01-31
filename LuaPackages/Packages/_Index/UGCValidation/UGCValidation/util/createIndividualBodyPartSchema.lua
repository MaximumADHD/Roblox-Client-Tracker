--!strict

local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Constants = require(root.Constants)

local function createIndividualBodyPartSchema(
	assetTypeEnum: Enum.AssetType,
	subPartName: string,
	validationContext: Types.ValidationContext?
)
	local allowEditableInstances = if getFFlagUseUGCValidationContext()
			and getEngineFeatureUGCValidateEditableMeshAndImage()
			and validationContext
		then validationContext.allowEditableInstances
		else false
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
				_children = if allowEditableInstances
					then {
						{
							Name = { "EditableMesh" },
							ClassName = "EditableMesh",
							_optional = true,
						},
					}
					else nil,
			},
			{
				Name = { "SurfaceAppearance" },
				ClassName = "SurfaceAppearance",
				_optional = true,
				_children = if allowEditableInstances
					then {
						{
							Name = { "EditableImage" },
							ClassName = "EditableImage",
							_optional = true,
						},
					}
					else nil,
			},
		},
	}

	if allowEditableInstances then
		table.insert(individualBodyPartSchema._children, {
			Name = { "EditableMesh" },
			ClassName = "EditableMesh",
			_optional = true,
		})
	end

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
