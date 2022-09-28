local Constants = {
	BUTTON_HEIGHT = 48,
	BOTTOM_BAR_PADDING = 24,

	HumanoidDescriptionIdToName = {
		[tostring(Enum.AssetType.TShirt.Value)]  = "GraphicTShirt",
		[tostring(Enum.AssetType.Hat.Value)]  = "HatAccessory",
		[tostring(Enum.AssetType.HairAccessory.Value)] = "HairAccessory",
		[tostring(Enum.AssetType.FaceAccessory.Value)] = "FaceAccessory",
		[tostring(Enum.AssetType.NeckAccessory.Value)] = "NeckAccessory",
		[tostring(Enum.AssetType.ShoulderAccessory.Value)] = "ShouldersAccessory",
		[tostring(Enum.AssetType.FrontAccessory.Value)] = "FrontAccessory",
		[tostring(Enum.AssetType.BackAccessory.Value)] = "BackAccessory",
		[tostring(Enum.AssetType.WaistAccessory.Value)] = "WaistAccessory",
		[tostring(Enum.AssetType.Shirt.Value)] = "Shirt",
		[tostring(Enum.AssetType.Pants.Value)] = "Pants",
		[tostring(Enum.AssetType.Head.Value)] = "Head",
		[tostring(Enum.AssetType.Face.Value)] = "Face",
		[tostring(Enum.AssetType.Torso.Value)] = "Torso",
		[tostring(Enum.AssetType.RightArm.Value)] = "RightArm",
		[tostring(Enum.AssetType.LeftArm.Value)] = "LeftArm",
		[tostring(Enum.AssetType.LeftLeg.Value)] = "LeftLeg",
		[tostring(Enum.AssetType.RightLeg.Value)] = "RightLeg",
		[tostring(Enum.AssetType.ClimbAnimation.Value)] = "ClimbAnimation",
		[tostring(Enum.AssetType.FallAnimation.Value)] = "FallAnimation",
		[tostring(Enum.AssetType.IdleAnimation.Value)] = "IdleAnimation",
		[tostring(Enum.AssetType.JumpAnimation.Value)] = "JumpAnimation",
		[tostring(Enum.AssetType.RunAnimation.Value)] = "RunAnimation",
		[tostring(Enum.AssetType.SwimAnimation.Value)] = "SwimAnimation",
		[tostring(Enum.AssetType.WalkAnimation.Value)] = "WalkAnimation",
	},

	BundleTypeAsString = {
		Animations = "Animations",
		AvatarAnimations = "AvatarAnimations",
		BodyParts = "BodyParts",
		Shoes = "Shoes",
		DynamicHeads = "DynamicHeads",
	},

	AssetCategories = {
		Animation = "Animation",
		Body = "Body",
		Clothing = "Clothing",
		Accessory = "Accessory",
		Emotes = "Emotes",
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
	},

	GradientBackgroundAssetTypeIds = {
		[tostring(Enum.AssetType.TShirtAccessory.Value)] = true,
		[tostring(Enum.AssetType.ShirtAccessory.Value)] = true,
		[tostring(Enum.AssetType.PantsAccessory.Value)] = true,
		[tostring(Enum.AssetType.JacketAccessory.Value)] = true,
		[tostring(Enum.AssetType.SweaterAccessory.Value)] = true,
		[tostring(Enum.AssetType.ShortsAccessory.Value)] = true,
		[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = true,
		[tostring(Enum.AssetType.RightShoeAccessory.Value)] = true,
		[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = true,
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
	},

	AssetCategory = {
		Tops = "Tops",
		Bottoms = "Bottoms"
	}
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
	[tostring(Enum.AssetType.RightLeg.Value)] = Constants.AssetCategories.Body,
	[tostring(Enum.AssetType.LeftLeg.Value)] = Constants.AssetCategories.Body,
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

--[[
	This is the default order the Layered Clothing
	will be displayed on in the body with a lower value
	indicating an accessory appearing underneath while a
	higher value indicating an accessory appearing overtop
]]
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
}

Constants.AssetCategoriesLocalized = {
	[Constants.AssetCategories.Animation] = "CoreScripts.InGameMenu.Label.Animation",
	[Constants.AssetCategories.Body] = "CoreScripts.InGameMenu.Label.Body",
	[Constants.AssetCategories.Clothing] = "CoreScripts.InGameMenu.Label.Clothing",
	[Constants.AssetCategories.Accessory] = "CoreScripts.InGameMenu.Label.Accessory",
	[Constants.AssetCategories.Emotes] = "CoreScripts.InGameMenu.Label.Emotes",
}

Constants.AssetTypeLocalized = {
	[tostring(Enum.AssetType.TShirt.Value)] = "CoreScripts.InGameMenu.Label.ClassicTShirts",
	[tostring(Enum.AssetType.Hat.Value)] = "CoreScripts.InGameMenu.Label.Hat",
	[tostring(Enum.AssetType.HairAccessory.Value)] = "CoreScripts.InGameMenu.Label.Hair",
	[tostring(Enum.AssetType.FaceAccessory.Value)] = "CoreScripts.InGameMenu.Label.Face",
	[tostring(Enum.AssetType.NeckAccessory.Value)] = "CoreScripts.InGameMenu.Label.Neck",
	[tostring(Enum.AssetType.ShoulderAccessory.Value)] = "CoreScripts.InGameMenu.Label.Shoulder",
	[tostring(Enum.AssetType.FrontAccessory.Value)] = "CoreScripts.InGameMenu.Label.Front",
	[tostring(Enum.AssetType.BackAccessory.Value)] = "CoreScripts.InGameMenu.Label.Back",
	[tostring(Enum.AssetType.WaistAccessory.Value)] = "CoreScripts.InGameMenu.Label.Waist",
	[tostring(Enum.AssetType.ShirtAccessory.Value)] = "CoreScripts.InGameMenu.Label.ClassicShirts",
	[tostring(Enum.AssetType.PantsAccessory.Value)] = "CoreScripts.InGameMenu.Label.ClassicPants",
	[tostring(Enum.AssetType.Gear.Value)] = "CoreScripts.InGameMenu.Label.Gear",
	[tostring(Enum.AssetType.Head.Value)] = "CoreScripts.InGameMenu.Label.Head",
	[tostring(Enum.AssetType.Face.Value)] = "CoreScripts.InGameMenu.Label.Face",
	[tostring(Enum.AssetType.Torso.Value)] = "CoreScripts.InGameMenu.Label.Torso",
	[tostring(Enum.AssetType.RightArm.Value)] = "CoreScripts.InGameMenu.Label.RightArms",
	[tostring(Enum.AssetType.LeftArm.Value)] = "CoreScripts.InGameMenu.Label.LeftArms",
	[tostring(Enum.AssetType.LeftLeg.Value)] = "CoreScripts.InGameMenu.Label.LeftLegs",
	[tostring(Enum.AssetType.RightLeg.Value)] = "CoreScripts.InGameMenu.Label.RightLegs",
	[tostring(Enum.AssetType.ClimbAnimation.Value)] = "CoreScripts.InGameMenu.Label.Climb",
	[tostring(Enum.AssetType.FallAnimation.Value)] = "CoreScripts.InGameMenu.Label.Fall",
	[tostring(Enum.AssetType.IdleAnimation.Value)] = "CoreScripts.InGameMenu.Label.Idle",
	[tostring(Enum.AssetType.JumpAnimation.Value)] = "CoreScripts.InGameMenu.Label.Jump",
	[tostring(Enum.AssetType.RunAnimation.Value)] = "CoreScripts.InGameMenu.Label.Run",
	[tostring(Enum.AssetType.SwimAnimation.Value)] = "CoreScripts.InGameMenu.Label.Swim",
	[tostring(Enum.AssetType.WalkAnimation.Value)] = "CoreScripts.InGameMenu.Label.Walk",
	[tostring(Enum.AssetType.EmoteAnimation.Value)] = "CoreScripts.InGameMenu.Label.Emote",
	[tostring(Enum.AssetType.TShirtAccessory.Value)] = "CoreScripts.InGameMenu.Label.TShirt",
	[tostring(Enum.AssetType.ShirtAccessory.Value)] = "CoreScripts.InGameMenu.Label.Shirt",
	[tostring(Enum.AssetType.PantsAccessory.Value)] = "CoreScripts.InGameMenu.Label.Pants",
	[tostring(Enum.AssetType.JacketAccessory.Value)] = "CoreScripts.InGameMenu.Label.Jacket",
	[tostring(Enum.AssetType.SweaterAccessory.Value)] = "CoreScripts.InGameMenu.Label.Sweater",
	[tostring(Enum.AssetType.ShortsAccessory.Value)] = "CoreScripts.InGameMenu.Label.Shorts",
	[tostring(Enum.AssetType.LeftShoeAccessory.Value)] = "CoreScripts.InGameMenu.Label.LeftShoe",
	[tostring(Enum.AssetType.RightShoeAccessory.Value)] = "CoreScripts.InGameMenu.Label.RightShoe",
	[tostring(Enum.AssetType.DressSkirtAccessory.Value)] = "CoreScripts.InGameMenu.Label.DressesAndSkirts",
}

return Constants