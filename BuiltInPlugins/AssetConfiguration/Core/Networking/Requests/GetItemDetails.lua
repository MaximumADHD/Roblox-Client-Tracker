local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local GetAssets = require(Actions.GetAssets)
local SetCurrentPage = require(Actions.SetCurrentPage)

local Util = Plugin.Core.Util
local AssetAnalytics = require(Util.Analytics.AssetAnalytics)
local PageInfoHelper = require(Util.PageInfoHelper)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

return function(networkInterface, items, totalResults, audioSearchInfo, targetPage, cursor, pageInfo)
    return function(store)
        if PageInfoHelper.isPageInfoStale(pageInfo, store) then
            return
        end
        store:dispatch(SetLoading(true))

        return networkInterface:getItemDetails(items):andThen(
            function(detailsResult)
                if PageInfoHelper.isPageInfoStale(pageInfo, store) then
                    return
                end
                local detailsData = detailsResult.responseBody

                local assetsList = {}

                for _,asset in pairs(detailsData.data) do
                    local formattedAsset = AssetInfo.fromItemDetailsRequest(asset)
                    table.insert(assetsList, formattedAsset)
                end

                AssetAnalytics.addContextToAssetResults(assetsList, pageInfo)

                store:dispatch(GetAssets(assetsList, totalResults, cursor))
                store:dispatch(SetCurrentPage(targetPage))
                store:dispatch(SetLoading(false))
            end,
            function(err)
                if PageInfoHelper.isPageInfoStale(pageInfo, store) then
                    return
                end
                store:dispatch(SetLoading(false))
                store:dispatch(NetworkError(err))
            end
        )
    end
end