local Plugin = script.Parent.Parent.Parent

local IncrementAssetFavoriteCount = require(Plugin.Src.Actions.IncrementAssetFavoriteCount)
local SetAssetFavorited = require(Plugin.Src.Actions.SetAssetFavorited)

return function(apiImpl, assetId, userId, favorited)
	return function(store)
		apiImpl.Catalog.V1.Favorites.Assets.favorite(assetId, userId, favorited):makeRequest()
		:andThen(function(response)
			local body = response.responseBody
			if body == "{}" or body == "null" then
				store:dispatch(SetAssetFavorited(assetId, not favorited))
				if favorited then
					store:dispatch(IncrementAssetFavoriteCount(assetId, -1))
				else
					store:dispatch(IncrementAssetFavoriteCount(assetId, 1))
				end
			end
		end, function()
			error("Failed to get asset favorite information for asset id: ", assetId)
		end)
	end
end