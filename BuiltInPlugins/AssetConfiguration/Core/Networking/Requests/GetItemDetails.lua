local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local GetAssets = require(Actions.GetAssets)
local SetCurrentPage = require(Actions.SetCurrentPage)

local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

return function(networkInterface, items, totalResults, audioSearchInfo, targetPage, cursor, pageInfo)
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

                if FFlagToolboxNewAssetAnalytics then
                    AssetAnalytics.addContextToAssetResults(assetsList, pageInfo)
                end

                store:dispatch(GetAssets(assetsList, totalResults, cursor))
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