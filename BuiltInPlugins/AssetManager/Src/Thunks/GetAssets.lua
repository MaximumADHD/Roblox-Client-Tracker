local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)

return function(apiImpl, assetType, pageCursor, pageNumber)
    return function(store)
        local requestPromise
        local newAssets = {}
        -- fetching next page of assets
        if pageCursor or (pageNumber and pageNumber ~= 1) then
            local state = store:getState()
            newAssets = state.AssetManagerReducer.assetsTable
        end
        if assetType == Enum.AssetType.Place then
            requestPromise = apiImpl.Develop.V2.Universes.places(game.GameId, pageCursor):makeRequest()
            :andThen(function(response)
                return response
            end, function()
                error("Failed to load places")
            end)
        elseif assetType == Enum.AssetType.Package then
            requestPromise = apiImpl.Develop.V2.Universes.packages(game.GameId, pageCursor):makeRequest()
            :andThen(function(response)
                return response
            end, function()
                error("Failed to load packges")
            end)
        end
        if assetType == Enum.AssetType.Place or assetType == Enum.AssetType.Package then
            requestPromise:andThen(function(response)
                local body = response.responseBody
                if not body then
                    return
                end
                if body.previousPageCursor then
                    newAssets.previousPageCursor = response.previousPageCursor
                end
                if body.nextPageCursor then
                    newAssets.nextPageCursor = response.nextPageCursor
                end
                newAssets.assets = {}
                for _, asset in pairs(body.data) do
                    asset.assetType = assetType
                    table.insert(newAssets.assets, asset)
                end
                store:dispatch(SetAssets(newAssets))
            end)
        end
    end
end