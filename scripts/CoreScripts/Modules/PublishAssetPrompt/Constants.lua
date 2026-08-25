local Constants = {
	PromptSidePadding = 24,
	ViewportLightColor = Color3.fromRGB(240, 240, 240),
	ViewportLightAmbient = Color3.fromRGB(160, 160, 160),
	ViewportLightDirection = Vector3.new(9.5, -12, 7.5),
	ItemCardWidthLandscape = 150,
	ItemCardWidthPortrait = 100,
}

Constants.AvatarAssetTypeDefaultName = {
	[Enum.AvatarAssetType.Hat] = "Hat",
	[Enum.AvatarAssetType.FaceAccessory] = "Face Accessory",
	[Enum.AvatarAssetType.NeckAccessory] = "Neck Accessory",
	[Enum.AvatarAssetType.ShoulderAccessory] = "Shoulder Accessory",
	[Enum.AvatarAssetType.FrontAccessory] = "Front Accessory",
	[Enum.AvatarAssetType.BackAccessory] = "Back Accessory",
	[Enum.AvatarAssetType.WaistAccessory] = "Waist Accessory",
	[Enum.AvatarAssetType.TShirtAccessory] = "T-Shirt",
	[Enum.AvatarAssetType.ShirtAccessory] = "Shirt",
	[Enum.AvatarAssetType.PantsAccessory] = "Pants",
	[Enum.AvatarAssetType.JacketAccessory] = "Jacket",
	[Enum.AvatarAssetType.SweaterAccessory] = "Sweater",
	[Enum.AvatarAssetType.ShortsAccessory] = "Shorts",
	[Enum.AvatarAssetType.DressSkirtAccessory] = "Dress/Skirt",
	[Enum.AvatarAssetType.HairAccessory] = "Hair",
	[Enum.AvatarAssetType.EyeMakeup] = "Eye Makeup",
	[Enum.AvatarAssetType.FaceMakeup] = "Face Makeup",
	[Enum.AvatarAssetType.LipMakeup] = "Lip Makeup",
	[Enum.AvatarAssetType.EyebrowAccessory] = "Eyebrow",
	[Enum.AvatarAssetType.EyelashAccessory] = "Eyelash",
}

Constants.AvatarAssetTypeLocalized = {
	[Enum.AvatarAssetType.Hat] = "Feature.Avatar.Label.Hat",
	[Enum.AvatarAssetType.FaceAccessory] = "Feature.Avatar.Label.Face",
	[Enum.AvatarAssetType.NeckAccessory] = "Feature.Avatar.Label.Neck",
	[Enum.AvatarAssetType.ShoulderAccessory] = "Feature.Avatar.Label.Shoulder",
	[Enum.AvatarAssetType.FrontAccessory] = "Feature.Avatar.Label.Front",
	[Enum.AvatarAssetType.BackAccessory] = "Feature.Avatar.Label.Back",
	[Enum.AvatarAssetType.WaistAccessory] = "Feature.Avatar.Label.Waist",
	[Enum.AvatarAssetType.TShirtAccessory] = "Feature.Avatar.Label.TShirt",
	[Enum.AvatarAssetType.ShirtAccessory] = "Feature.Avatar.Label.Shirt",
	[Enum.AvatarAssetType.PantsAccessory] = "Feature.Avatar.Label.Pants",
	[Enum.AvatarAssetType.JacketAccessory] = "Feature.Avatar.Label.Jacket",
	[Enum.AvatarAssetType.SweaterAccessory] = "Feature.Avatar.Label.Sweater",
	[Enum.AvatarAssetType.ShortsAccessory] = "Feature.Avatar.Label.Shorts",
	[Enum.AvatarAssetType.DressSkirtAccessory] = "Feature.Avatar.Label.DressesAndSkirts",
	[Enum.AvatarAssetType.HairAccessory] = "Feature.Avatar.Label.Hair",
	[Enum.AvatarAssetType.EyeMakeup] = "Feature.Avatar.Label.EyeMakeup",
	[Enum.AvatarAssetType.FaceMakeup] = "Feature.Avatar.Label.FaceMakeup",
	[Enum.AvatarAssetType.LipMakeup] = "Feature.Avatar.Label.LipMakeup",
	[Enum.AvatarAssetType.EyebrowAccessory] = "Feature.Avatar.Label.Eyebrows",
	[Enum.AvatarAssetType.EyelashAccessory] = "Feature.Avatar.Label.Eyelashes",
}

Constants.MakeupAssetTypes = {
	[Enum.AvatarAssetType.FaceMakeup] = true,
	[Enum.AvatarAssetType.LipMakeup] = true,
	[Enum.AvatarAssetType.EyeMakeup] = true,
	[Enum.AvatarAssetType.EyebrowAccessory] = true,
	[Enum.AvatarAssetType.EyelashAccessory] = true,
}

return Constants
