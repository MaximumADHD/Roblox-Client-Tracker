--[[
	Lists groups for different surfaces on studio

	Examples
	  GET https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage
	  GET https://apis.sitetest3.robloxlabs.com/creator-home-api/v1/groups?surface=StudioStartPage

	Sample Response:
    {
        "groups": [
            {
            "id": 35238273,
            "name": "Groot's awesome group",
            "roleSetName": "Owner",
            "createdAt": "2025-02-03T18:53:02.217Z"
            },
            {
            "id": 888218930,
            "name": "Group for OT,
            "roleSetName": "Owner",
            "createdAt": "2025-08-05T18:07:31.628Z"
            },
            {
            "id": 35238893,
            "name": "Hubbers Orgs",
            "roleSetName": "Member",
            "createdAt": "2025-02-05T19:45:03.303Z"
            },
            {
            "id": 35264267,
            "name": "Testing Banner",
            "roleSetName": "Member",
            "createdAt": "2025-04-25T22:59:44.73Z"
            }
        ]
    }

    Supported values for surface are documented at: https://roblox.atlassian.net/wiki/spaces/CREATORSUCCESS/pages/3878879251/Tech+API+Creator+Home+API
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(surface)
		local url = baseUrl.composeUrl(baseUrl.APIS_URL, "creator-home-api/v1/groups", { surface = surface })

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
