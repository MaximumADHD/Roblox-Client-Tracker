--[[
	Given a group ID and asset type, returns inventory assets.
    Can also take optional parameters to finetune results (see documentation)
	The limit of items per request is 50.
	Example
    GET https://apis.roblox.com/toolbox-service/v1/inventory/group/12345/model
	Documented at : https://apis.simulprod.com/toolbox-service/swagger/
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(groupId: number, assetType: string, optionalParams: { string: any }?)
		assert(type(groupId) == "number", `groupId must be number, received {type(groupId)}`)
		assert(type(assetType) == "string", `assetType must be string, received {type(assetType)}`)

		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`toolbox-service/v1/creations/group/{groupId}/{assetType}`,
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
