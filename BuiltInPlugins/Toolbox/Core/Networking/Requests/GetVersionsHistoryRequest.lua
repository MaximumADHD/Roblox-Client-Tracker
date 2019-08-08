local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local SetVersionHistoryData = require(Plugin.Core.Actions.SetVersionHistoryData)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getVersionsHistory(assetId):andThen(
			function(result)
				local responseJson = result.responseBody
				-- This will require we have HttpService
				local response = HttpService:JSONDecode(responseJson)

				--[[response = {
				      "assetId": 3200355923,
				      "assetVersionNumber": 1,
				      "creatorType": "User",
				      "creatorTargetId": 441049238,
				      "creatingUniverseId": null,
				      "created": "2019-05-20T17:38:14.2238915Z"
				    }]]
				store:dispatch(SetVersionHistoryData(response.data))
			end,
			function(result)
				-- Error function
			end)
	end
end
