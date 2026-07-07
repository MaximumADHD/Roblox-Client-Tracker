--[[
	Returns all the groups that the user can manage.
	Example
    GET https://develop.roblox.com/v1/user/groups/canmanage
	Documented at : https://develop.roblox.com/docs#!/
	Returns a JSON table with these fields :
	{
        "data": [
            {
                "id": 0,
                "name": "string"
            }
        ]
    }
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function()
		local url = baseUrl.composeUrl(baseUrl.DEVELOP_URL, "v1/user/groups/canmanage")

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
