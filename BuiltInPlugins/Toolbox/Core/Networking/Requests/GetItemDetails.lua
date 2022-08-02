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

		local function resolve(detailsResult)
			if PageInfoHelper.isPageInfoStale(pageInfo, store) then
				return
			end
			local detailsData = detailsResult.responseBody

			local assetsList = {}

			for _, asset in pairs(detailsData.data) do
				local formattedAsset = AssetInfo.fromItemDetailsRequest(asset)
				table.insert(assetsList, formattedAsset)
			end

			store:dispatch(GetAssets(assetsList, totalResults, cursor))
			store:dispatch(SetCurrentPage(targetPage))
			store:dispatch(SetLoading(false))
		end

		local function reject(err)
			if PageInfoHelper.isPageInfoStale(pageInfo, store) then
				return
			end
			store:dispatch(SetLoading(false))
			store:dispatch(NetworkError(err))
		end

		if #items == 0 then
			-- If there are no items to fetch details for, avoid triggering a HTTP Bad Request
			return resolve({
				responseBody = {
					data = {},
				},
			})
		else
			return networkInterface:getItemDetails(items):andThen(resolve, reject)
		end
	end
end
