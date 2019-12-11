local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local convertArrayToTable = require(Util.convertArrayToTable)

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)

local AssetConfigConstants = {}

AssetConfigConstants.TERM_OF_USE_URL = "https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"
AssetConfigConstants.ACCOUNT_SETTING_URL = "https://www.roblox.com/my/account#!/info"

AssetConfigConstants.NAME_CHARACTER_LIMIT = 50
AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT = 1000
-- There is a cap for fetching asset, that's 100.
-- TODO: Fix me with this ticket DEVTOOLS-2904
AssetConfigConstants.GetOverrideAssetNumbersPerPage = 100

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
	"UPLOAD_FLOW"
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

AssetConfigConstants.catalogAssetTypes = convertArrayToTable({
	Enum.AssetType.Hat,
	Enum.AssetType.TeeShirt,
	Enum.AssetType.Shirt,
	Enum.AssetType.Pants,
})

if game:GetFastFlag("CMSAdditionalAccessoryTypesV2") then
	AssetConfigConstants.catalogAssetTypes = Cryo.Dictionary.join(AssetConfigConstants.catalogAssetTypes, convertArrayToTable({
		Enum.AssetType.HairAccessory,
		Enum.AssetType.FaceAccessory,
		Enum.AssetType.NeckAccessory,
		Enum.AssetType.ShoulderAccessory,
		Enum.AssetType.FrontAccessory,
		Enum.AssetType.BackAccessory,
		Enum.AssetType.WaistAccessory,
	}))
end

if game:GetFastFlag("CMSAdditionalAccessoryTypesV2") then
	AssetConfigConstants.ASSET_TYPE_LIST = {
		Enum.AssetType.Hat,
		Enum.AssetType.HairAccessory,
		Enum.AssetType.FaceAccessory,
		Enum.AssetType.NeckAccessory,
		Enum.AssetType.ShoulderAccessory,
		Enum.AssetType.FrontAccessory,
		Enum.AssetType.BackAccessory,
		Enum.AssetType.WaistAccessory,
	}
end

AssetConfigConstants.marketplaceAssetTypes = convertArrayToTable({
	Enum.AssetType.Model,
	Enum.AssetType.Decal,
	Enum.AssetType.Mesh,
	Enum.AssetType.MeshPart,
	Enum.AssetType.Audio,
	Enum.AssetType.Plugin,
})

AssetConfigConstants.marketplaceBuyableAsset = convertArrayToTable({
	Enum.AssetType.Plugin,
})

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
