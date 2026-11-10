--[[
	Given an array of asset IDs, returns details for those assets.
    We format the input array into a comma-separated string for the request.
    Ex. {12345, 67890} -> "12345,67890"

	Example
    GET https://apis.simulprod.com/toolbox-service/v1/items/details?assetIds=12345%2C67890

    Documented at : https://apis.simulprod.com/toolbox-service/swagger/

    Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(assetIds: { number })
		assert(type(assetIds) == "table", `assetIds must be table, received {type(assetIds)}`)

		local url = baseUrl.composeUrl(baseUrl.APIS_URL, "toolbox-service/v1/items/details", {
			assetIds = table.concat(assetIds, ","),
		})

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
