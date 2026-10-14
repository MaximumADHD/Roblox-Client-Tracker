--[[
	GETs metadata for an asset. Uses the user cookie version of the Open Cloud endpoint to be compatible with
    DF Http.

	Example
	https://apis.roblox.com/assets/user-auth/v1/assets/{assetId}

    Documented at:
    https://create.roblox.com/docs/reference/cloud/assets/v1
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(assetId: number)
		local url = baseUrl.composeUrl(baseUrl.APIS_URL, "assets/user-auth/v1/assets/" .. tostring(assetId))

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
