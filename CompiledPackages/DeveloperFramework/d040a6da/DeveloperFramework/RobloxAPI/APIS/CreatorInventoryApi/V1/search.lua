--[[
	Given a search query, asset type, and one of the following sources (userId, groupId, universeId), returns the source's assets that match that query.

	Example
    GET https://apis.roblox.com/creator-inventory-api/v1/-/creator-inventory-items:search?query=myQuery&filter=assetTypes=Audio;userids=12345&maxPageSize=1&pageToken=abc
	Documented at : https://roblox.atlassian.net/wiki/spaces/CON/pages/2855076017/Documentation+Creator+Inventory+API
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
local function getSourceField(sourceType): string
	if sourceType == "User" then
		return "userids"
	elseif sourceType == "Group" then
		return "groupids"
	elseif sourceType == "Universe" then
		return "universeids"
	else
		error("Invalid sourceType")
	end
end

return function(networkingImpl, baseUrl)
	return function(
		searchQuery: string,
		assetType: string,
		source: { Type: string, Id: number },
		maxPageSize: number?,
		pageToken: string?
	)
		assert(type(searchQuery) == "string", `searchQuery must be string, received {type(searchQuery)}`)
		assert(type(assetType) == "string", `assetType must be string, received {type(assetType)}`)
		assert(type(source) == "table", `source must be table, received {type(source)}`)

		if maxPageSize == nil then
			maxPageSize = 1
		end

		local sourceType = getSourceField(source.Type)

		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`creator-inventory-api/v1/-/creator-inventory-items:search?query={searchQuery}&filter=assetTypes={assetType};{sourceType}={source.Id}&maxPageSize={maxPageSize}&pageToken={pageToken}`
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
