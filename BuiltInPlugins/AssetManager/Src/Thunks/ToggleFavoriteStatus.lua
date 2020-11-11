local Plugin = script.Parent.Parent.Parent

local IncrementAssetFavoriteCount = require(Plugin.Src.Actions.IncrementAssetFavoriteCount)
local SetAssetFavorited = require(Plugin.Src.Actions.SetAssetFavorited)

local GetAssetFavoriteCount = require(Plugin.Src.Thunks.GetAssetFavoriteCount)

local FFlagUseFakeFavoriteIncrement = game:GetFastFlag("UseFakeFavoriteIncrement")

return function(apiImpl, assetId, userId, favorited)
    return function(store)
        apiImpl.Catalog.V1.Favorites.Assets.favorite(assetId, userId, favorited):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if body == "{}" or body == "null" then
                store:dispatch(SetAssetFavorited(assetId, not favorited))
                if FFlagUseFakeFavoriteIncrement then
                    if favorited then
                        store:dispatch(IncrementAssetFavoriteCount(assetId, -1))
                    else
                        store:dispatch(IncrementAssetFavoriteCount(assetId, 1))
                    end
                else
                    store:dispatch(GetAssetFavoriteCount(apiImpl, assetId))
                end
            end
        end, function()
            error("Failed to get asset favorite information for asset id: ", assetId)
        end)
    end
end