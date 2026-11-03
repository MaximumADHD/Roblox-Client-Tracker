--!strict
--[[
	Returns all the groups that the user can create.
	Example
    GET https://apis.roblox.com/orgs/v2/groups/permissions/createassets
	Documented partly at: https://roblox.atlassian.net/wiki/spaces/CREATORSUCCESS/pages/3780018931/Tech+Studio+Asset+Creation+-+Group+Dropdown+Selector
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
		local url = baseUrl.composeUrl(baseUrl.APIS_URL, "orgs/v2/groups/permissions/createassets")

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
