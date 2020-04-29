local Http = script.Parent.Parent.Parent
local BaseUrl = require(Http.BaseUrl)

local DEFAULT_ASSET_SIZE = 100

return function(assetId, width, height)
	-- The URL only accepts certain sizes for thumbnails. This includes 50, 75, 100, 150, 250, 420 etc.
	width = width or DEFAULT_ASSET_SIZE
	height = height or DEFAULT_ASSET_SIZE

	assert(tonumber(assetId) > -1, "Expected assetId to be a valid number")
	assert(type(width) == "number", "Expected width to be a number")
	assert(type(height) == "number", "Expected height to be a number")

	local urlArgs = BaseUrl.makeQueryString({
		assetId = assetId,
		width = width,
		height = height,
	})
	return string.format("%sasset-thumbnail/image?%s", BaseUrl.ASSET_GAME_URL, urlArgs)
end
