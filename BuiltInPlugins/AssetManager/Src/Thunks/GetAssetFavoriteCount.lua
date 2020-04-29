local Plugin = script.Parent.Parent.Parent

local SetAssetFavoriteCount = require(Plugin.Src.Actions.SetAssetFavoriteCount)

return function(apiImpl, assetId)
    return function(store)
        apiImpl.Catalog.V1.Favorites.Assets.count(assetId):makeRequest()
        :andThen(function(response)
            local favoriteCount = response.responseBody
            if favoriteCount then
                store:dispatch(SetAssetFavoriteCount(assetId, favoriteCount))
            else
                store:dispatch(SetAssetFavoriteCount(assetId, 0))
            end
        end, function()
            error("Failed to get asset favorite count information for asset id: ", assetId)
        end)
    end
end