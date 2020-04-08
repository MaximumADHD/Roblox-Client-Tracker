local function createAccessorySchema(attachmentName)
	assert(attachmentName, "attachmentName cannot be nil")
	return {
		ClassName = "Accessory",
		_children = {
			{
				Name = "Handle",
				ClassName = "Part",
				_children = {
					{
						Name = attachmentName,
						ClassName = "Attachment",
					},
					{
						ClassName = "SpecialMesh",
					},
					{
						ClassName = "StringValue",
						Name = "AvatarPartScaleType",
						_optional = true,
					},
					{
						ClassName = "TouchTransmitter",
						_optional = true,
					},
					game:GetFastFlag("UGCAllowThumbnailCameraValue") and {
						Name = "ThumbnailCameraValue",
						ClassName = "CFrameValue",
						_optional = true,
					} or nil,
				}
			},
		},
	}
end

return createAccessorySchema
