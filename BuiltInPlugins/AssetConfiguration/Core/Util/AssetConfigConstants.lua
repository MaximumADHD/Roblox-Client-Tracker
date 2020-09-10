local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local convertArrayToTable = require(Util.convertArrayToTable)

local AssetConfigConstants = {}

AssetConfigConstants.TERM_OF_USE_URL = "https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"
AssetConfigConstants.ACCOUNT_SETTING_URL = "https://www.roblox.com/my/account#!/info"

AssetConfigConstants.NAME_CHARACTER_LIMIT = 50
AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT = 1000

AssetConfigConstants.TITLE_GUTTER_WIDTH = 180

AssetConfigConstants.OverrideAssetItemSize = UDim2.new(0, 150, 0, 200)

AssetConfigConstants.PreviewTypes = convertArrayToTable({
	"ImagePicker",
	"Thumbnail",
	"ModelPreview",
})

AssetConfigConstants.SIDE_TABS = convertArrayToTable({
	"Sales",
	"General",
	"Versions",
	-- Override is weird case. it acts like a tab, but don't show up in the tabs.
	-- We should ask the design for a more consistent pattern to replace this one.
	"Override",
	"Permissions",
})

-- arbitrary keys for tracking error state
AssetConfigConstants.FIELD_NAMES = convertArrayToTable({
	"Title",
	"Description",
	"Price",
})

AssetConfigConstants.GENRE_TYPE = {
	{name = Enum.Genre.All.Name},
	{name = Enum.Genre.TownAndCity.Name},
	{name = Enum.Genre.Fantasy.Name},
	{name = Enum.Genre.SciFi.Name},
	{name = Enum.Genre.Ninja.Name},
	{name = Enum.Genre.Scary.Name},
	{name = Enum.Genre.Pirate.Name},
	{name = Enum.Genre.Adventure.Name},
	{name = Enum.Genre.Sports.Name},
	{name = Enum.Genre.Funny.Name},
	{name = Enum.Genre.WildWest.Name},
	{name = Enum.Genre.War.Name},
	{name = Enum.Genre.SkatePark.Name},
	{name = Enum.Genre.Tutorial.Name},
}

AssetConfigConstants.FLOW_TYPE = convertArrayToTable({
	"EDIT_FLOW",
	"UPLOAD_FLOW",
	"DOWNLOAD_FLOW",
})

AssetConfigConstants.SCREENS = convertArrayToTable({
	"ASSET_TYPE_SELECTION",
	"ASSET_VALIDATION",
	"CONFIGURE_ASSET",
	"UPLOADING_ASSET",
	"UPLOAD_ASSET_RESULT",
})

AssetConfigConstants.ASSET_STATUS = convertArrayToTable({
	"Unknown",
	"ReviewPending",
	"Moderated",
	"ReviewApproved",
	"OnSale",
	"OffSale",
	"DelayedRelease",
	"Free",
})

AssetConfigConstants.SALES_STATUS_FOR_PRICE = convertArrayToTable({
	"OnSale",
})

local function catalogAssetInfo(type, isUploadable)
	return {
		type = type,
		isCatalog = true,
		isUploadable = isUploadable == true,
	}
end

local function marketplaceAssetInfo(type, isBuyable)
	return {
		type = type,
		isMarketplace = true,
		isBuyable = isBuyable == true,
	}
end

AssetConfigConstants.ASSET_TYPE_INFO = {
	-- catalog assets
	catalogAssetInfo(Enum.AssetType.Hat, --[[ isUploadable = ]] true),
	catalogAssetInfo(Enum.AssetType.TeeShirt),
	catalogAssetInfo(Enum.AssetType.Shirt),
	catalogAssetInfo(Enum.AssetType.Pants),
	catalogAssetInfo(Enum.AssetType.HairAccessory, true),
	catalogAssetInfo(Enum.AssetType.FaceAccessory, true),
	catalogAssetInfo(Enum.AssetType.NeckAccessory, true),
	catalogAssetInfo(Enum.AssetType.ShoulderAccessory, true),
	catalogAssetInfo(Enum.AssetType.FrontAccessory, true),
	catalogAssetInfo(Enum.AssetType.BackAccessory, true),
	catalogAssetInfo(Enum.AssetType.WaistAccessory, true),

	-- marketplace assets
	marketplaceAssetInfo(Enum.AssetType.Model),
	marketplaceAssetInfo(Enum.AssetType.Decal),
	marketplaceAssetInfo(Enum.AssetType.Mesh),
	marketplaceAssetInfo(Enum.AssetType.MeshPart),
	marketplaceAssetInfo(Enum.AssetType.Audio),
	marketplaceAssetInfo(Enum.AssetType.Animation),
	marketplaceAssetInfo(Enum.AssetType.Plugin, --[[ isBuyable = ]] true),
}

-- allow lookup by Enum.AssetType
for _, info in ipairs(AssetConfigConstants.ASSET_TYPE_INFO) do
	if info.isCatalog and info.isMarketplace then
		error(tostring(info.type) .. " cannot be both a catalog and marketplace asset")
	end
	if AssetConfigConstants.ASSET_TYPE_INFO[info.type] then
		error("AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of " .. tostring(info.type))
	end
	AssetConfigConstants.ASSET_TYPE_INFO[info.type] = info
end

AssetConfigConstants.developCategoryType = convertArrayToTable({
	"WhitelistedPlugins",
	"MyPlugins",
	"GroupPlugins",
})

AssetConfigConstants.packagesCategoryType = convertArrayToTable({
	"MyPackages",
	"GroupPackages",
})

AssetConfigConstants.rbxThumbTypes = convertArrayToTable({
	"Asset",
	"Avatar",
	"AvatarHeadShot",
	"BadgeIcon",
	"BundleThumbnail",
	"GameIcon",
	"GamePass",
	"GroupIcon",
	"Outfit",
})

AssetConfigConstants.rbxThumbSizes = {
	-- Supported sizes, 48, 60, 150
	AvatarHeadshotImageSize = 60,
	-- Supported sizes, 150, 420
	GroupIconImageSize = 150,
	AssetThumbnailSize = 420,
}

AssetConfigConstants.IMAGE_TYPES = {"jpg", "jpeg", "png"}

AssetConfigConstants.TAGS_SUGGESTION_SUCCESS = "Success"
AssetConfigConstants.MAX_DISPLAY_SUGGESTIONS = 5
AssetConfigConstants.MAX_FETCH_SUGGESTIONS = 10

return AssetConfigConstants
