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

	AssetCategories = {
		Animation = "Animation",
		Body = "Body",
		Clothing = "Clothing",
		Accessory = "Accessory",
		Emotes = "Emotes",
	},

	AssetTypeIdStringToHumanoidDescriptionProp = {
		[tostring(Enum.AssetType.TShirt.Value)] = "GraphicTShirt",
		[tostring(Enum.AssetType.Hat.Value)] = "HatAccessory",
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

Constants.AssetTypeIdToCategory = {
	[tostring(Enum.AssetType.TShirt.Value)] = Constants.AssetCategories.Clothing,
	[tostring(Enum.AssetType.Hat.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.HairAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.FaceAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.NeckAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.ShoulderAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.FrontAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.BackAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.WaistAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.Shirt.Value)] = Constants.AssetCategories.Clothing,
	[tostring(Enum.AssetType.Pants.Value)] = Constants.AssetCategories.Clothing,
	[tostring(Enum.AssetType.Gear.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.Head.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.Face.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.Torso.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.RightArm.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.LeftArm.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.LeftLeg.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.RightLeg.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.ClimbAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.FallAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.IdleAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.JumpAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.RunAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.SwimAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.WalkAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.EmoteAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.TShirtAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.ShirtAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.PantsAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.JacketAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.SweaterAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.ShortsAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.RightShoeAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.EyelashAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.EyebrowAccessory.Value)] = Constants.AssetCategories.Accessory,
	[tostring(Enum.AssetType.MoodAnimation.Value)] = Constants.AssetCategories.Animation,
	[tostring(Enum.AssetType.DynamicHead.Value)] = Constants.AssetCategories.Body,
}

Constants.AssetCategoriesLocalized = {
	[Constants.AssetCategories.Animation] = "Feature.Catalog.Label.Animation",
	[Constants.AssetCategories.Body] = "Feature.Catalog.Label.Body",
	[Constants.AssetCategories.Clothing] = "Feature.Avatar.Heading.Clothing",
	[Constants.AssetCategories.Accessory] = "Feature.Avatar.Label.Accessory",
	[Constants.AssetCategories.Emotes] = "Feature.Catalog.Label.Emotes",
}

Constants.AssetTypeIdToTypeLocalized = {
	[tostring(Enum.AssetType.TShirt.Value)] = "Feature.Avatar.Label.ClassicTShirts",
	[tostring(Enum.AssetType.Hat.Value)] = "Feature.Avatar.Label.Hat",
	[tostring(Enum.AssetType.HairAccessory.Value)] = "Feature.Avatar.Label.Hair",
	[tostring(Enum.AssetType.FaceAccessory.Value)] = "Feature.Avatar.Label.Face",
	[tostring(Enum.AssetType.NeckAccessory.Value)] = "Feature.Avatar.Label.Neck",
	[tostring(Enum.AssetType.ShoulderAccessory.Value)] = "Feature.Avatar.Label.Shoulder",
	[tostring(Enum.AssetType.FrontAccessory.Value)] = "Feature.Avatar.Label.Front",
	[tostring(Enum.AssetType.BackAccessory.Value)] = "Feature.Avatar.Label.Back",
	[tostring(Enum.AssetType.WaistAccessory.Value)] = "Feature.Avatar.Label.Waist",
	[tostring(Enum.AssetType.Shirt.Value)] = "Feature.Avatar.Label.ClassicShirts",
	[tostring(Enum.AssetType.Pants.Value)] = "Feature.Avatar.Label.ClassicPants",
	[tostring(Enum.AssetType.Gear.Value)] = "Feature.Avatar.Label.Gear",
	[tostring(Enum.AssetType.Head.Value)] = "Feature.Avatar.Label.Head",
	[tostring(Enum.AssetType.Face.Value)] = "Feature.Avatar.Label.Face",
	[tostring(Enum.AssetType.Torso.Value)] = "Feature.Avatar.Label.Torso",
	[tostring(Enum.AssetType.RightArm.Value)] = "Feature.Avatar.Label.RightArms",
	[tostring(Enum.AssetType.LeftArm.Value)] = "Feature.Avatar.Label.LeftArms",
	[tostring(Enum.AssetType.LeftLeg.Value)] = "Feature.Avatar.Label.LeftLegs",
	[tostring(Enum.AssetType.RightLeg.Value)] = "Feature.Avatar.Label.RightLegs",
	[tostring(Enum.AssetType.ClimbAnimation.Value)] = "Feature.Avatar.Label.Climb",
	[tostring(Enum.AssetType.FallAnimation.Value)] = "Feature.Avatar.Label.Fall",
	[tostring(Enum.AssetType.IdleAnimation.Value)] = "Feature.Avatar.Label.Idle",
	[tostring(Enum.AssetType.JumpAnimation.Value)] = "Feature.Avatar.Label.Jump",
	[tostring(Enum.AssetType.RunAnimation.Value)] = "Feature.Avatar.Label.Run",
	[tostring(Enum.AssetType.SwimAnimation.Value)] = "Feature.Avatar.Label.Swim",
	[tostring(Enum.AssetType.WalkAnimation.Value)] = "Feature.Avatar.Label.Walk",
	[tostring(Enum.AssetType.EmoteAnimation.Value)] = "Feature.Avatar.Label.Emote",
	[tostring(Enum.AssetType.TShirtAccessory.Value)] = "Feature.Avatar.Label.TShirt",
	[tostring(Enum.AssetType.ShirtAccessory.Value)] = "Feature.Avatar.Label.Shirt",
	[tostring(Enum.AssetType.PantsAccessory.Value)] = "Feature.Avatar.Label.Pants",
	[tostring(Enum.AssetType.JacketAccessory.Value)] = "Feature.Avatar.Label.Jacket",
	[tostring(Enum.AssetType.SweaterAccessory.Value)] = "Feature.Avatar.Label.Sweater",
	[tostring(Enum.AssetType.ShortsAccessory.Value)] = "Feature.Avatar.Label.Shorts",
	[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = "Feature.Avatar.Label.LeftShoe",
	[tostring(Enum.AssetType.RightShoeAccessory.Value)] = "Feature.Avatar.Label.RightShoe",
	[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = "Feature.Avatar.Label.DressesAndSkirts",
	[tostring(Enum.AssetType.EyelashAccessory.Value)] = "Feature.Catalog.Label.Eyelash",
	[tostring(Enum.AssetType.EyebrowAccessory.Value)] = "Feature.Catalog.Label.Eyebrow",
	[tostring(Enum.AssetType.MoodAnimation.Value)] = "Feature.Avatar.Label.Mood",
	[tostring(Enum.AssetType.DynamicHead.Value)] = "Feature.Avatar.Label.DynamicHead",
}

-- AVBURST-9497 TODO Remove when Mood/DynamicHead Enum are in the engine
Constants.MoodAnimationAssetTypeId = "78"
Constants.DynamicHeadAssetTypeId = "79"

Constants.DetailsThumbnailFrameHeight = 250

Constants.LimitedIconFrameSizeXOffset = 9
Constants.LimitedIconFrameSizeYOffset = 4

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

Constants.ItemRestrictions = {
	Limited = "Limited",
	LimitedUnique = "LimitedUnique",
	Collectible = "Collectible",
}

Constants.SaleStatus = {
	OnSale = "OnSale",
}

Constants.SaleLocationType = {
	Invalid = 0,
	ShopOnly = 1,
	MyExperiencesOnly = 2,
	ShopAndMyExperiences = 3,
	ExperiencesById = 4,
	ShopAndAllExperiences = 5,
	ExperiencesDevApiOnly = 6,
	ShopAndExperiencesById = 7,
}

Constants.CounterSuffix = {
	RequestSucceeded = "RequestSucceeded",
	RequestRejected = "RequestRejected",
	RequestFailed = "RequestFailed",
}
Constants.Counters = {
	CreateFavoriteForAsset = "CreateFavoriteForAsset",
	CreateFavoriteForBundle = "CreateFavoriteForBundle",
	DeleteFavoriteForAsset = "DeleteFavoriteForAsset",
	DeleteFavoriteForBundle = "DeleteFavoriteForBundle",
	GetAssetBundles = "GetAssetBundles",
	GetAssetFavoriteCount = "GetAssetFavoriteCount",
	GetBundleFavoriteCount = "GetBundleFavoriteCount",
	GetCharacterModelFromUserId = "GetCharacterModelFromUserId",

	GetCollectibleResellableInstances = "GetCollectibleResellableInstances",
	GetCollectibleResellableInstancesRequestSucceededWithoutResult = "GetCollectibleResellableInstancesRequestSucceededWithoutResult",

	GetEconomyProductInfo = "GetEconomyV1DeprecatedProductInfo",
	GetExperienceInfo = "GetExperienceInfo",
	GetExperiencePlayability = "GetExperiencePlayability",
	GetFavoriteForAsset = "GetFavoriteForAsset",
	GetFavoriteForBundle = "GetFavoriteForBundle",

	GetItemDetails = "GetItemDetails",
	GetItemDetailsRespondedWithUnknownItemType = "GetItemDetailsRespondedWithUnknownItemType",

	GetPlayerName = "GetPlayerName",
	GetProductInfo = "MarketplaceServiceGetProductInfo",
	GetVersionInfo = "GetVersionInfo",

	PromptLimitedCollectiblesPurchase = "PromptLimitedCollectiblesPurchase",
	PromptBundlePurchase = "PromptBundlePurchase",
	PromptUnlimitedCollectiblePurchase = "PromptUnlimitedCollectiblePurchase",
	PromptRobloxPurchase = "PromptRobloxPurchase",
	PromptPurchaseUnknownItemType = "PromptPurchaseUnknownItemType",

	PurchaseSucceededBundle = "PurchaseSucceededBundle",
	PurchaseSucceededAsset = "PurchaseSucceededAsset",
	PurchaseSucceededOther = "PurchaseSucceededOther",
	PurchaseFinished = "PurchaseFinished",

	ItemDetailPageOpened = "ItemDetailPageOpened",
	TryOnButtonClicked = "TryOnButtonClicked",
	GetAvatarPreview = "GetAvatarPreview",
	BatchGetAssets = "BatchGetAssets",
	BatchGetItemDetails = "BatchGetItemDetails",
}
return Constants
