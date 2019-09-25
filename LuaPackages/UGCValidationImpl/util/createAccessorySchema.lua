local function createAccessorySchema(attachmentName)
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
						ClassName = "Vector3Value",
						Name = "OriginalSize",
						_optional = true,
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
				}
			},
		},
	}
end

return createAccessorySchema