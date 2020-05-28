local Plugin = script.Parent.Parent.Parent.Parent

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)
local SetAssets = require(Actions.GetAssets) -- intentional naming mismatch. TODO: rename GetAssets.lua
local SetCurrentPage = require(Actions.SetCurrentPage)

local FFlagStudioFixComparePageInfo = game:GetFastFlag("StudioFixComparePageInfo")

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

return function(networkInterface, items, totalResults, audioSearchInfo, targetPage, cursor, pageInfo)
    return function(store)
        store:dispatch(SetLoading(true))

        return networkInterface:getItemDetails(items):andThen(
            function(detailsResult)
                if FFlagStudioFixComparePageInfo then
                    if PageInfoHelper.isPageInfoStale(pageInfo, store) then
                        return
                    end
                end

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
                if FFlagStudioFixComparePageInfo then
                    if PageInfoHelper.isPageInfoStale(pageInfo, store) then
                        return
                    end
                end
                store:dispatch(SetLoading(false))
                store:dispatch(NetworkError(err))
            end
        )
    end
end