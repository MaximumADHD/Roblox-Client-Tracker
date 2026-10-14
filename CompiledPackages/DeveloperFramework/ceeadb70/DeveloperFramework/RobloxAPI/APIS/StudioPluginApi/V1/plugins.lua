--[[
	Given a list of plugin asset IDs, return info for those plugins.
	Example
    GET https://apis.roblox.com/studio-plugin-api/v1/plugins?pluginIds=123
	Documented at : https://apis.simulprod.com/studio-plugin-api/swagger/index.html
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(pluginIds: { number }, optionalParams: { string: any }?)
		assert(type(pluginIds) == "table", `pluginIds must be table, received {type(pluginIds)}`)
		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`studio-plugin-api/v1/plugins?pluginIds={table.concat(pluginIds, ",")}`,
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
