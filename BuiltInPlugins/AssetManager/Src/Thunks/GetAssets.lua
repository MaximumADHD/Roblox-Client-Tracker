local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)

return function(apiImpl, assetType, pageCursor, pageNumber)
    return function(store)
        local requestPromise
        local newAssets = {}
        if assetType == Enum.AssetType.Place then
            requestPromise = apiImpl.Develop.V2.Universes.places(game.GameId, pageCursor):makeRequest()
            :andThen(function(result)
                return result
            end, function()
                error("Failed to load places")
            end)
        end
        requestPromise:andThen(function(result)
            local response = result.requestBody
            if not response then
                return
            end
            if response.previousPageCursor then
                newAssets.previousPageCursor = response.previousPageCursor
            end
            if response.nextPageCursor then
                newAssets.nextPageCursor = response.nextPageCursor
            end
            newAssets.assets = {}
            for _, asset in ipairs(response.data) do
                asset.assetType = assetType
                table.insert(newAssets.assets, asset)
            end
            store:dispatch(SetAssets(newAssets))
        end)
    end
end