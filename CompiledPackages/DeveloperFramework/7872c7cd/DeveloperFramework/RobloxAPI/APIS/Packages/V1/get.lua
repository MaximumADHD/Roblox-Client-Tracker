--!strict
--[[
	Gets asset metadata related to packages, given an asset ID.

	Example
	https://apis.roblox.com/packages-api/v1/packages/assets/versions/metadata/get

	Documented at : https://apis.simulprod.com/packages-api/swagger/index.html

	Returns a JSON table with these fields :
	{
    "data": [
    {
      "assetId": 0,
      "assetVersionNumber": 0,
      "message": "string"
    }
  ]
}
]]

local HttpService = game:GetService("HttpService")

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- universeId : id of universe
	-- limit : number of assets to request
	-- sortOrder : sorting order of assets returned
	-- cursor : cursor of page to request
	return function(assetId: number, assetVersionNumber: number?)
		local url = baseUrl.composeUrl(baseUrl.APIS_URL, "packages-api/v1/packages/assets/versions/metadata/get")

		local requestBody = {
			{
				assetId = assetId,
				assetVersionNumber = assetVersionNumber or 1,
			},
		}
		local requestBodyStr = HttpService:JSONEncode(requestBody)
		local headers = {
			["Content-Type"] = "application/json",
		}

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:post(url, requestBodyStr, headers)
				local retryPromise = networkingImpl:handleRetry(httpPromise)
				return networkingImpl:parseJson(retryPromise)
			end,
		}
	end
end
