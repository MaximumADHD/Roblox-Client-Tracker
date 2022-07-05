local Plugin = script.Parent.Parent.Parent

local SetAssetFavorited = require(Plugin.Src.Actions.SetAssetFavorited)

return function(apiImpl, assetId, userId)
	return function(store)
		apiImpl.Catalog.V1.Favorites.Assets.favorite(assetId, userId):makeRequest()
		:andThen(function(response)
			local body = response.responseBody
			if body ~= "null" then
				store:dispatch(SetAssetFavorited(assetId, true))
			else
				store:dispatch(SetAssetFavorited(assetId, false))
			end
		end, function()
			error("Failed to get asset favorite information for asset id: ", assetId)
		end)
	end
end