--!nonstrict
local root = script.Parent.Parent

local getFFlagMeshPartAccessoryPBRSupport = require(root.flags.getFFlagMeshPartAccessoryPBRSupport)

local function createMeshPartAccessorySchema(attachmentName)
	assert(attachmentName, "attachmentName cannot be nil")
	if getFFlagMeshPartAccessoryPBRSupport() then
		return {
			ClassName = "Accessory",
			_children = {
				{
					Name = "ThumbnailConfiguration",
					ClassName = "Configuration",
					_optional = true,
					_children = {
						{
							Name = "ThumbnailCameraTarget",
							ClassName = "ObjectValue",
						},
						{
							Name = "ThumbnailCameraValue",
							ClassName = "CFrameValue",
						},
					},
				},
				{
					Name = "Handle",
					ClassName = "MeshPart",
					_children = {
						{
							Name = attachmentName,
							ClassName = "Attachment",
						},
						{
							ClassName = "SurfaceAppearance",
							Name = "SurfaceAppearance",
							_optional = true,
						},
						{
							ClassName = "StringValue",
							Name = "AvatarPartScaleType",
							_optional = true,
						},
						{
							ClassName = "TouchTransmitter",
							Name = "TouchInterest",
							_optional = true,
						},
					},
				},
			},
		}
	else
		return {
			ClassName = "Accessory",
			_children = {
				{
					Name = "ThumbnailConfiguration",
					ClassName = "Configuration",
					_optional = true,
					_children = {
						{
							Name = "ThumbnailCameraTarget",
							ClassName = "ObjectValue",
						},
						{
							Name = "ThumbnailCameraValue",
							ClassName = "CFrameValue",
						},
					},
				},
				{
					Name = "Handle",
					ClassName = "MeshPart",
					_children = {
						{
							Name = attachmentName,
							ClassName = "Attachment",
						},
						{
							ClassName = "StringValue",
							Name = "AvatarPartScaleType",
							_optional = true,
						},
						{
							ClassName = "TouchTransmitter",
							Name = "TouchInterest",
							_optional = true,
						},
					},
				},
			},
		}
	end
end

return createMeshPartAccessorySchema
