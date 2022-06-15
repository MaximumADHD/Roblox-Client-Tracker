local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local ExtendVersionHistoryData = require(Plugin.Core.Actions.ExtendVersionHistoryData)

local FFlagInfiniteScrollerForVersions2 = game:getFastFlag("InfiniteScrollerForVersions2")

export type VersionHistoryPageResponseItem = {
	assetId: number,
	assetVersionNumber: number,
	creatorType: "User" | "Group",
	creatorTargetId: number,
	creatingUniverseId: number?,
	created: string, -- "2019-05-20T17:38:14.2238915Z"
}

export type VersionHistoryPageResponse = {
	previousPageCursor: string?,
	nextPageCursor: string?,
	data: {VersionHistoryPageResponseItem},
}

return function(networkInterface, assetId, pageCursor)
	assert(FFlagInfiniteScrollerForVersions2)
	return function(store)
		return networkInterface:getVersionHistoryPage(assetId, pageCursor):andThen(function(result)
			local responseJson = result.responseBody
			local response = HttpService:JSONDecode(responseJson) :: VersionHistoryPageResponse
			store:dispatch(ExtendVersionHistoryData(response))
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
