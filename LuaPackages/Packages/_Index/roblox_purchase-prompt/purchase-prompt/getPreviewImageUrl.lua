local Root = script.Parent
local ContentProvider = game:GetService("ContentProvider")
local ItemType = require(Root.Enums.ItemType)

local BASE_URL = string.gsub(ContentProvider.BaseUrl:lower(), "https?://m.", "https?://www.")
local THUMBNAIL_URL = BASE_URL.."thumbs/asset.ashx?assetid="
local BUNDLE_THUMBNAIL_URL = BASE_URL.."outfit-thumbnail/image?userOutfitId=%s&width=100&height=100&format=png"

local XBOX_DEFAULT_IMAGE = "rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png"

--[[
	Depending on the type of item, get the proper preview image, sized correctly
]]
local function getPreviewImageUrl(productInfo, platform)
	local imageId

	-- AssetId will only be populated if ProductInfo was from an asset
	if productInfo.itemType == ItemType.Bundle then
		return string.format(BUNDLE_THUMBNAIL_URL, productInfo.costumeId)
	elseif productInfo.AssetId ~= nil and productInfo.AssetId ~= 0 then
		imageId = productInfo.AssetId
	elseif productInfo.IconImageAssetId ~= nil then
		imageId = productInfo.IconImageAssetId
	elseif platform == Enum.Platform.XBoxOne then
		-- XBoxOne has its own default image if anything doesn't load
		return XBOX_DEFAULT_IMAGE
	end

	return THUMBNAIL_URL..tostring(imageId).."&x=100&y=100&format=png"
end

return getPreviewImageUrl