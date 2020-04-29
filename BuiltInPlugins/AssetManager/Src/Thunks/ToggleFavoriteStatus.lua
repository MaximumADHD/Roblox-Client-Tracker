local Plugin = script.Parent.Parent.Parent

local SetAssetFavorited = require(Plugin.Src.Actions.SetAssetFavorited)

local GetAssetFavoriteCount = require(Plugin.Src.Thunks.GetAssetFavoriteCount)

return function(apiImpl, assetId, userId, favorited)
    return function(store)
        apiImpl.Catalog.V1.Favorites.Assets.favorite(assetId, userId, favorited):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if body == "{}" or body == "null" then
                store:dispatch(SetAssetFavorited(assetId, not favorited))
                store:dispatch(GetAssetFavoriteCount(apiImpl, assetId))
            end
        end, function()
            error("Failed to get asset favorite information for asset id: ", assetId)
        end)
    end
end