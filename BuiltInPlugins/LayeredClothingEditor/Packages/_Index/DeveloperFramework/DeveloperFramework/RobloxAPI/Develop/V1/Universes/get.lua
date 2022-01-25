--[[
	Returns information about a universe given a universe ID

	Example
	GET https://develop.roblox.com/v1/universes/1552514118/

	Documented at : https://develop.roblox.com/docs#!/Universes/get_v1_universes_universeId

	Returns a JSON table with these fields :
	{
		"id": 0,
		"name": "string",
		"description": "string",
		"isArchived": true,
		"rootPlaceId": 0,
		"isActive": true,
		"privacyType": "string",
		"creatorType": "string",
		"creatorTargetId": 0,
		"creatorName": "string",
		"created": "2021-06-23T01:07:02.659Z",
		"updated": "2021-06-23T01:07:02.659Z"
	}
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- universeId : id of universe
	return function(universeId)
		assert(type(universeId) == "number",
			string.format("universeId must be number, received %s", type(universeId)))

		local url = baseUrl.composeUrl(baseUrl.DEVELOP_URL, string.format("v1/universes/%d", universeId))

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
