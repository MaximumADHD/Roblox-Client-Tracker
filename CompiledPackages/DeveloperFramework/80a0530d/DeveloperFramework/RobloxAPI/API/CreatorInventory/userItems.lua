--[[
	Given a user ID and asset type, returns inventory assets.

	Example
    GET https://apis.roblox.com/creator-inventory-api/v1/users/12345/creator-inventory-items?maxPageSize=100&pageToken=abc
	Documented at : https://roblox.atlassian.net/wiki/spaces/CON/pages/2855076017/Documentation+Creator+Inventory+API
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(userId: number, optionalParams: { string: any }?)
		assert(type(userId) == "number", `userId must be number, received {type(userId)}`)

		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`creator-inventory-api/v1/users/{userId}/creator-inventory-items`,
			optionalParams
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
