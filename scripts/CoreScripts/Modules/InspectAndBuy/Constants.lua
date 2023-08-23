--!nonstrict

local Constants = {
	NotificationKeys = {
		MultipleBundleNoticeKey = "InGame.InspectMenu.Description.MultipleBundlesNotice",
		SingleBundleNoticeKey = "InGame.InspectMenu.Description.SingleBundleNotice",
		LimitedItemNoticeKey = "InGame.InspectMenu.Description.LimitedNotice",
		LayeredClothingOnR6Key = "InGame.InspectMenu.Description.LayeredClothingR6",
	},

	ItemType = {
		Asset = "Asset",
		Bundle = "Bundle",
	},

	View = {
		Compact = 0,
		Wide = 1,
		WideLandscape = 2,
	},

	AssetTypeIdStringToHumanoidDescriptionProp = {
		[tostring(Enum.AssetType.TShirt.Value)]  = "GraphicTShirt",
		[tostring(Enum.AssetType.Hat.Value)]  = "HatAccessory",
		[tostring(Enum.AssetType.Shirt.Value)] = "Shirt",
		[tostring(Enum.AssetType.Pants.Value)] = "Pants",
		[tostring(Enum.AssetType.Head.Value)] = "Head",
		[tostring(Enum.AssetType.Face.Value)] = "Face",
		[tostring(Enum.AssetType.Torso.Value)] = "Torso",
		[tostring(Enum.AssetType.RightArm.Value)] = "RightArm",
		[tostring(Enum.AssetType.LeftArm.Value)] = "LeftArm",
		[tostring(Enum.AssetType.LeftLeg.Value)] = "LeftLeg",
		[tostring(Enum.AssetType.RightLeg.Value)] = "RightLeg",
		[tostring(Enum.AssetType.HairAccessory.Value)] = "HairAccessory",
		[tostring(Enum.AssetType.FaceAccessory.Value)] = "FaceAccessory",
		[tostring(Enum.AssetType.NeckAccessory.Value)] = "NeckAccessory",
		[tostring(Enum.AssetType.ShoulderAccessory.Value)] = "ShouldersAccessory",
		[tostring(Enum.AssetType.FrontAccessory.Value)] = "FrontAccessory",
		[tostring(Enum.AssetType.BackAccessory.Value)] = "BackAccessory",
		[tostring(Enum.AssetType.WaistAccessory.Value)] = "WaistAccessory",
		[tostring(Enum.AssetType.ClimbAnimation.Value)] = "ClimbAnimation",
		[tostring(Enum.AssetType.FallAnimation.Value)] = "FallAnimation",
		[tostring(Enum.AssetType.IdleAnimation.Value)] = "IdleAnimation",
		[tostring(Enum.AssetType.JumpAnimation.Value)] = "JumpAnimation",
		[tostring(Enum.AssetType.RunAnimation.Value)] = "RunAnimation",
		[tostring(Enum.AssetType.SwimAnimation.Value)] = "SwimAnimation",
		[tostring(Enum.AssetType.WalkAnimation.Value)] = "WalkAnimation",
		-- DynamicHead goes in the same field as a classic head.
		[tostring(Enum.AssetType.DynamicHead.Value)] = "Head",
	},

	AnimationAssetTypes = {
		["48"] = 48,
		["50"] = 50,
		["51"] = 51,
		["52"] = 52,
		["53"] = 53,
		["54"] = 54,
		["55"] = 55,
		["61"] = 61, -- Emotes
		["78"] = 78, -- MoodAnimation
	},

	AssetTypeIdToAccessoryTypeEnum = {
		[tostring(Enum.AssetType.Hat.Value)] = Enum.AccessoryType.Hat,
		[tostring(Enum.AssetType.HairAccessory.Value)] = Enum.AccessoryType.Hair,
		[tostring(Enum.AssetType.FaceAccessory.Value)] = Enum.AccessoryType.Face,
		[tostring(Enum.AssetType.NeckAccessory.Value)] = Enum.AccessoryType.Neck,
		[tostring(Enum.AssetType.ShoulderAccessory.Value)] = Enum.AccessoryType.Shoulder,
		[tostring(Enum.AssetType.FrontAccessory.Value)] = Enum.AccessoryType.Front,
		[tostring(Enum.AssetType.BackAccessory.Value)] = Enum.AccessoryType.Back,
		[tostring(Enum.AssetType.WaistAccessory.Value)] = Enum.AccessoryType.Waist,
		[tostring(Enum.AssetType.TShirtAccessory.Value)] = Enum.AccessoryType.TShirt,
		[tostring(Enum.AssetType.ShirtAccessory.Value)] = Enum.AccessoryType.Shirt,
		[tostring(Enum.AssetType.PantsAccessory.Value)] = Enum.AccessoryType.Pants,
		[tostring(Enum.AssetType.JacketAccessory.Value)] = Enum.AccessoryType.Jacket,
		[tostring(Enum.AssetType.SweaterAccessory.Value)] = Enum.AccessoryType.Sweater,
		[tostring(Enum.AssetType.ShortsAccessory.Value)] = Enum.AccessoryType.Shorts,
		[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = Enum.AccessoryType.LeftShoe,
		[tostring(Enum.AssetType.RightShoeAccessory.Value)] = Enum.AccessoryType.RightShoe,
		[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = Enum.AccessoryType.DressSkirt,
		[tostring(Enum.AssetType.EyebrowAccessory.Value)] = Enum.AccessoryType.Eyebrow,
		[tostring(Enum.AssetType.EyelashAccessory.Value)] = Enum.AccessoryType.Eyelash,
	},

	LayeredAssetTypes = {
		[tostring(Enum.AssetType.TShirtAccessory.Value)] = Enum.AccessoryType.TShirt,
		[tostring(Enum.AssetType.ShirtAccessory.Value)] = Enum.AccessoryType.Shirt,
		[tostring(Enum.AssetType.PantsAccessory.Value)] = Enum.AccessoryType.Pants,
		[tostring(Enum.AssetType.JacketAccessory.Value)] = Enum.AccessoryType.Jacket,
		[tostring(Enum.AssetType.SweaterAccessory.Value)] = Enum.AccessoryType.Sweater,
		[tostring(Enum.AssetType.ShortsAccessory.Value)] = Enum.AccessoryType.Shorts,
		[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = Enum.AccessoryType.LeftShoe,
		[tostring(Enum.AssetType.RightShoeAccessory.Value)] = Enum.AccessoryType.RightShoe,
		[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = Enum.AccessoryType.DressSkirt,
		[tostring(Enum.AssetType.HairAccessory.Value)] = Enum.AccessoryType.Hair,
		[tostring(Enum.AssetType.EyebrowAccessory.Value)] = Enum.AccessoryType.Eyebrow,
		[tostring(Enum.AssetType.EyelashAccessory.Value)] = Enum.AccessoryType.Eyelash,
	},

	AssetCategory = {
		Tops = "Tops",
		Bottoms = "Bottoms",
	},
}

-- AVBURST-9497 TODO Remove when Mood/DynamicHead Enum are in the engine
Constants.MoodAnimationAssetTypeId = "78"
Constants.DynamicHeadAssetTypeId = "79"

Constants.DetailsThumbnailFrameHeight = 250

Constants.DynamicHeadAssetTypes = {
	[tostring(Enum.AssetType.EyebrowAccessory.Value)] = true,
	[tostring(Enum.AssetType.EyelashAccessory.Value)] = true,
	[Constants.MoodAnimationAssetTypeId] = true,
	[Constants.DynamicHeadAssetTypeId] = true,
}

Constants.AccessoryTypeEnumToAssetTypeId = {}
for assetTypeId, accessoryTypeEnum in pairs(Constants.AssetTypeIdToAccessoryTypeEnum) do
	Constants.AccessoryTypeEnumToAssetTypeId[accessoryTypeEnum] = assetTypeId
end

Constants.AssetCategoryToAssetType = {
	[Constants.AssetCategory.Tops] = {
		tostring(Enum.AssetType.ShirtAccessory.Value),
		tostring(Enum.AssetType.TShirtAccessory.Value),
		tostring(Enum.AssetType.SweaterAccessory.Value),
	},

	[Constants.AssetCategory.Bottoms] = {
		tostring(Enum.AssetType.PantsAccessory.Value),
		tostring(Enum.AssetType.ShortsAccessory.Value),
		tostring(Enum.AssetType.DressSkirtAccessory.Value),
	},
}

Constants.AssetTypeToAssetCategory = {}
for assetCategory, assetTypes in pairs(Constants.AssetCategoryToAssetType) do
	for _, assetType in ipairs(assetTypes) do
		Constants.AssetTypeToAssetCategory[assetType] = assetCategory
	end
end

Constants.LayeredClothingOrder = {
	[tostring(Enum.AssetType.Pants.Value)] = 0, -- Classic Pants
	[tostring(Enum.AssetType.Shirt.Value)] = 1, -- Classic Shirt
	[tostring(Enum.AssetType.TShirt.Value)] = 2, -- Classic TShirt
	[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = 3,
	[tostring(Enum.AssetType.RightShoeAccessory.Value)] = 3,
	[tostring(Enum.AssetType.PantsAccessory.Value)] = 4, -- Layered Pants
	[tostring(Enum.AssetType.ShortsAccessory.Value)] = 5,
	[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = 6,
	[tostring(Enum.AssetType.TShirtAccessory.Value)] = 7, -- Layered TShirt
	[tostring(Enum.AssetType.ShirtAccessory.Value)] = 8, -- Layered Shirt
	[tostring(Enum.AssetType.SweaterAccessory.Value)] = 9,
	[tostring(Enum.AssetType.JacketAccessory.Value)] = 10,
	[tostring(Enum.AssetType.HairAccessory.Value)] = 11,
	[tostring(Enum.AssetType.EyebrowAccessory.Value)] = 3,
	[tostring(Enum.AssetType.EyelashAccessory.Value)] = 3,
}

Constants.ProductType = {
	CollectibleItem = "Collectible Item",
}

Constants.SaleLocationType = {
	Invalid = 0,
	ShopOnly = 1,
	MyExperiencesOnly = 2,
	ShopAndMyExperiences = 3,
	ExperiencesById = 4,
	ShopAndAllExperiences = 5,
	ExperiencesDevApiOnly = 6,
}

return Constants
