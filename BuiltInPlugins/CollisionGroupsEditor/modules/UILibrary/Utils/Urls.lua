local RBXTHUMB_BASE_URL = "rbxthumb://type=%s&id=%d&w=%d&h=%d"
local ASSET_ID_STRING = "rbxassetid://%d"

local Urls = {}

function Urls.constructAssetThumbnailUrl(assetId, width, height)
    return RBXTHUMB_BASE_URL:format("Asset", tonumber(assetId) or 0, width, height)
end

function Urls.constructAssetIdString(assetId)
	return ASSET_ID_STRING:format(assetId)
end

return Urls