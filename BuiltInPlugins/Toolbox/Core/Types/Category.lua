local FFlagUGCGroupUploads2 = game:GetFastFlag("UGCGroupUploads2")
local FFlagUGCLCAssetTypes2 = game:GetFastFlag("UGCLCAssetTypes2")

local Plugin = script.Parent.Parent.Parent
local CreatorInfoHelper = require(Plugin.Core.Util.CreatorInfoHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local getAllowedAssetTypeEnums = require(Plugin.Core.Util.getAllowedAssetTypeEnums)

local Packages = Plugin.Packages
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Cryo
if FFlagToolboxDeduplicatePackages then
	Cryo = require(Packages.Cryo)
else
	Cryo = require(Plugin.Libs.Cryo)
end

local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets
local disableMarketplaceAndRecents = require(Plugin.Core.Util.ToolboxUtilities).disableMarketplaceAndRecents
local getMarketplaceDisabledCategories = require(Plugin.Core.Util.ToolboxUtilities).getMarketplaceDisabledCategories

local Category = {}

Category.OwnershipType = {
	FREE = 0,
	MY = 1,
	RECENT = 2,
	GROUP = 3,
}

Category.AssetType = {
	MODEL = 0,
	DECAL = 1,
	MESH = 2,
	MESHPART = 3,
	AUDIO = 4,
	PACKAGE = 5,
	PLUGIN = 6,
	HAT = 7,
	TEE_SHIRT = 8,
	SHIRT = 9,
	PANTS = 10,
	HAIR_ACCESSORY = 11,
	FACE_ACCESSORY = 12,
	NECK_ACCESSORY = 13,
	SHOULDER_ACCESSORY = 14,
	FRONT_ACCESSORY = 15,
	BACK_ACCESSORY = 16,
	WAIST_ACCESSORY = 17,
	VIDEO = 18,
	ANIMATION = 19,
}

if FFlagUGCLCAssetTypes2 then
	Category.AssetType.TSHIRT_ACCESSORY = 19
	Category.AssetType.SHIRT_ACCESSORY = 20
	Category.AssetType.PANTS_ACCESSORY = 21
	Category.AssetType.JACKET_ACCESSORY = 22
	Category.AssetType.SWEATER_ACCESSORY = 23
	Category.AssetType.SHORTS_ACCESSORY = 24
	Category.AssetType.LEFT_SHOE_ACCESSORY = 25
	Category.AssetType.RIGHT_SHOE_ACCESSORY = 26
	Category.AssetType.DRESS_SKIRT_ACCESSORY = 27
	Category.AssetType.ANIMATION = 28
end

Category.ToolboxAssetTypeToEngine = {
	[Category.AssetType.MODEL] = Enum.AssetType.Model,
	[Category.AssetType.DECAL] = Enum.AssetType.Decal,
	[Category.AssetType.MESH] = Enum.AssetType.Mesh,
	[Category.AssetType.MESHPART] = Enum.AssetType.MeshPart,
	[Category.AssetType.AUDIO] = Enum.AssetType.Audio,
	[Category.AssetType.PACKAGE] = Enum.AssetType.Package,
	[Category.AssetType.PLUGIN] = Enum.AssetType.Plugin,
	[Category.AssetType.HAT] = Enum.AssetType.Hat,
	[Category.AssetType.TEE_SHIRT] = Enum.AssetType.TShirt,
	[Category.AssetType.SHIRT] = Enum.AssetType.Shirt,
	[Category.AssetType.PANTS] = Enum.AssetType.Pants,
	[Category.AssetType.HAIR_ACCESSORY] = Enum.AssetType.HairAccessory,
	[Category.AssetType.FACE_ACCESSORY] = Enum.AssetType.FaceAccessory,
	[Category.AssetType.NECK_ACCESSORY] = Enum.AssetType.NeckAccessory,
	[Category.AssetType.SHOULDER_ACCESSORY] = Enum.AssetType.ShoulderAccessory,
	[Category.AssetType.FRONT_ACCESSORY] = Enum.AssetType.FrontAccessory,
	[Category.AssetType.BACK_ACCESSORY] = Enum.AssetType.BackAccessory,
	[Category.AssetType.WAIST_ACCESSORY] = Enum.AssetType.WaistAccessory,
	[Category.AssetType.VIDEO] = Enum.AssetType.Video,
	[Category.AssetType.ANIMATION] = Enum.AssetType.Animation,
}

if FFlagUGCLCAssetTypes2 then
	Category.ToolboxAssetTypeToEngine[Category.AssetType.TSHIRT_ACCESSORY] = Enum.AssetType.TShirtAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.SHIRT_ACCESSORY] = Enum.AssetType.ShirtAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.PANTS_ACCESSORY] = Enum.AssetType.PantsAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.JACKET_ACCESSORY] = Enum.AssetType.JacketAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.SWEATER_ACCESSORY] = Enum.AssetType.SweaterAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.SHORTS_ACCESSORY] = Enum.AssetType.ShortsAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.LEFT_SHOE_ACCESSORY] = Enum.AssetType.LeftShoeAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.RIGHT_SHOE_ACCESSORY] = Enum.AssetType.RightShoeAccessory
	Category.ToolboxAssetTypeToEngine[Category.AssetType.DRESS_SKIRT_ACCESSORY] = Enum.AssetType.DressSkirtAccessory
end

Category.FREE_MODELS = {
	name = "FreeModels",
	category = "FreeModels",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.MODEL,
}
Category.FREE_DECALS = {
	name = "FreeDecals",
	category = "FreeDecals",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.DECAL,
}
Category.FREE_MESHES = {
	name = "FreeMeshes",
	category = "FreeMeshes",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.MESH,
}
Category.FREE_AUDIO = {
	name = "FreeAudio",
	category = "FreeAudio",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.AUDIO,
}
Category.WHITELISTED_PLUGINS = {
	name = "PaidPlugins",
	category = "WhitelistedPlugins",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.PLUGIN,
}

Category.MY_MODELS = {
	name = "MyModels",
	category = "MyModelsExceptPackage",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.MODEL,
}
Category.MY_DECALS = {
	name = "MyDecals",
	category = "MyDecals",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.DECAL,
}
Category.MY_MESHES = {
	name = "MyMeshes",
	category = "MyMeshes",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.MESH,
}
Category.MY_AUDIO = {
	name = "MyAudio",
	category = "MyAudio",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.AUDIO,
}
Category.MY_PLUGINS = {
	name = "MyPlugins",
	category = "MyPlugins",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.PLUGIN,
}
Category.MY_ANIMATIONS = {
	name = "MyAnimations",
	category = "MyAnimations",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.ANIMATION,
}

Category.MARKETPLACE_VIDEOS = {
	name = "FreeVideo",
	category = "FreeVideo",
	ownershipType = Category.OwnershipType.FREE,
	assetType = Category.AssetType.VIDEO,
}
Category.MY_VIDEOS = {
	name = "MyVideo",
	category = "MyVideo",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.VIDEO,
}
Category.RECENT_VIDEO = {
	name = "RecentVideo",
	category = "RecentVideo",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.VIDEO,
}

Category.RECENT_MODELS = {
	name = "RecentModels",
	category = "RecentModels",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.MODEL,
}
Category.RECENT_DECALS = {
	name = "RecentDecals",
	category = "RecentDecals",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.DECAL,
}
Category.RECENT_MESHES = {
	name = "RecentMeshes",
	category = "RecentMeshes",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.MESH,
}
Category.RECENT_AUDIO = {
	name = "RecentAudio",
	category = "RecentAudio",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.AUDIO,
}
Category.RECENT_ANIMATIONS = {
	name = "RecentAnimations",
	category = "RecentAnimations",
	ownershipType = Category.OwnershipType.RECENT,
	assetType = Category.AssetType.ANIMATION,
}

Category.GROUP_MODELS = {
	name = "GroupModels",
	category = "GroupModelsExceptPackage",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.MODEL,
}
Category.GROUP_DECALS = {
	name = "GroupDecals",
	category = "GroupDecals",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.DECAL,
}
Category.GROUP_MESHES = {
	name = "GroupMeshes",
	category = "GroupMeshes",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.MESH,
}
Category.GROUP_AUDIO = {
	name = "GroupAudio",
	category = "GroupAudio",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.AUDIO,
}
Category.GROUP_PLUGINS = {
	name = "GroupPlugins",
	category = "GroupPlugins",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.PLUGIN,
}

Category.MY_PACKAGES = {
	name = "MyPackages",
	category = "MyPackages",
	ownershipType = Category.OwnershipType.MY,
	assetType = Category.AssetType.PACKAGE,
}
Category.GROUP_PACKAGES = {
	name = "GroupPackages",
	category = "GroupPackages",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.PACKAGE,
}

Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER = { name = "CreationsDevelopmentSectionDivider", selectable = false }
-- Eventually, the itemsconfiguration endpoint should fetch MyModelsExceptPackages,
-- but currently it is fetching both Models and Packages.
-- Until then, pull the logic from the develop api.
Category.CREATIONS_GROUP_MODELS = {
	name = "CreationsGroupModels",
	category = "GroupModelsExceptPackage",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.MODEL,
}
Category.CREATIONS_GROUP_PACKAGES = {
	name = "CreationsGroupPackages",
	category = "GroupPackages",
	ownershipType = Category.OwnershipType.GROUP,
	assetType = Category.AssetType.PACKAGE,
}

Category.CREATIONS_MODELS = {
	name = "CreationsModels",
	category = "CreationsModels",
	assetType = Category.AssetType.MODEL,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_DECALS = {
	name = "CreationsDecals",
	category = "CreationsDecals",
	assetType = Category.AssetType.DECAL,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_AUDIO = {
	name = "CreationsAudio",
	category = "CreationsAudio",
	assetType = Category.AssetType.AUDIO,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_MESHES = {
	name = "CreationsMeshes",
	category = "CreationsMeshes",
	assetType = Category.AssetType.MESHPART,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_PLUGIN = {
	name = "CreationsPlugins",
	category = "CreationsPlugins",
	assetType = Category.AssetType.PLUGIN,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_ANIMATIONS = {
	name = "CreationsAnimations",
	category = "CreationsAnimations",
	assetType = Category.AssetType.ANIMATION,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_GROUP_DECALS = {
	name = "CreationsGroupDecals",
	category = "CreationsGroupDecals",
	assetType = Category.AssetType.DECAL,
	ownershipType = Category.OwnershipType.GROUP,
}
Category.CREATIONS_GROUP_AUDIO = {
	name = "CreationsGroupAudio",
	category = "CreationsGroupAudio",
	assetType = Category.AssetType.AUDIO,
	ownershipType = Category.OwnershipType.GROUP,
}
Category.CREATIONS_GROUP_MESHES = {
	name = "CreationsGroupMeshes",
	category = "CreationsGroupMeshes",
	assetType = Category.AssetType.MESHPART,
	ownershipType = Category.OwnershipType.GROUP,
}
Category.CREATIONS_GROUP_PLUGIN = {
	name = "CreationsGroupPlugins",
	category = "CreationsGroupPlugins",
	assetType = Category.AssetType.PLUGIN,
	ownershipType = Category.OwnershipType.GROUP,
}
Category.CREATIONS_GROUP_ANIMATIONS = {
	name = "CreationsGroupAnimations",
	category = "CreationsGroupAnimations",
	assetType = Category.AssetType.ANIMATION,
	ownershipType = Category.OwnershipType.GROUP,
}
Category.CREATIONS_CATALOG_SECTION_DIVIDER = { name = "CreationsCatalogSectionDivider", selectable = false }
Category.CREATIONS_HATS = {
	name = "CreationsHats",
	category = "CreationsHats",
	assetType = Category.AssetType.HAT,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_TEE_SHIRT = {
	name = "CreationsTeeShirts",
	category = "CreationsTeeShirts",
	assetType = Category.AssetType.TEE_SHIRT,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_SHIRT = {
	name = "CreationsShirts",
	category = "CreationsShirts",
	assetType = Category.AssetType.SHIRT,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_PANTS = {
	name = "CreationsPants",
	category = "CreationsPants",
	assetType = Category.AssetType.PANTS,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_HAIR = {
	name = "CreationsHair",
	category = "CreationsHair",
	assetType = Category.AssetType.HAIR_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_FACE_ACCESSORIES = {
	name = "CreationsFaceAccessories",
	category = "CreationsFaceAccessories",
	assetType = Category.AssetType.FACE_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_NECK_ACCESSORIES = {
	name = "CreationsNeckAccessories",
	category = "CreationsNeckAccessories",
	assetType = Category.AssetType.NECK_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_SHOULDER_ACCESSORIES = {
	name = "CreationsShoulderAccessories",
	category = "CreationsShoulderAccessories",
	assetType = Category.AssetType.SHOULDER_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_FRONT_ACCESSORIES = {
	name = "CreationsFrontAccessories",
	category = "CreationsFrontAccessories",
	assetType = Category.AssetType.FRONT_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_BACK_ACCESSORIES = {
	name = "CreationsBackAccessories",
	category = "CreationsBackAccessories",
	assetType = Category.AssetType.BACK_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
Category.CREATIONS_WAIST_ACCESSORIES = {
	name = "CreationsWaistAccessories",
	category = "CreationsWaistAccessories",
	assetType = Category.AssetType.WAIST_ACCESSORY,
	ownershipType = Category.OwnershipType.MY,
}
if FFlagUGCLCAssetTypes2 then
	Category.CREATIONS_TSHIRT_ACCESSORIES = {
		name = "CreationsTShirtAccessories",
		category = "CreationsTShirtAccessories",
		assetType = Category.AssetType.TSHIRT_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_SHIRT_ACCESSORIES = {
		name = "CreationsShirtAccessories",
		category = "CreationsShirtAccessories",
		assetType = Category.AssetType.SHIRT_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_PANTS_ACCESSORIES = {
		name = "CreationsPantsAccessories",
		category = "CreationsPantsAccessories",
		assetType = Category.AssetType.PANTS_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_JACKET_ACCESSORIES = {
		name = "CreationsJacketAccessories",
		category = "CreationsJacketAccessories",
		assetType = Category.AssetType.JACKET_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_SWEATER_ACCESSORIES = {
		name = "CreationsSweaterAccessories",
		category = "CreationsSweaterAccessories",
		assetType = Category.AssetType.SWEATER_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_SHORTS_ACCESSORIES = {
		name = "CreationsShortsAccessories",
		category = "CreationsShortsAccessories",
		assetType = Category.AssetType.SHORTS_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_LEFT_SHOE_ACCESSORIES = {
		name = "CreationsLeftShoeAccessories",
		category = "CreationsLeftShoeAccessories",
		assetType = Category.AssetType.LEFT_SHOE_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_RIGHT_SHOE_ACCESSORIES = {
		name = "CreationsRightShoeAccessories",
		category = "CreationsRightShoeAccessories",
		assetType = Category.AssetType.RIGHT_SHOE_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
	Category.CREATIONS_DRESS_SKIRT_ACCESSORIES = {
		name = "CreationsDressSkirtAccessories",
		category = "CreationsDressSkirtAccessories",
		assetType = Category.AssetType.DRESS_SKIRT_ACCESSORY,
		ownershipType = Category.OwnershipType.MY,
	}
end

if FFlagUGCGroupUploads2 then
	Category.CREATIONS_GROUP_HATS = {
		name = "CreationsGroupHats",
		category = "CreationsGroupHats",
		assetType = Category.AssetType.HAT,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_HAIR = {
		name = "CreationsGroupHair",
		category = "CreationsGroupHair",
		assetType = Category.AssetType.HAIR_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_FACE_ACCESSORIES = {
		name = "CreationsGroupFaceAccessories",
		category = "CreationsGroupFaceAccessories",
		assetType = Category.AssetType.FACE_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_NECK_ACCESSORIES = {
		name = "CreationsGroupNeckAccessories",
		category = "CreationsGroupNeckAccessories",
		assetType = Category.AssetType.NECK_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_SHOULDER_ACCESSORIES = {
		name = "CreationsGroupShoulderAccessories",
		category = "CreationsGroupShoulderAccessories",
		assetType = Category.AssetType.SHOULDER_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_FRONT_ACCESSORIES = {
		name = "CreationsGroupFrontAccessories",
		category = "CreationsGroupFrontAccessories",
		assetType = Category.AssetType.FRONT_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_BACK_ACCESSORIES = {
		name = "CreationsGroupBackAccessories",
		category = "CreationsGroupBackAccessories",
		assetType = Category.AssetType.BACK_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	Category.CREATIONS_GROUP_WAIST_ACCESSORIES = {
		name = "CreationsGroupWaistAccessories",
		category = "CreationsGroupWaistAccessories",
		assetType = Category.AssetType.WAIST_ACCESSORY,
		ownershipType = Category.OwnershipType.GROUP,
	}
	if FFlagUGCLCAssetTypes2 then
		Category.CREATIONS_GROUP_TSHIRT_ACCESSORIES = {
			name = "CreationsGroupTShirtAccessories",
			category = "CreationsGroupTShirtAccessories",
			assetType = Category.AssetType.TSHIRT_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_SHIRT_ACCESSORIES = {
			name = "CreationsGroupShirtAccessories",
			category = "CreationsGroupShirtAccessories",
			assetType = Category.AssetType.SHIRT_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_PANTS_ACCESSORIES = {
			name = "CreationsGroupPantsAccessories",
			category = "CreationsGroupPantsAccessories",
			assetType = Category.AssetType.PANTS_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_JACKET_ACCESSORIES = {
			name = "CreationsGroupJacketAccessories",
			category = "CreationsGroupJacketAccessories",
			assetType = Category.AssetType.JACKET_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_SWEATER_ACCESSORIES = {
			name = "CreationsGroupSweaterAccessories",
			category = "CreationsGroupSweaterAccessories",
			assetType = Category.AssetType.SWEATER_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_SHORTS_ACCESSORIES = {
			name = "CreationsGroupShortsAccessories",
			category = "CreationsGroupShortsAccessories",
			assetType = Category.AssetType.SHORTS_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_LEFT_SHOE_ACCESSORIES = {
			name = "CreationsGroupLeftShoeAccessories",
			category = "CreationsGroupLeftShoeAccessories",
			assetType = Category.AssetType.LEFT_SHOE_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_RIGHT_SHOE_ACCESSORIES = {
			name = "CreationsGroupRightShoeAccessories",
			category = "CreationsGroupRightShoeAccessories",
			assetType = Category.AssetType.RIGHT_SHOE_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
		Category.CREATIONS_GROUP_DRESS_SKIRT_ACCESSORIES = {
			name = "CreationsGroupDressSkirtAccessories",
			category = "CreationsGroupDressSkirtAccessories",
			assetType = Category.AssetType.DRESS_SKIRT_ACCESSORY,
			ownershipType = Category.OwnershipType.GROUP,
		}
	end
end

-- Category sets used for splitting inventory/shop
Category.MARKETPLACE = {
	Category.FREE_MODELS,
	Category.FREE_DECALS,
	Category.FREE_MESHES,
	Category.FREE_AUDIO,
	Category.MARKETPLACE_VIDEOS,
	Category.WHITELISTED_PLUGINS,
}

Category.INVENTORY = {
	Category.MY_MODELS,
	Category.MY_DECALS,
	Category.MY_MESHES,
	Category.MY_AUDIO,
	Category.MY_PACKAGES,
	Category.MY_VIDEOS,
	Category.MY_PLUGINS,
	Category.MY_ANIMATIONS,
}

Category.RECENT = {
	Category.RECENT_MODELS,
	Category.RECENT_DECALS,
	Category.RECENT_MESHES,
	Category.RECENT_AUDIO,
	Category.RECENT_VIDEO,
	Category.RECENT_ANIMATIONS,
}

Category.DEFAULT = nil
if disableMarketplaceAndRecents() then
	Category.DEFAULT = Category.MY_MODELS
else
	Category.DEFAULT = Category.FREE_MODELS
end

Category.CREATOR_ROBLOX = {
	Id = 1,
	Type = Enum.CreatorType.User.Value,
}

Category.CREATOR_ROBLOX_DEVELOP_API = {
	Id = 1,
	-- Develop API creatorType is not aligned with the CreatorType Enum
	Type = CreatorInfoHelper.clientToBackend(Enum.CreatorType.User.Value),
}

-- Categories which are supported by GetToolboxItems
Category.API_NAMES = {
	[Category.FREE_AUDIO.name] = "Audio",
	[Category.WHITELISTED_PLUGINS.name] = "Plugins",
	[Category.FREE_MESHES.name] = "Meshes",
	[Category.FREE_DECALS.name] = "Decals",
	[Category.MARKETPLACE_VIDEOS.name] = "Videos",
	[Category.FREE_MODELS.name] = "Models",

	[Category.MY_AUDIO.name] = "audio",
	[Category.MY_PLUGINS.name] = "plugin",
	[Category.MY_MODELS.name] = "model",
	[Category.MY_MESHES.name] = "meshpart",
	[Category.MY_DECALS.name] = "decal",
	[Category.MY_VIDEOS.name] = "video",
	[Category.MY_PACKAGES.name] = "package",
	[Category.MY_ANIMATIONS.name] = "animation",

	[Category.RECENT_AUDIO.name] = "audio",
	[Category.RECENT_MODELS.name] = "model",
	[Category.RECENT_MESHES.name] = "meshpart",
	[Category.RECENT_DECALS.name] = "decal",
	[Category.RECENT_VIDEO.name] = "video",
	[Category.RECENT_ANIMATIONS.name] = "animation",
}

Category.AUTOCOMPLETE_API_NAMES = {
	[Category.FREE_AUDIO.name] = "audio",
	[Category.WHITELISTED_PLUGINS.name] = "plugin",
	[Category.FREE_MESHES.name] = "mesh",
	[Category.FREE_DECALS.name] = "image",
	[Category.MARKETPLACE_VIDEOS.name] = "video",
	[Category.FREE_MODELS.name] = "model",
	[Category.MY_ANIMATIONS.name] = "animation",
}

local function getCreationCategories()
	local categories = {
		Category.CREATIONS_DEVELOPMENT_SECTION_DIVIDER,
		Category.CREATIONS_MODELS,
		Category.CREATIONS_DECALS,
		Category.CREATIONS_AUDIO,
		Category.CREATIONS_MESHES,
		Category.CREATIONS_PLUGIN,
		Category.CREATIONS_ANIMATIONS,
		Category.CREATIONS_GROUP_MODELS,
		Category.CREATIONS_GROUP_DECALS,
		Category.CREATIONS_GROUP_AUDIO,
		Category.CREATIONS_GROUP_MESHES,
		Category.CREATIONS_GROUP_PLUGIN,
		Category.CREATIONS_GROUP_PACKAGES,
		Category.CREATIONS_GROUP_ANIMATIONS,
	}

	return categories
end

Category.MARKETPLACE_KEY = "Marketplace"
Category.INVENTORY_KEY = "Inventory"
Category.RECENT_KEY = "Recent"
Category.CREATIONS_KEY = "Creations"

local disabledCategories = string.split(getMarketplaceDisabledCategories(), ";")

for _, categoryName in pairs(disabledCategories) do
	local categoryIndex = nil

	for i, category in pairs(Category.MARKETPLACE) do
		if category.name == categoryName then
			categoryIndex = i
		end
	end

	if categoryIndex then
		table.remove(Category.MARKETPLACE, categoryIndex)
	end
end
local tabForCategoryName = {}
local tabKeyForCategoryName = {}
local categoryByName = {}

for _, category in pairs(Category) do
	if category.name then
		categoryByName[category.name] = category
	end
end

Category.CREATIONS = getCreationCategories()

local tabs
local tabKeys
if disableMarketplaceAndRecents() then
	tabs = {
		Category.INVENTORY,
		Category.CREATIONS,
	}
	tabKeys = {
		Category.INVENTORY_KEY,
		Category.CREATIONS_KEY,
	}
elseif showRobloxCreatedAssets() then
	tabs = {
		Category.MARKETPLACE,
		Category.INVENTORY,
		Category.CREATIONS,
	}
	tabKeys = {
		Category.MARKETPLACE_KEY,
		Category.INVENTORY_KEY,
		Category.CREATIONS_KEY,
	}
else
	tabs = {
		Category.MARKETPLACE,
		Category.INVENTORY,
		Category.RECENT,
		Category.CREATIONS,
	}
	tabKeys = {
		Category.MARKETPLACE_KEY,
		Category.INVENTORY_KEY,
		Category.RECENT_KEY,
		Category.CREATIONS_KEY,
	}
end

for index, tab in ipairs(tabs) do
	for _, category in ipairs(tab) do
		tabForCategoryName[category.name] = tab
		tabKeyForCategoryName[category.name] = tabKeys[index]
	end
end

function Category.getTabForCategoryName(categoryName)
	return tabForCategoryName[categoryName] or Category.CREATIONS
end
function Category.getTabKeyForCategoryName(categoryName)
	return tabKeyForCategoryName[categoryName] or Category.CREATIONS_KEY
end

function Category.getCategoryByName(categoryName)
	local category = categoryByName[categoryName]
	if not category and DebugFlags.shouldDebugWarnings() then
		warn(("Lua Toolbox: no category for name %s"):format(tostring(categoryName)))
	end
	return category
end

function Category.getCategoryIndex(categoryName, roles)
	if categoryName == "" then
		return 1
	end
	local tabKey = Category.getTabKeyForCategoryName(categoryName)
	local tab = Category.getCategories(tabKey, roles)
	for index, category in ipairs(tab) do
		if category.name == categoryName then
			return index
		end
	end
	if DebugFlags.shouldDebugWarnings() then
		warn(("Lua Toolbox: no category index for name %s"):format(tostring(categoryName)))
	end
	return 1
end

function Category.categoryIsPackage(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.assetType == Category.AssetType.PACKAGE
end

function Category.categoryIsFreeAsset(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.ownershipType == Category.OwnershipType.FREE
end

function Category.categoryIsGroupAsset(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.ownershipType == Category.OwnershipType.GROUP
end

function Category.categoryIsAudio(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.assetType == Category.AssetType.AUDIO
end

function Category.categoryIsVideo(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.assetType == Category.AssetType.VIDEO
end

function Category.categoryIsGroupPackages(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.assetType == Category.AssetType.GROUP_PACKAGES
end

function Category.categoryIsPlugin(categoryName)
	local category = Category.getCategoryByName(categoryName)
	return category.assetType == Category.AssetType.PLUGIN
end

function Category.shouldShowPrices(categoryName)
	local isPlugins = Category.categoryIsPlugin(categoryName)
	local tab = Category.getTabForCategoryName(categoryName)
	local showPrices = isPlugins and tab == Category.MARKETPLACE
	return showPrices
end

local ASSET_ENUM_CATEGORY_MAP = {
	[Enum.AssetType.Hat] = Category.CREATIONS_HATS,
	[Enum.AssetType.HairAccessory] = Category.CREATIONS_HAIR,
	[Enum.AssetType.FaceAccessory] = Category.CREATIONS_FACE_ACCESSORIES,
	[Enum.AssetType.NeckAccessory] = Category.CREATIONS_NECK_ACCESSORIES,
	[Enum.AssetType.ShoulderAccessory] = Category.CREATIONS_SHOULDER_ACCESSORIES,
	[Enum.AssetType.FrontAccessory] = Category.CREATIONS_FRONT_ACCESSORIES,
	[Enum.AssetType.BackAccessory] = Category.CREATIONS_BACK_ACCESSORIES,
	[Enum.AssetType.WaistAccessory] = Category.CREATIONS_WAIST_ACCESSORIES,
	[Enum.AssetType.TShirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_TSHIRT_ACCESSORIES or nil,
	[Enum.AssetType.ShirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_SHIRT_ACCESSORIES or nil,
	[Enum.AssetType.PantsAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_PANTS_ACCESSORIES or nil,
	[Enum.AssetType.JacketAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_JACKET_ACCESSORIES or nil,
	[Enum.AssetType.SweaterAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_SWEATER_ACCESSORIES or nil,
	[Enum.AssetType.ShortsAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_SHORTS_ACCESSORIES or nil,
	[Enum.AssetType.LeftShoeAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_LEFT_SHOE_ACCESSORIES or nil,
	[Enum.AssetType.RightShoeAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_RIGHT_SHOE_ACCESSORIES or nil,
	[Enum.AssetType.DressSkirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_DRESS_SKIRT_ACCESSORIES or nil,
}

local ASSET_ENUM_GROUP_CATEGORY_MAP = {
	[Enum.AssetType.Hat] = Category.CREATIONS_GROUP_HATS,
	[Enum.AssetType.HairAccessory] = Category.CREATIONS_GROUP_HAIR,
	[Enum.AssetType.FaceAccessory] = Category.CREATIONS_GROUP_FACE_ACCESSORIES,
	[Enum.AssetType.NeckAccessory] = Category.CREATIONS_GROUP_NECK_ACCESSORIES,
	[Enum.AssetType.ShoulderAccessory] = Category.CREATIONS_GROUP_SHOULDER_ACCESSORIES,
	[Enum.AssetType.FrontAccessory] = Category.CREATIONS_GROUP_FRONT_ACCESSORIES,
	[Enum.AssetType.BackAccessory] = Category.CREATIONS_GROUP_BACK_ACCESSORIES,
	[Enum.AssetType.WaistAccessory] = Category.CREATIONS_GROUP_WAIST_ACCESSORIES,
	[Enum.AssetType.TShirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_TSHIRT_ACCESSORIES or nil,
	[Enum.AssetType.ShirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_SHIRT_ACCESSORIES or nil,
	[Enum.AssetType.PantsAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_PANTS_ACCESSORIES or nil,
	[Enum.AssetType.JacketAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_JACKET_ACCESSORIES or nil,
	[Enum.AssetType.SweaterAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_SWEATER_ACCESSORIES or nil,
	[Enum.AssetType.ShortsAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_SHORTS_ACCESSORIES or nil,
	[Enum.AssetType.LeftShoeAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_LEFT_SHOE_ACCESSORIES
		or nil,
	[Enum.AssetType.RightShoeAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_RIGHT_SHOE_ACCESSORIES
		or nil,
	[Enum.AssetType.DressSkirtAccessory] = FFlagUGCLCAssetTypes2 and Category.CREATIONS_GROUP_DRESS_SKIRT_ACCESSORIES
		or nil,
}

function Category.getCategories(tabName, roles)
	if Category.CREATIONS_KEY == tabName then
		local categories = getCreationCategories()
		if roles then
			local allowedAssetTypeEnums = getAllowedAssetTypeEnums(roles.allowedAssetTypesForRelease)
			if #allowedAssetTypeEnums > 0 then
				table.insert(categories, Category.CREATIONS_CATALOG_SECTION_DIVIDER)
				for _, assetTypeEnum in pairs(allowedAssetTypeEnums) do
					table.insert(categories, ASSET_ENUM_CATEGORY_MAP[assetTypeEnum])
				end
				if FFlagUGCGroupUploads2 then
					for _, assetTypeEnum in pairs(allowedAssetTypeEnums) do
						table.insert(categories, ASSET_ENUM_GROUP_CATEGORY_MAP[assetTypeEnum])
					end
				end
			end
		end
		return categories
	elseif Category.MARKETPLACE_KEY == tabName then
		return Category.MARKETPLACE
	elseif Category.INVENTORY_KEY == tabName then
		return Category.INVENTORY
	elseif Category.RECENT_KEY == tabName then
		return Category.RECENT
	end
end

function Category.getEngineAssetType(assetType)
	local result = Category.ToolboxAssetTypeToEngine[assetType]
	if not result then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No engine assetType for category asset type %s"):format(tostring(assetType)))
		end
	end
	return result
end

function Category.categoryIsAvatarAssetByCategoryName(categoryName)
	local category = Category.getCategoryByName(categoryName)
	local assetTypeEnum = Category.getEngineAssetType(category.assetType)
	return ASSET_ENUM_GROUP_CATEGORY_MAP[assetTypeEnum] ~= nil
end

return Category
