--[[
	Given a universe ID and asset type, returns assets associated with that universe.

	Example
    GET https://apis.roblox.com/creator-inventory-api/v1/universe/12345/creator-inventory-items?maxPageSize=100&pageToken=abc
	Documented at : https://roblox.atlassian.net/wiki/spaces/CON/pages/2855076017/Documentation+Creator+Inventory+API
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls

return function(networkingImpl, baseUrl)
	return function(universeId: number, optionalParams: { string: any }?)
		assert(type(universeId) == "number", `universeId must be number, received {type(universeId)}`)

		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`creator-inventory-api/v1/universes/{universeId}/creator-inventory-items`,
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
