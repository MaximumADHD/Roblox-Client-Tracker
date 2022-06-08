local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetVersionHistoryData = require(Plugin.Core.Actions.SetVersionHistoryData)

local FFlagInfiniteScrollerForVersions = game:getFastFlag("InfiniteScrollerForVersions")

export type VersionHistoryResponseItem = {
	assetId: number,
	assetVersionNumber: number,
	creatorType: "User" | "Group",
	creatorTargetId: number,
	creatingUniverseId: number?,
	created: string, -- "2019-05-20T17:38:14.2238915Z"
}

export type VersionHistoryResponse = {
	nextPageCursor: string?,
	data: {VersionHistoryResponseItem},
}

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getVersionsHistory(assetId):andThen(function(result)
			local responseJson = result.responseBody
			-- This will require we have HttpService
			local response = HttpService:JSONDecode(responseJson) :: VersionHistoryResponse
			if FFlagInfiniteScrollerForVersions then
				store:dispatch(SetVersionHistoryData(response))
			else
				-- response.data consists of an array of version data in
				-- order of descending version number.
				--[[response = [{
						  "assetId": 3200355923,
						  "assetVersionNumber": 2,
						  "creatorType": "User",
						  "creatorTargetId": 441049238,
						  "creatingUniverseId": null,
						  "created": "2019-05-20T17:38:14.2238915Z"
						}, {
						  "assetId": 3200355923,
						  "assetVersionNumber": 1,
						  "creatorType": "User",
						  "creatorTargetId": 441049238,
						  "creatingUniverseId": null,
						  "created": "2019-05-20T17:38:14.2238915Z"
						}, ...,
					]
					]]
				store:dispatch(SetVersionHistoryData(response.data))
			end
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
