--!nonstrict

local FFlagInspectAndBuyDynamicHeads = require(script.Parent.Flags.FFlagInspectAndBuyDynamicHeads)

local Constants = {
	NotificationKeys = {
		MultipleBundleNoticeKey = "InGame.InspectMenu.Description.MultipleBundlesNotice",
		SingleBundleNoticeKey = "InGame.InspectMenu.Description.SingleBundleNotice",
		LimitedItemNoticeKey = "InGame.InspectMenu.Description.LimitedNotice",
		LayeredClothingOnR6Key = "InGame.InspectMenu.Description.LayeredClothingR6"
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

	HumanoidDescriptionIdToName = {
		["2"]  = "GraphicTShirt",
		["8"]  = "HatAccessory",
		["41"] = "HairAccessory",
		["42"] = "FaceAccessory",
		["43"] = "NeckAccessory",
		["44"] = "ShouldersAccessory",
		["45"] = "FrontAccessory",
		["46"] = "BackAccessory",
		["47"] = "WaistAccessory",
		["11"] = "Shirt",
		["12"] = "Pants",
		["17"] = "Head",
		-- DynamicHead goes in the same field as a classic head.
		["79"] = if FFlagInspectAndBuyDynamicHeads then "Head" else nil,
		["18"] = "Face",
		["27"] = "Torso",
		["28"] = "RightArm",
		["29"] = "LeftArm",
		["30"] = "LeftLeg",
		["31"] = "RightLeg",
		["48"] = "ClimbAnimation",
		["50"] = "FallAnimation",
		["51"] = "IdleAnimation",
		["52"] = "JumpAnimation",
		["53"] = "RunAnimation",
		["54"] = "SwimAnimation",
		["55"] = "WalkAnimation",
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
		["78"] = if FFlagInspectAndBuyDynamicHeads then 78 else nil, -- MoodAnimation
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
		[tostring(Enum.AssetType.EyebrowAccessory.Value)] =
			if FFlagInspectAndBuyDynamicHeads then Enum.AccessoryType.Eyebrow else nil,
		[tostring(Enum.AssetType.EyelashAccessory.Value)] =
			if FFlagInspectAndBuyDynamicHeads then Enum.AccessoryType.Eyelash else nil,
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
		[tostring(Enum.AssetType.EyebrowAccessory.Value)] =
			if FFlagInspectAndBuyDynamicHeads then Enum.AccessoryType.Eyebrow else nil,
		[tostring(Enum.AssetType.EyelashAccessory.Value)] =
			if FFlagInspectAndBuyDynamicHeads then Enum.AccessoryType.Eyelash else nil,
	},

	AssetCategory = {
		Tops = "Tops",
		Bottoms = "Bottoms"
	}
}

-- AVBURST-9497 TODO Remove when Mood/DynamicHead Enum are in the engine
Constants.MoodAnimationAssetTypeId = "78"
Constants.DynamicHeadAssetTypeId = "79"

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
	[tostring(Enum.AssetType.EyebrowAccessory.Value)] = if FFlagInspectAndBuyDynamicHeads then 3 else nil,
	[tostring(Enum.AssetType.EyelashAccessory.Value)] = if FFlagInspectAndBuyDynamicHeads then 3 else nil,
}

return Constants
