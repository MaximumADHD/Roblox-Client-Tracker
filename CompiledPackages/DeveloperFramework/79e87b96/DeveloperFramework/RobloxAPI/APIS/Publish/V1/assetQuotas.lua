--[[
	Returns the number of remaining uplaods for given asset type in a given duration (time period).
    GET https://publish.roblox.com/v1/asset-quotas
	Documented at : https://roblox.atlassian.net/wiki/x/5okmXg
	Returns a JSON table with these fields :
	{
        "quotas": [ {
            "duration": string, // QuotaDurationType enum returned as string
            "usage": long,
            "capacity": long,
            "expirationTime": string // ISO8601 string format
     }]
    }
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(assetType: string, resourceType: string)
		local url = baseUrl.composeUrl(
			baseUrl.PUBLISH_URL,
			"v1/asset-quotas",
			{ ["assetType"] = assetType, ["resourceType"] = resourceType }
		)

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:get(url)
				local retryPromise = networkingImpl:handleRetry(httpPromise)
				return networkingImpl:parseJson(retryPromise)
			end,
		}
	end
end
