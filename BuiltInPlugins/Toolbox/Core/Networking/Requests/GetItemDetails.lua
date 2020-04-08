local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local SetAssets = require(Actions.GetAssets) -- intentional naming mismatch. TODO: rename GetAssets.lua
local SetCurrentPage = require(Actions.SetCurrentPage)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

return function(networkInterface, items, totalResults, audioSearchInfo, targetPage, cursor)
    return function(store)
        store:dispatch(SetLoading(true))

        return networkInterface:getItemDetails(items):andThen(
            function(detailsResult)
                local detailsData = detailsResult.responseBody

                local assetsList = {}

                for _,asset in pairs(detailsData.data) do
                    local formattedAsset = AssetInfo.fromItemDetailsRequest(asset)
                    table.insert(assetsList, formattedAsset)
                end

                store:dispatch(SetAssets(assetsList, totalResults, cursor))
                store:dispatch(SetCurrentPage(targetPage))
                store:dispatch(SetLoading(false))
            end,
            function(err)
                store:dispatch(SetLoading(false))
                store:dispatch(NetworkError(err))
            end
        )
    end
end